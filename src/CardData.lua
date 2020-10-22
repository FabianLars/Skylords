-- Questions? Ask them on Message_Wall:FabianLars or Discord (User:FabianLars for contact details)
-- <nowiki>

local CardData = {}
local get = require('Module:CardData/get')
local has = require('Module:CardData/has')

---@param t table table to concat
---@return string
---@protected
local function concat(t, sep)
    if type(t) ~= 'table' then
        return t
    end
    return table.concat(t, sep or ',')
end

---@param s string to format
---@return string|nil
---@protected
local function format(s, ...)
    local ran, val_or_err = pcall(string.format, s, ...)
    return ran and val_or_err or nil
end

--- converts input to arguments. returns itself, its arguments, its parent arguments or nil
---@param frame table input with arguments or the mw frame object
---@return table|nil argument list as table or nil
---@private
local function getArgs(frame)
    local t
    local res = {}
    -- binding global 'next' to local var maximizes performance in standard lua; don't know about scribunto
    local next = next
    if frame[1] or frame.name then
        t = frame
    elseif frame.args and (frame.args[1] or frame.args.name) then
        t = frame.args
    elseif frame:getParent() and (frame:getParent().args[1] or frame:getParent().args.name) then
        t = frame:getParent().args
    end
    if t then
        for k, v in pairs(t) do
            if k and v then
                local key = type(k) == 'string' and k:gsub('%s+', '_') or k
                if type(v) == 'boolean' then
                    res[key] = v
                elseif tonumber(v) then
                    res[key] = tonumber(v)
                elseif type(v) == 'string' then
                    res[key] = mw.ustring.match(v, '^%s*(.*%S)') or ''
                    local value = res[key]:lower()
                    if mw.ustring.match(value, '%w') == nil or value == '' or value == 'default' then
                        res[key] = nil
                    elseif value == 'true' then
                        res[key] = true
                    elseif value == 'false' then
                        res[key] = false
                    end
                end
            end
        end
    end
    if next(res) == nil then Error('Error (missing args): Check your input') end
    return res
end

--- get name, affinity and promo from given cardname
---@param n string name of card in form of 'name', 'name (affinity)' or 'name (Promo)'
---@return string, string|nil, boolean Cardname without parantheses; affinity or nil; true if promo
---@private
local function verifyName(n)
    local aff, promo = nil, false
    local name, var = string.find(n, ' (', 1, true)
    name, _ = name and string.sub(n, 1, (name or 0) - 1) or n, nil
    var, _ = string.gsub(string.sub(n, (var or 0) + 1), '%)', '')

    if var ~= name then
        if var == 'Promo' then
            promo = true
            if name == 'Grinder' then
                aff = 'Shadow'
            end
        elseif var == 'Lost Souls' or var == 'Twilight' or var == 'Superpig' then
            name = format('%s (%s)', name, var)
        elseif var == 'Fire' or var == 'Frost' or var == 'Nature' or var == 'Shadow' then
            if has.affinity(name, var) then
                aff = var
            end
        end
    end

    return name, aff, promo
end

