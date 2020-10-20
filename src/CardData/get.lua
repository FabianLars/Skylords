local p    = {}
local data = mw.loadData('Module:CardData/data')
-- TODO: Promos

function p.list()
    local keys={}
    local n=0

    for k,_ in pairs(data) do
        n=n+1
        keys[n]=k
    end
    table.sort(
            keys,
            function(a, b)
                return a:lower() < b:lower()
            end
    )
    return keys
end

function p.data()
    return data
end

function p.verified_name(n)
    if data[n] then return n end
    if data[n .. " (Fire)"] then return n .. " (Fire)" end
    if data[n .. " (Frost)"] then return n .. " (Frost)" end
    if data[n .. " (Nature)"] then return n .. " (Nature)" end
    if data[n .. " (Shadow)"] then return n .. " (Shadow)" end
    if data[n .. " (Promo)"] then return n .. " (Promo)" end
    error(n .. " not found in Module:CardData/data (same for affinity variants and promo)")
end

function p.exists(cardname)
    return data[cardname] and true or false
end

function p.card(cardname)
    return data[cardname] or nil
end

function p.description(cardname)
    return data[cardname].description or nil
end

function p.starter_card(cardname)
    return data[cardname].starter_card or false
end

function p.temporary_card(cardname)
    return data[cardname].temporary_card or false
end

function p.type(cardname)
    return data[cardname].type or nil
end

function p.edition(cardname)
    return data[cardname].edition or nil
end

function p.rarity(cardname)
    return data[cardname].rarity or nil
end

function p.affinity_variants(cardname)
    local affs = {}
    if data[cardname .. " (Fire)"] then affs[#affs+1] = "Fire" end
    if data[cardname .. " (Frost)"] then affs[#affs+1] = "Frost" end
    if data[cardname .. " (Nature)"] then affs[#affs+1] = "Nature" end
    if data[cardname .. " (Shadow)"] then affs[#affs+1] = "Shadow" end
    return affs[1] and affs or nil
end

function p.orbs(cardname)
    return data[cardname].orbs or nil
end

function p.factions(cardname, inp_orbs)
    local check_factions = {
        FrostFire = {'Fire', 'Frost'},
        NatureFire = {'Fire', 'Nature'},
        ShadowFire = {'Fire', 'Shadow'},
        FrostNature = {'Nature', 'Frost'},
        FrostShadow = {'Shadow', 'Frost'},
        NatureShadow = {'Shadow', 'Nature'},
    }
    local orbs = inp_orbs or data[cardname]["orbs"]
    local hash,res={},{}
    for _,v in ipairs(orbs) do
        if v ~= "Neutral" and not hash[v] then
            res[#res+1] = v
            hash[v] = true
        end
    end
    if not res[1] then res[1] = "Neutral" end
    if not res[2] then res[2] = res[1] end

    return check_factions[res[1]..res[2]] or res
end

function p.faction(cardname)
    local res = p.factions(cardname)

    if res[1] == res[2] then
        return res[1]
    end

    local faction = res[1] .. res[2]

    if faction == 'FireNature' then
        return 'Twilight'
    elseif faction == 'NatureFrost' then
        return 'Stonekin'
    elseif faction == 'ShadowFrost' then
        return 'Lost Souls'
    elseif faction == 'FireShadow' then
        return 'Bandit'
    elseif faction == 'ShadowNature' then
        return 'Amii'
    else
        return 'Error: ' .. faction
    end
end

function p.power_cost(cardname)
    return data[cardname].power_cost or nil
end

function p.weapon_type(cardname)
    return data[cardname].weapon_type or nil
end

function p.charges(cardname)
    return data[cardname].charges or nil
end

function p.squadsize(cardname)
    return data[cardname].squadsize or nil
end

function p.class(cardname)
    return data[cardname].class or nil
end

function p.counter(cardname)
    return data[cardname].counter or nil
end

function p.size(cardname)
    return data[cardname].size or nil
end

function p.damage(cardname)
    return data[cardname].damage or nil
end

function p.health(cardname)
    return data[cardname].health or nil
end

function p.upgrade_locations(cardname)
    return data[cardname].upgrade_locations
end

function p.map_drops(mapname, difficulty)
    local t = {}
    for k, v in pairs(data) do
        if not k:find " %(Promo%)" and v["upgrade_locations"][difficulty] == mapname then
            t[#t+1] = k
        end
    end
    table.sort(t, function(a, b) return a:lower() < b:lower() end)
    return t
end

function p.abilities(cardname)
    -- TODO
    return data[cardname].abilites or nil
end

function p.abilities_all(cardname)
    local t, res, hash = {}, {}, {}
    if data[cardname] then for _,v in ipairs(data[cardname]["abilities"]) do t[#t+1] = v end end
    if data[cardname .. " (Fire)"] then for _,v in ipairs(data[cardname .. " (Fire)"]["abilities"]) do t[#t+1] = v end end
    if data[cardname .. " (Frost)"] then for _,v in ipairs(data[cardname .. " (Frost)"]["abilities"]) do t[#t+1] = v end end
    if data[cardname .. " (Nature)"] then for _,v in ipairs(data[cardname .. " (Nature)"]["abilities"]) do t[#t+1] = v end end
    if data[cardname .. " (Shadow)"] then for _,v in ipairs(data[cardname .. " (Shadow)"]["abilities"]) do t[#t+1] = v end end
    if data[cardname .. " (Promo)"] then for _,v in ipairs(data[cardname .. " (Promo)"]["abilities"]) do t[#t+1] = v end end
    if t then
        for _,v in ipairs(t) do
            if not hash[v["name"]] then
                res[#res+1] = v
                hash[v["name"]] = true
            end
        end
    end
    return res
end

function p.upgrades(cardname)
    -- TODO
    return data[cardname].upgrades or nil
end

return p

-- [[Category:Modules]]