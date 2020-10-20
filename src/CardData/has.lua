local p    = {}
local data = mw.loadData('Module:CardData/data')
-- TODO: Promos

local function verified_name(n)
    if data[n] then return n end
    if data[n .. " (Fire)"] then return n .. " (Fire)" end
    if data[n .. " (Frost)"] then return n .. " (Frost)" end
    if data[n .. " (Nature)"] then return n .. " (Nature)" end
    if data[n .. " (Shadow)"] then return n .. " (Shadow)" end
end

function p.promo(cardname)
    if data[cardname .. " (Promo)"] then return true else return false end
end

function p.nonpromo(cardname)
    -- nonpromo returns false if there are affinity_variants (infobox helper function)
    if data[cardname] then return true end
    return p.affinities(cardname)
end

-- not even affinity
function p.normal(cardname)
    if data[cardname] then return true else return false end
end

function p.affinity(cardname, affinity)
    if data[cardname .. " (".. affinity ..")"] then return true else return false end
end

function p.affinities(cardname)
    if data[cardname .. " (Fire)"] then return true end
    if data[cardname .. " (Frost)"] then return true end
    if data[cardname .. " (Nature)"] then return true end
    if data[cardname .. " (Shadow)"] then return true end
    return false
end

return p

-- [[Category:Modules]]