local function CardClass(init)
    local self = type(init) == 'table' and init or {}
    self.scaling = self.scaling or 0.74
    self.cardupgrade = self.cardupgrade or 0
    self.applied_charges = self.applied_charges or 0
    self.notooltip = self.notooltip or false

    function self.build()
        local card_container = mw.html.create('div'):css{
            ['font-size'] = '28px',
            ['display'] = 'table', -- kinda dirty fix ngl
            ['position'] = 'relative',
            ['transform-origin'] = 'top left',
            ['transform'] = format('scale(%s)', self.scaling),
            ['height'] = '510px',
            ['width'] = '370px',
            ['color'] = 'white',
            ['overflow'] = 'hidden',
            ['text-shadow'] = '-1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000'
        }:addClass(format('hidden cv-card-container%s', self.promo and ' cv-promo' or ''))
        if not self.notooltip then
            card_container:addClass('card-icon'):attr('data-card', self.full_name or self.display_name or '')
        end

        local card_artwork = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['top'] = '35px',
            ['left'] = 0,
            ['right'] = 0,
            ['z-index'] = 10,
            ['text-align'] = 'center'
        }:wikitext(self.artwork_wktxt or ''):done()

        local card_background = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['z-index'] = 30
        }:wikitext(self.background_wktxt or '')
        if self.spell_background_wktxt then
            card_background:tag('div'):css{
                ['position'] = 'absolute',
                ['left'] = 0,
                ['right'] = 0,
                ['bottom'] = '8px',
                ['z-index'] = '50',
                ['text-align'] = 'center'
            }:wikitext(self.spell_background_wktxt):done()
        end
        card_background:done()

        self.cardupgrade = self.cardupgrade or 0
        self.applied_charges = self.applied_charges or 0
        local upgradeLeft = mw.html.create()
                              :tag('div'):addClass('cv-upgradeparts cv-U1'):css{
            ['position'] = 'absolute',
            ['bottom'] = '168px',
            ['left'] = 0,
            ['z-index'] = 150,
            ['display'] = (self.cardupgrade == 1 and '' or 'none')
        }:wikitext(self.upgrade_left_1_wktxt or ''):done()
                              :tag('div'):addClass('cv-upgradeparts cv-U2'):css{
            ['position'] = 'absolute',
            ['bottom'] = '168px',
            ['left'] = 0,
            ['z-index'] = 150,
            ['display'] = (self.cardupgrade == 2 and '' or 'none')
        }:wikitext(self.upgrade_left_2_wktxt):done()
                              :tag('div'):addClass('cv-upgradeparts cv-U3'):css{
            ['position'] = 'absolute',
            ['bottom'] = '168px',
            ['left'] = 0,
            ['z-index'] = 150,
            ['display'] = (self.cardupgrade == 3 and '' or 'none')
        }:wikitext(self.upgrade_left_3_wktxt or ''):done()
                              :tag('div'):addClass('cv-chargeparts cv-C1'):css{
            ['position'] = 'absolute',
            ['bottom'] = (self.factionLeft == 'Neutral' and '232px' or '233px'),
            ['left'] = (self.factionLeft == 'Neutral' and '10px' or '4px'),
            ['z-index'] = 200,
            ['display'] = ((self.applied_charges >= 1 and self.applied_charges <= self.cardupgrade) and '' or 'none')
        }:wikitext(self.charge_left_1_wktxt or ''):done()
                              :tag('div'):addClass('cv-chargeparts cv-C2'):css{
            ['position'] = 'absolute',
            ['bottom'] = (self.factionLeft == 'Neutral' and '312px' or '304px'),
            ['left'] = (self.factionLeft == 'Neutral' and '10px' or '4px'),
            ['z-index'] = 200,
            ['display'] = ((self.applied_charges >= 2 and self.applied_charges <= self.cardupgrade) and '' or 'none')
        }:wikitext(self.charge_left_2_wktxt or ''):done()
                              :tag('div'):addClass('cv-chargeparts cv-C3'):css{
            ['position'] = 'absolute',
            ['bottom'] = (self.factionLeft == 'Neutral' and '394px' or '372px'),
            ['left'] = (self.factionLeft == 'Neutral' and '10px' or '4px'),
            ['z-index'] = 200,
            ['display'] = ((self.applied_charges >= 3 and self.applied_charges <= self.cardupgrade) and '' or 'none')
        }:wikitext(self.charge_left_3_wktxt or ''):done()
        if self.promo_icon_wktxt then
            upgradeLeft:tag('div'):css{
                ['position'] = 'absolute',
                ['top'] = '5px',
                ['left'] = 0,
                ['z-index'] = 300
            }:addClass(self.promo_icon_class or ''):wikitext(self.promo_icon_wktxt):done()
        end
        upgradeLeft:done()

        local upgradeRight = mw.html.create()
                               :tag('div'):addClass('cv-upgradeparts cv-U1'):css{
            ['position'] = 'absolute',
            ['bottom'] = '168px',
            ['right'] = 0,
            ['z-index'] = 150,
            ['display'] = (self.cardupgrade >= 1 and '' or 'none')
        }:wikitext(self.upgrade_right_1_wktxt or ''):done()
                               :tag('div'):addClass('cv-upgradeparts cv-U2'):css{
            ['position'] = 'absolute',
            ['bottom'] = (self.factionRight == 'Neutral' and '248px' or '296px'),
            ['right'] = 0,
            ['z-index'] = 150,
            ['display'] = (self.cardupgrade >= 2 and '' or 'none')
        }:wikitext(self.upgrade_right_2_wktxt or ''):done()
                               :tag('div'):addClass('cv-upgradeparts cv-U3'):css{
            ['position'] = 'absolute',
            ['bottom'] = (self.factionRight == 'Neutral' and '326px' or '362px'),
            ['right'] = 0,
            ['z-index'] = 150,
            ['display'] = (self.cardupgrade == 3 and '' or 'none')
        }:wikitext(self.upgrade_right_3_wktxt or ''):done()
                               :tag('div'):addClass('cv-chargeparts cv-C1'):css{
            ['position'] = 'absolute',
            ['bottom'] = (self.factionRight == 'Neutral' and '232px' or '221px'),
            ['right'] = (self.factionRight == 'Neutral' and '11px' or '2px'),
            ['z-index'] = 200,
            ['display'] = ((self.applied_charges >= 1 and self.applied_charges <= self.cardupgrade) and '' or 'none')
        }:wikitext(self.charge_right_1_wktxt or ''):done()
                               :tag('div'):addClass('cv-chargeparts cv-C2'):css{
            ['position'] = 'absolute',
            ['bottom'] = (self.factionRight == 'Neutral' and '312px' or '294px'),
            ['right'] = (self.factionRight == 'Neutral' and '11px' or '2px'),
            ['z-index'] = 200,
            ['display'] = ((self.applied_charges >= 2 and self.applied_charges <= self.cardupgrade) and '' or 'none')
        }:wikitext(self.charge_right_2_wktxt or ''):done()
                               :tag('div'):addClass('cv-chargeparts cv-C3'):css{
            ['position'] = 'absolute',
            ['bottom'] = (self.factionRight == 'Neutral' and '390px' or '362px'),
            ['right'] = (self.factionRight == 'Neutral' and '11px' or '1px'),
            ['z-index'] = 200,
            ['display'] = ((self.applied_charges >= 3 and self.applied_charges <= self.cardupgrade) and '' or 'none')
        }:wikitext(self.charge_right_3_wktxt or ''):done()

        local card_name = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['top'] = '21px',
            ['left'] = '50px',
            ['z-index'] = 500
        }:wikitext(self.display_name or ''):done()

        local card_tokenslot = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['top'] = '3px',
            ['right'] = '5px',
            ['z-index'] = 500
        }:wikitext(self.tokenslot_wktxt or ''):done()

        local card_tokenslot_affinity = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['top'] = '3px',
            ['right'] = '5px',
            ['z-index'] = 900
        }:wikitext(self.tokenslot_affinity_wktxt or '')
        if self.affinity then
            card_tokenslot_affinity:addClass(
                format('card-viewer-color-%s', string.lower(self.affinity))
            )
        end
        card_tokenslot_affinity:done()

        local orb1 = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['bottom'] = '435px',
            ['right'] = '12px',
            ['z-index'] = 1000
        }:wikitext(self.orb_1_wktxt or ''):done()

        local orb2 = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['bottom'] = '430px',
            ['right'] = '30px',
            ['z-index'] = 1000
        }:wikitext(self.orb_2_wktxt or ''):done()

        local orb3 = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['bottom'] = '430px',
            ['right'] = '49px',
            ['z-index'] = 1000
        }:wikitext(self.orb_3_wktxt or ''):done()

        local orb4 = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['bottom'] = '435px',
            ['right'] = '67px',
            ['z-index'] = 1000
        }:wikitext(self.orb_4_wktxt or ''):done()

        local card_power_cost = mw.html.create('div'):addClass('cv-cost'):attr('data-cost', self.data_cost_attr or ''):css{
            ['position'] = 'absolute',
            ['top'] = '24px',
            ['right'] = '31px',
            ['z-index'] = 1100,
            ['font-size'] = '22px',
            ['width'] = '40px',
            ['text-align'] = 'center'
        }:wikitext(self.power_cost_wktxt or ''):done()

        local card_charges_squadsize_class = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['top'] = '305px',
            ['left'] = '30px',
            ['z-index'] = 500,
            ['font-size'] = self.display_name == 'White Rangers' and '27px' or '28px'
        }:tag('span')
                                               :addClass('cv-charges')
                                               :attr('data-charges', self.data_charges_attr or '')
                                               :wikitext(self.charges_wktxt or ''):done()
        if self.squadsize and self.squadsize > 1 then
            card_charges_squadsize_class:wikitext(format('x%s', self.squadsize))
        end
        card_charges_squadsize_class:wikitext(format(' %s', self.class or '')):done()

        local card_affinity_icon = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['top'] = '293px',
            ['right'] = '12px',
            ['z-index'] = 500
        }:wikitext(self.affinity and format('[[File:Affinity_Orb_%s.png||link=%s]]', self.affinity, self.display_name) or ''):done()

        local card_abilities = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['top'] = '340px',
            ['left'] = '25px',
            ['z-index'] = 550,
            ['font-size'] = '24px'
        }:node(self.abilities_node or '')

        local card_weapon_type = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['bottom'] = '10px',
            ['left'] = '25px',
            ['z-index'] = 500
        }:addClass(format('card-viewer-layer-%s', string.lower(self.factionLeft or 'blank'))):wikitext(self.weapon_type_wktxt or ''):done()

        local card_damage = mw.html.create('div'):addClass('cv-damage'):attr('data-damage', self.data_damage_attr or ''):css{
            ['position'] = 'absolute',
            ['bottom'] = '19px',
            ['left'] = '75px',
            ['z-index'] = 500
        }:wikitext(self.damage_wktxt or ''):done()

        local card_size_class = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['bottom'] = '7px',
            ['left'] = '150px',
            ['z-index'] = 500
        }:addClass('card-viewer-unit-size')
        if self.unit_size_wktxt or self.health_wktxt then
            card_size_class:addClass(format('card-viewer-layer-%s', string.lower(self.factionRight or 'blank')))
                           :wikitext(format('[[File:Card_Icon_HP.png||link=%s]]', self.display_name or ''))
                           :wikitext(self.unit_size_wktxt or '')
        end

        local card_health = mw.html.create('div'):addClass('cv-health'):attr('data-health', self.data_health_attr or ''):css{
            ['position'] = 'absolute',
            ['bottom'] = '19px',
            ['left'] = '225px',
            ['z-index'] = 500
        }:wikitext(self.health_wktxt or ''):done()

        local card_edition_icon = mw.html.create('div'):css{
            ['position'] = 'absolute',
            ['bottom'] = '5px',
            ['right'] = '5px',
            ['z-index'] = 600
        }:wikitext(self.edition_icon_wktxt or '')

        card_container
            :node(card_artwork):node(card_background):node(upgradeLeft):node(upgradeRight):node(card_name)
            :node(card_tokenslot):node(card_tokenslot_affinity):node(orb1):node(orb2):node(orb3):node(orb4)
            :node(card_power_cost):node(card_charges_squadsize_class):node(card_affinity_icon):node(card_abilities)
            :node(card_weapon_type):node(card_damage):node(card_size_class):node(card_health):node(card_edition_icon)
            :done()

        return mw.html.create('div'):css{
            ['width'] = format('%spx', 370 * self.scaling),
            ['height'] = format('%spx', 510 * self.scaling),
            ['display'] = 'inline-block'
        }:tag('div'):cssText('display:none'):wikitext(self.display_name or ''):done():node(card_container):allDone()
    end

    return self
end

local function chargeRules(index)
    local charge_rules = {
        [4] = { 1, 1, 1, 1 },
        [8] = { 4, 2, 1, 1 },
        [12] = { 6, 2, 2, 2 },
        [16] = { 8, 3, 3, 2 },
        [20] = { 10, 4, 3, 3 },
        [24] = { 12, 4, 4, 4 }
    }
    if index then return charge_rules[index] end
    return charge_rules
end

-- TODO: Upgrade Cards
--- returns html for a card to display
---@param frame table mw.frame object
---@return string card as mw.html
---@public
function CardData.card(frame)
    local args = getArgs(frame)

    if not get.exists(args.name or args[1]) then
        return mw.html.create('div'):css{
            width = format('%spx', 370 * (args.scaling or args.displayscaling or 0.74)),
            height = format('%spx', 510 * (args.scaling or args.displayscaling or 0.74))
        }:wikitext(format('Error: Card "%s" not found', args.name or args[1]))
    end

    local data = get.card(args.name or args[1])

    local card = CardClass()
    local charge_rules = chargeRules()
    local name = args.name or args[1] or 'Name missing'
    local display_name, aff, promo = verifyName(args.name or args[1] or 'Name missing')
    if data.affinity then aff = data.affinity end
    if data.promo then promo = data.promo end
    if data.temporary_card then promo = true end
    local scaling = args.scaling or data.scaling or args.displayscaling or data.displayscaling or 0.74
    --local err = nil
    local check_size = {
        S = true,
        M = true,
        L = true,
        XL = true,
    }

    local link = display_name
    if data.nolink or args.nolink then
        link = ''
    end

    local res = data.orbs and get['factions'](name, data.orbs)
    local factionLR = data.orbs and (res[1] ~= res[2] and res[1] .. res[2] or res[1]) or 'Blank'
    local factionLeft = res and res[1] or nil
    local factionRight = res and res[2] or nil

    card.factionLeft = factionLeft
    card.factionRight = factionRight
    card.affinity = aff
    card.notooltip = args.notooltip or data.notooltip or false
    card.scaling = scaling
    card.artwork_wktxt = format(data.artwork and format('[[File:%s||link=%s|320px]]', data.artwork, link) or '[[File:%s%s_Card_Artwork.png||link=%s]]', display_name, promo and '_(Promo)' or '', link)
    card.background_wktxt = format('[[File:Faction_%s_Upgrade_0_Type_%s_Frame.png||link=%s]]', factionLR, data.type == 'Upgrade' and 'U' or 'C', link)
    card.spell_background_wktxt = data.type == 'Spell' and format('[[File:Spell_Card_Overlay_%s.png||link=%s]]', factionLR, link) or nil
    local cardupgrade = promo and 3 or (tonumber(data.cardupgrade) or tonumber(args.cardupgrade) or 0)
    local applied_charges = promo and 3 or (tonumber(data.applied_charges) or tonumber(args.applied_charges) or 0)
    card.cardupgrade = cardupgrade
    card.applied_charges = applied_charges
    if promo and not data.temporary_card then
        card.promo_icon_wktxt = format('[[File:Promo_Icon_%s.png||link=%s]]', factionLeft, link)
    elseif data.starter_card then
        card.promo_icon_class = 'cv-upgradeparts cv-A0'
        card.promo_icon_wktxt = format('[[File:Starter_Icon_%s.png||link=%s]]', factionLeft, link)
    elseif data.temporary_card then
        card.promo_icon_wktxt = format('[[File:Temporary_Icon_%s.png||link=%s]]', factionLeft, link)
    end
    card.upgrade_left_1_wktxt = format('[[File:%s_Upgrade_1_Left.png||link=%s]]', factionLeft, link)
    card.upgrade_left_2_wktxt = format('[[File:%s_Upgrade_2_Left.png||link=%s]]', factionLeft, link)
    card.upgrade_left_3_wktxt = format('[[File:%s_Upgrade_3_Left.png||link=%s]]', factionLeft, link)
    card.charge_left_1_wktxt = factionLeft == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link)
        or format('[[File:%s_Charge_1_Left.png||link=%s]]', factionLeft, link)
    card.charge_left_2_wktxt = factionLeft == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link)
        or format('[[File:%s_Charge_2_Left.png||link=%s]]', factionLeft, link)
    card.charge_left_3_wktxt = factionLeft == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link)
        or format('[[File:%s_Charge_3_Left.png||link=%s]]', factionLeft, link)
    card.upgrade_right_1_wktxt = format('[[File:%s_Upgrade_1_Right.png||link=%s]]', factionRight, link)
    card.upgrade_right_2_wktxt = format('[[File:%s_Upgrade_%s_Right.png||link=%s]]', factionRight, factionRight == 'Neutral' and '1' or '2', link)
    card.upgrade_right_3_wktxt = format('[[File:%s_Upgrade_%s_Right.png||link=%s]]', factionRight, factionRight == 'Neutral' and '1' or '3', link)
    card.charge_right_1_wktxt = factionRight == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link)
        or format('[[File:%s_Charge_1_Right.png||link=%s]]', factionRight, link)
    card.charge_right_2_wktxt = factionRight == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link)
        or format('[[File:%s_Charge_2_Right.png||link=%s]]', factionRight, link)
    card.charge_right_3_wktxt = factionRight == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link)
        or format('[[File:%s_Charge_3_Right.png||link=%s]]', factionRight, link)
    card.full_name = display_name
    card.display_name = display_name:gsub(' %(Lost Souls%)', ''):gsub(' %(Twilight%)', ''):gsub(' %(Superpig%)', '')
    card.tokenslot_wktxt = data.orbs and format('[[File:Tokenslot_Overlay_%s.png||link=%s]]', factionLR, link)
    card.tokenslot_affinity_wktxt = aff and format('[[File:Affinity_Tokenslot_Overlay_Blank.png||link=%s]]', link) or nil
    local dataorbs = data.orbs or {}
    card.orb_1_wktxt = format('[[File:Tokenslot_Orb_%s.png||link=%s]]', dataorbs[1], link)
    card.orb_2_wktxt = format('[[File:Tokenslot_Orb_%s.png||link=%s]]', dataorbs[2], link)
    card.orb_3_wktxt = format('[[File:Tokenslot_Orb_%s.png||link=%s]]', dataorbs[3], link)
    card.orb_4_wktxt = format('[[File:Tokenslot_Orb_%s.png||link=%s]]', dataorbs[4], link)
    card.data_cost_attr = format('["%s"]', concat(data.power_cost, '","'))
    card.power_cost_wktxt = type(data.power_cost) == 'table'
        and data.power_cost[cardupgrade + 1]
        or data.power_cost
    local actualChargeRule = (promo
        and { data.charges or 4, 0, 0, 0 }
        or (type(data.charges) == table
        and data.charges
        or (charge_rules[data.charges or 4]) or charge_rdules[4])
    )
    local actualCurrentCharge
    for i=0, applied_charges do
        actualCurrentCharge = (actualCurrentCharge or 0) + actualChargeRule[i+1] or 0
    end
    card.charges_wktxt = actualCurrentCharge
    card.data_charges_attr = format('["%s"]', concat(actualChargeRule or {}, '","'))
    card.squadsize = data.squadsize
    card.class = data.class
    card.weapon_type_wktxt = (data.weapon_type and data.damage and data.type ~= 'Spell') and format(
        '[[File:Card_Icon_%s%s.png||link=%s]]',
        data.weapon_type,
        (check_size[data.counter or 'Nope'] and data.weapon_type ~= 'Special')
            and format('_Unit_Countering_Size_%s', data.counter) or (data.weapon_type ~= 'Special' and '_Unit' or ''),
        link
    )
    card.damage_wktxt = type(data.damage) == 'table' and data.damage[cardupgrade + 1] or data.damage
    card.unit_size_wktxt = check_size[data.size or 'Nope'] and format('[[File:Card_Icon_Unit_Size_%s.png||link=%s]]', data.size, link) or nil
    card.health_wktxt = type(data.health) == 'table' and data.health[cardupgrade + 1] or data.health
    card.edition_icon_wktxt = format('[[File:Edition_Icon_%s_%s%s.png||60x60px|link=%s]]', data.edition, data.rarity, data.edition == 'Twilight' and '' or '_HD', link)

    card.abilities_node = data.abilities_done
    if not card.abilities_node then
        local abilities_node = mw.html.create()
        for k, v in ipairs(data.abilities or {}) do
            if k < 5 then
                local abil = mw.html.create('div')
                if v['upgrade_dependency'] then
                    abil:addClass(format('cv-upgradeparts cv-U%s', v['upgrade_dependency']))
                    if v['upgrade_dependency'] > cardupgrade then
                        abil:cssText('display: none;')
                    end
                end
                if v['type'] then
                    abil:wikitext(
                        format(
                            '[[File:Card_Icon_%s%s.png|30x30px||link=%s]]&nbsp;',
                            v['type'],
                            v['affinity_dependency'] and format('_Affinity_%s', aff) or '',
                            link
                        )
                    )
                end
                abil:wikitext(v['name'])
                if not promo then --and v['upgrade_text']
                    local a = 0
                    for i = 1, 3 do
                        --if v['upgrade_text'][i] then
                        if v['values'] and v['values'][1] then
                            a = a + 1
                        end
                        if a ~= 0 then
                            abil:tag('span'):addClass(format('cv-upgradeparts cv-A%s', i)):css(
                                'display',
                                (i == cardupgrade and '' or 'none')
                            ):wikitext(format('[[File:Card_Icon_Upgrade_Status_0%s.png||link=%s]]', a, link))
                        end
                    end
                end
                abil:allDone()
                abilities_node:node(abil)
            end
        end
        card.abilities_node = abilities_node
    end

    return card.build()
end

function CardData.custom_card(frame)
    local args = getArgs(frame)

    local name = args.name or args[1] or ''

    if args.orbs then
        args.orbs = mw.text.split(args.orbs, '%s*,%s*')
        for k,v in ipairs(args.orbs or {}) do
            args.orbs[k] = v:gsub('^%l', string.upper)
        end
    end

    local res = args.orbs and get.factions(name, args.orbs) or {}
    local factionLR = res[1] and (res[1] ~= res[2] and res[1] .. res[2] or res[1]) or 'Blank'
    local factionLeft = res[1]
    local factionRight = res[2]

    if args.type then args.type = args.type:gsub('^%l', string.upper) end

    if args.edition then
        args.edition = args.edition:gsub('^%l', string.upper)
        if args.edition == 'Lost souls' then args.edition = 'Lost Souls' end
    end

    if args.rarity then
        args.rarity = args.rarity:gsub('^%l', string.upper)
        if args.rarity == 'Ultra rare' then args.rarity = 'Ultra Rare' end
    end

    if args.weapon_type then
        args.weapon_type = args.weapon_type:gsub('^%l', string.upper)
    end

    if string.lower(args.affinity or 'none') == 'none' then
        args.affinity = nil
    end
    if args.affinity then
        args.affinity = args.affinity:gsub('^%l', string.upper)
    end

    if args.counter then
        args.counter = string.upper(args.counter)
    end

    if args.size then
        args.size = string.upper(args.size)
    end

    local promo_txt, promo_class
    if type(args.upgrade) == 'string' then
        if args.upgrade:lower() == 'promo' then
            args.promo = true
            args.cardupgrade = 3
            args.applied_charges = 3
            promo_txt = format('[[File:Promo_Icon_%s.png||link=]]', factionLeft)
        end
        if args.upgrade:lower() == 'starter' then
            args.starter_card = true
            args.cardupgrade = 0
            promo_class = 'cv-upgradeparts cv-A0'
            promo_txt = format('[[File:Starter_Icon_%s.png||link=]]', factionLeft)
        end
        if args.upgrade:lower() == 'temp'
            or args.upgrade:lower() == 'temporary'
            or args.upgrade:lower() == 'tome' then
            args.temporary_card = true
            args.cardupgrade = 3
            args.applied_charges = 3
            promo_txt = format('[[File:Temporary_Icon_%s.png||link=]]', factionLeft)
        end
    else
        args.cardupgrade = args.upgrade
    end

    local abilities_done = mw.html.create()
    for i = 1, 5 do
        local abil = mw.html.create('div')
        if args['ability_'..i..'_type'] and string.lower(args['ability_'..i..'_type']) ~= 'none' then
            abil:wikitext(format(
                '[[File:Card_Icon_%s%s.png|30x30px||link=]]&nbsp;',
                string.lower(args['ability_'..i..'_type']):gsub('^%l', string.upper),
                (args['ability_'..i..'_affinity'] == true or string.lower(args['ability_'..i..'_affinity'] or '') == 'true') and format('_Affinity_%s', args.affinity) or ''
            ))
        end
        abil:wikitext(args['ability_'..i..'_name'] or '')
        if tonumber(args['ability_'..i..'_upgrade'])
            and tonumber(args['ability_'..i..'_upgrade']) > 0
            and tonumber(args['ability_'..i..'_upgrade']) <= 3 then
            abil:wikitext(format('[[File:Card_Icon_Upgrade_Status_0%s.png||link=]]', args['ability_'..i..'_upgrade']))
        end

        abil:allDone()
        abilities_done:node(abil)

    end
    abilities_done:allDone()

    local check_size = {
        S = true,
        M = true,
        L = true,
        XL = true,
    }

    return CardClass{
        scaling = args.displayscaling or args.scaling,
        affinity = args.affinity,
        factionLeft = factionLeft,
        factionRight = factionRight,
        display_name = name,
        artwork_wktxt = format('[[File:%s||link=|320px]]', args.artwork),
        background_wktxt = format('[[File:Faction_%s_Upgrade_0_Type_C_Frame.png||link=]]', factionLR),
        spell_background_wktxt = args.type == 'Spell' and format('[[File:Spell_Card_Overlay_%s.png||link=]]', factionLR) or nil,
        cardupgrade = args.cardupgrade,
        applied_charges = args.applied_charges,
        upgrade_left_1_wktxt = format('[[File:%s_Upgrade_1_Left.png||link=]]', factionLeft),
        upgrade_left_2_wktxt = format('[[File:%s_Upgrade_2_Left.png||link=]]', factionLeft),
        upgrade_left_3_wktxt = format('[[File:%s_Upgrade_3_Left.png||link=]]', factionLeft),
        charge_left_1_wktxt = factionLeft == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=]]') or format('[[File:%s_Charge_1_Left.png||link=]]', factionLeft),
        charge_left_2_wktxt = factionLeft == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]') or format('[[File:%s_Charge_2_Left.png||link=]]', factionLeft),
        charge_left_3_wktxt = factionLeft == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]') or format('[[File:%s_Charge_3_Left.png||link=]]', factionLeft),
        upgrade_right_1_wktxt = format('[[File:%s_Upgrade_1_Right.png||link=]]', factionRight),
        upgrade_right_2_wktxt = format('[[File:%s_Upgrade_%s_Right.png||link=]]', factionRight, factionRight == 'Neutral' and '1' or '2'),
        upgrade_right_3_wktxt = format('[[File:%s_Upgrade_%s_Right.png||link=]]', factionRight, factionRight == 'Neutral' and '1' or '3'),
        charge_right_1_wktxt = factionRight == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link) or format('[[File:%s_Charge_1_Right.png||link=]]', factionRight),
        charge_right_2_wktxt = factionRight == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link) or format('[[File:%s_Charge_2_Right.png||link=]]', factionRight),
        charge_right_3_wktxt = factionRight == 'Neutral' and format('[[File:Neutral_Charge_All.png||link=%s]]', link) or format('[[File:%s_Charge_3_Right.png||link=]]', factionRight),
        promo_icon_wktxt = promo_txt,
        promo_icon_class = promo_class,
        tokenslot_wktxt = args.orbs and format('[[File:Tokenslot_Overlay_%s.png||link=]]', factionLR),
        tokenslot_affinity_wktxt = args.affinity and '[[File:Affinity_Tokenslot_Overlay_Blank.png||link=]]' or nil,
        orb_1_wktxt = format('[[File:Tokenslot_Orb_%s.png||link=]]', args.orbs and args.orbs[1] or nil),
        orb_2_wktxt = format('[[File:Tokenslot_Orb_%s.png||link=]]', args.orbs and args.orbs[2] or nil),
        orb_3_wktxt = format('[[File:Tokenslot_Orb_%s.png||link=]]', args.orbs and args.orbs[3] or nil),
        orb_4_wktxt = format('[[File:Tokenslot_Orb_%s.png||link=]]', args.orbs and args.orbs[4] or nil),
        power_cost_wktxt = args.power_cost,
        charges_wktxt = args.charges,
        unit_size_wktxt = check_size[args.size or 'Nope'] and format('[[File:Card_Icon_Unit_Size_%s.png||link=]]', args.size) or nil,
        squadsize = args.squadsize,
        class = args.class,
        damage_wktxt = args.damage,
        weapon_type_wktxt = (args.weapon_type and args.damage and args.type ~= 'Spell') and format(
            '[[File:Card_Icon_%s%s.png||link=]]',
            args.weapon_type,
            (check_size[args.counter or 'Nope'] and args.weapon_type ~= 'Special') and format('_Unit_Countering_Size_%s', args.counter) or (args.weapon_type ~= 'Special' and '_Unit' or '')
        ),
        health_wktxt = args.health,
        edition_icon_wktxt = format('[[File:Edition_Icon_%s_%s%s.png||60x60px|link=]]', args.edition, args.rarity, args.edition == 'Twilight' and '' or '_HD'),
        notooltip = true,
        abilities_node = abilities_done,
    }.build()
end

--- returns a list of cards formatted as a deck display
---@param frame table mw.frame object
---@return string deck as mw.html
---@public
function CardData.deck(frame)
    local args = getArgs(frame)

    local res = mw.html.create('div'):cssText('display:flex;flex-wrap:wrap;')
    if args.maxperrow then
        res:cssText(
            format(
                'max-width:100%%;width:calc(%spx * %s);',
                args.icononly and 82 * (tonumber(args.scaling) or tonumber(args.displayscaling) or 1) or 370 * (tonumber(args.scaling) or tonumber(args.displayscaling) or 0.23),
                args.maxperrow
            )
        )
    end
    for i = 1, 20 do
        local t = mw.text.split(args[i] or '', ';', true)
        if t[1] ~= '' then
            if args.icononly then
                res:node(
                    CardData.icon{
                        t[1],
                        size = format('%spx', (args.scaling or args.displayscaling or 1) * 80),
                        icononly = true
                    }
                )
            else
                res:node(
                    CardData.card{
                        t[1],
                        cardupgrade = tonumber(t[2] or 0),
                        applied_charges = tonumber(t[3] or 0),
                        scaling = args.scaling or args.displayscaling or '0.23'
                    }
                )
            end
        end
    end

    return res
end

-- TODO: Abilities & Upgrades
--- returns values from CardData/data for a card
---@param frame table mw.frame object
---@return string value from card
---@public
function CardData.get(frame)
    local args = getArgs(frame)

    local cardname = (args[2]:find('affini')) and args[1] or get.verified_name(args[1])
    local val = args[2]
    local returntype = args[3]
    -- 'return' one of: array, count, 'index' (eg 1).
    -- nil returns default (tables as array (wikitext-string separated by ';'), single value as single value)

    if not get[val] then
        return format('No getter for %s', val)
    end

    -- if not get['card'](cardname) then return format('Card %s not found (fn 'get')', cardname) end
    --if not get[val](cardname, cardtype) then return format('Value %s not found for %s (%s)', val, cardname, get[val](cardname, cardtype)) end

    local returnval = cardname == 'list' and get.list() or get[val](cardname)

    if returnval == nil then
        return format('Card %s or value %s not found (fn "get")', cardname, val)
    end

    if returntype == 'count' then
        local i = 0
        for _ in pairs(returnval or {}) do
            i = i + 1
        end
        return i
    elseif returntype == 'array' then
        if not type(returnval) == 'table' then
            return format('Value %s not an array (lua table)', val)
        end
        return concat(returnval, '; ')
    elseif type(returntype) == 'number' and returntype == math.floor(returntype) and returntype < 10 then
        return returnval[tonumber(returntype)]
    else
        -- Something's not workin' here
        if type(returnval) == 'table' then
            return concat(returnval, '; ')
        elseif type(returnval) == 'string' or type(returnval) == 'number' or type(returnval) == 'boolean' then
            return returnval
        else
            return 'Something went wrong. Check: card, value, return and Module:CardData/data'
        end
    end
end

--- check if card has value
---@param frame table mw.frame object
---@return boolean true if carddata/data contains value for card; else nothing
---@public
function CardData.has(frame)
    local args = getArgs(frame)

    if has[args[2]] and has[args[2]](args[1]) then
        return true
    end
    local cardname = args[2]:find('affini') and args[1] or get.verified_name(args[1])
    if get[args[2]] and get[args[2]](cardname) then
        return true
    end
end

--- returns the content for Template:Card_icon
---@param frame table mw.frame object
---@return string icon_text or icon as mw.html
---@public
function CardData.icon(frame)
    local args = getArgs(frame)

    local n, v = string.find(args[1], ' (', 1, true)
    local name, _ = (n == nil and args[1] or string.sub(args[1], 1, (n or 0) - 1)), nil
    local var, _ = string.gsub(string.sub(args[1], (v or 0) + 1), '%)', '')

    local firstfile = ''
    if var == 'Promo' then
        firstfile = '_(Promo)'
    elseif var == 'Twilight' then
        firstfile = '_(Twilight)'
    elseif var == 'Lost Souls' then
        firstfile = '_(Lost_Souls)'
    elseif var == 'Superpig' then
        firstfile = '_(Superpig)'
    end
    local linkdest = name == 'Mo' and 'Mo#Card' or (var ~= 'Promo' and format('%s%s', name, firstfile) or name)

    local size = math.floor(string.gsub(args.size or '20px', 'px', '') + 0.5)

    local aff = false
    if var == 'Fire' or var == 'Frost' or var == 'Nature' or var == 'Shadow' then
        aff = true
    end

    local linktext = name
    if args[2] ~= nil and args[2] ~= '' then
        linktext = args[2]
    elseif var ~= name then
        linktext = format('%s (%s)', linktext, var)
    end

    local span =
    mw.html.create('span'):addClass('card-icon'):attr('data-card', args[1]):tag('span'):css{
        position = 'relative',
        display = 'inline-block',
        ['line-height'] = 0
    }:wikitext(format('[[File:%s%s_Card_Icon.png|%spx|border|link=%s]]', name, firstfile, size, linkdest)):tag('span'):css{
        position = 'absolute',
        right = 0,
        bottom = 0,
        ['z-index'] = 1000
    }:wikitext(
        aff and format('[[File:Affinity_Orb_%s.png|%spx|link=%s]]', var, math.floor(size * 0.4 + 0.5), linkdest) or
            (name == 'Grinder' and
                format('[[File:Affinity_Orb_Shadow.png|%spx|link=Grinder]]', math.floor(size * 0.4 + 0.5)) or
                '')
    ):done():done()
    if not args.icononly then
        span:wikitext(format(' [[%s|%s]]', linkdest, linktext))
    end

    return span
end

function CardData.infobox(frame)
    local args = getArgs(frame)

    local vname, _, _ = get.verified_name(args[1])
    local abils = {}
    for k,v in pairs(get.abilities_all(args[1])) do
        abils[k] = '<div>' .. frame:expandTemplate{title='ai', args={ v.name , args[1]..(has.nonpromo(args[1]) and '' or ' (Promo)'), link=args[1] }} .. '</div>'
    end
    return frame:expandTemplate{
        title = 'Infobox card',
        args = {
            name         = args[1],
            artwork      = format('[[File:%s_Card_Artwork.png|link=]]', args[1]),
            card_type    = get.type(vname) or nil,
            faction      = get.faction(vname) == 'Neutral' and 'None (Neutral / Legendary)' or get.faction(vname),
            class        = get.class(vname) or nil,
            has_normal   = has.normal(args[1]) or nil,
            has_promo    = has.promo(args[1]) or nil,
            affinity1    = has.affinities(args[1]) and get.affinity_variants(args[1])[1] or nil,
            affinity2    = has.affinities(args[1]) and get.affinity_variants(args[1])[2] or nil,
            power_cost   = type(get.power_cost(vname)) == 'table' and frame:expandTemplate{title = 'pu', args={get.power_cost(vname)[1], get.power_cost(vname)[2], get.power_cost(vname)[3], get.power_cost(vname)[4]}} or nil,
            orbs         = get.orbs(vname) and concat(get.orbs(vname), ', ') or nil,
            charges      = has.nonpromo(vname) and frame:expandTemplate{title = 'pc', args={get.charges(vname)}} or get.charges(vname),
            squadsize    = get.squadsize(vname) and get.squadsize(vname) or nil,

            damage_bonus = get.counter(vname) and get.counter(vname) or nil,
            damage       = type(get.damage(vname)) == 'table' and frame:expandTemplate{title = 'pu', args={get.damage(vname)[1], get.damage(vname)[2], get.damage(vname)[3], get.damage(vname)[4]}} or get.damage(vname),
            size         = get.size(vname) and get.size(vname) or nil,
            health       = type(get.health(vname)) == 'table' and frame:expandTemplate{title = 'pu', args={get.health(vname)[1], get.health(vname)[2], get.health(vname)[3], get.health(vname)[4]}} or get.health(vname),
            abilities    = concat(abils, ''),
            edition      = get.edition(vname) or nil,
            rarity       = get.rarity(vname) or nil
        }
    }
end

--- returns a filtered list of cards
---@param frame table mw.frame object
---@return string list of cards as mw.html
---@public
function CardData.list(frame)
    local args = getArgs(frame)

    local list = get.list()
    local div = args.ci == true and mw.html.create() or mw.html.create('div'):addClass('list-of-all-cards'):css{
        ['display'] = 'flex',
        ['flex-wrap'] = 'wrap',
        ['justify-content'] = 'center'
    }

    if args[1] ~= '' and args[2] ~= '' and args[1] ~= 'cardtype' then
        for _,k in ipairs(list) do
            if get[args[1]](k) == args[2] then
                if args.ci == true then
                    div:wikitext('\n* '):node(CardData.icon{k})
                else
                    div:tag('div'):node(CardData.card{k})
                end
            end
        end
    else
        if (args[1] == 'cardtype' and args[2] == 'cards') or args[1] == nil or args[1] == '' then
            for _,k in ipairs(list) do
                if k:find 'Northstar' then break end
                if not k:find '(Promo)' then div:tag('div'):node(CardData.card{k}) end
            end
        elseif (args[1] == 'cardtype' and args[2] == 'promos') or args[1] == nil or args[1] == '' then
            for _,k in ipairs(list) do
                if k:find '(Promo)' then div:tag('div'):node(CardData.card{k}) end
            end
        end
    end
    return div:done()
end

function CardData.map_drops(frame)
    local args = getArgs(frame)

    local res = get.map_drops(args[1], args[2])
    if args[3] == 'list' then
        local res2 = mw.html.create('ul')
        for i=1, #res do
            res2:tag('li'):node(CardData.icon{res[i]}):done()
        end
        return res2
    elseif args[3] == 'count' then
        return #res
    else
        return concat(res, ';')
    end
end

function CardData.navigation()
    local list = get.list()
    local previous_card

    local grid = mw.html.create('div'):attr('id', 'card-grid'):cssText('text-align: center; clear: both')

    for _,v in ipairs(list) do
        local name, _ = v:gsub(' %(Fire%)', ''):gsub(' %(Frost%)', ''):gsub(' %(Nature%)', ''):gsub(' %(Shadow%)', ''):gsub(' %(Promo%)', '')

        if name ~= previous_card then
            local data_orbs = get.orbs(v)
            local orbs = { data_orbs[1], data_orbs[2], data_orbs[3], data_orbs[4] }

            grid:tag('span')
                :addClass('grid-icon card-icon')
                :attr('data-card', name)
                :attr('data-search', name)
                :attr('data-faction', get.faction(v))
                :attr('data-special', has.promo(name) and 'Promo' or (get.starter_card(v) and 'Starter' or ''))
                :attr('data-orbs', concat(orbs, ','))
                :attr('data-orbsamount', #orbs)
                :attr('data-affinities', concat(get.affinity_variants(name) or {}, ','))
                :attr('data-size', get.size(v))
                :attr('data-type', get.type(v))
                :wikitext(format('[[File:%s_Card_Icon.png|56px|alt=%s|link=%s]]', name, name, name))
                :done()
        end

        previous_card = name
    end

    return mw.html.create('div'):addClass('grid-filter-container')
             :tag('div'):attr('id', 'grid-filter-search'):attr('data-placeholder', 'Search...')
             :cssText('float: left; width: 100px; margin: 3px'):done()
             :tag('div'):attr('id', 'grid-filter-special')
             :cssText('float: right; width: 100px; margin: 3px 0'):done()
             :tag('div'):attr('id', 'grid-filter-size')
             :cssText('float: right; width: 100px; margin: 3px 0'):done()
             :tag('div'):attr('id', 'grid-filter-affinities')
             :cssText('float: right; width: 100px; margin: 3px 0'):done()
             :tag('div'):attr('id', 'grid-filter-orbsamount')
             :cssText('float: right; width: 100px; margin: 3px 0'):done()
             :tag('div'):attr('id', 'grid-filter-orbs')
             :cssText('float: right; width: 100px; margin: 3px 0'):done()
             :tag('div'):attr('id', 'grid-filter-faction')
             :cssText('float: right; width: 100px; margin: 3px 0'):done()
             :tag('div'):attr('id', 'grid-filter-type')
             :cssText('float: right; width: 100px; margin: 3px 0'):done()
             :node(grid):allDone()
end

function CardData.progression_charges(frame)
    local args = getArgs(frame)
    if not args.index and not args[1] then return 'Missing max charge value' end
    local rule = chargeRules(tonumber(args.index or args[1]))
    if not rule then return 'Value '..(args.index or args[1])..' not found in ruleset'  end
    return frame:expandTemplate{title = 'p', args = {
        [1] = rule[1],
        [2] = 'No extra charges applied',
        [3] = rule[1] + rule[2],
        [4] = '1 extra charge applied',
        [5] = rule[1] + rule[2] + rule[3],
        [6] = '2 extra charges applied',
        [7] = rule[1] + rule[2] + rule[3] + rule[4],
        [8] = '3 extra charges applied',
        texttip = 'true'
    }}
end

--- returns html for the tooltip template
---@param frame table mw.frame object
---@return string tooltip content as mw.html
---@public
function CardData.tooltip(frame)
    local args = getArgs(frame)

    local name = args[1]--verifyName(args[1])
    local tooltip = mw.html.create('div'):cssText('display:flex;')

    if get.card(name) then
        tooltip:wikitext(tostring(CardData.card{
            name,
            ['cardupgrade'] = 0,
            ['applied_charges'] = 0
        }, {
            ['notooltip'] = true,
            ['nolink'] = true
        }))
    end
    if get.card(name..' (Fire)') then
        tooltip:wikitext(tostring(CardData.card{
            name..' (Fire)',
            ['cardupgrade'] = 0,
            ['applied_charges'] = 0
        }, {
            ['notooltip'] = true,
            ['nolink'] = true
        }))
    end
    if get.card(name..' (Frost)') then
        tooltip:wikitext(tostring(CardData.card{
            name..' (Frost)',
            ['cardupgrade'] = 0,
            ['applied_charges'] = 0
        }, {
            ['notooltip'] = true,
            ['nolink'] = true
        }))
    end
    if get.card(name..' (Nature)') then
        tooltip:wikitext(tostring(CardData.card{
            name..' (Nature)',
            ['cardupgrade'] = 0,
            ['applied_charges'] = 0
        }, {
            ['notooltip'] = true,
            ['nolink'] = true
        }))
    end
    if get.card(name..' (Shadow)') then
        tooltip:wikitext(tostring(CardData.card{
            name..' (Shadow)',
            ['cardupgrade'] = 0,
            ['applied_charges'] = 0
        }, {
            ['notooltip'] = true,
            ['nolink'] = true
        }))
    end
    if get.card(name..' (Promo)') then
        tooltip:wikitext(tostring(CardData.card{
            name..' (Promo)' }, {
            ['notooltip'] = true,
            ['nolink'] = true
        }))
    end

    return tooltip:allDone()
end

return CardData

-- </nowiki>
-- [[Category:Modules]]

