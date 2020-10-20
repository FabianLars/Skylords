-- <pre>
-- Questions? Ask them on Message_Wall:FabianLars or Discord (User:FabianLars for contact details)
--[[TEMPLATE                TEMPLATE
    ["name"] = {
        description = "",
        type = "Unit",
        edition = "",
        rarity = "Rare",
        orbs = {"", ""},
        power_cost = 999,
        weapon_type = "Melee",
        charges = 4,
        squadqsize = 1,
        class = "",
        counter = "L",
        size = "L",
        damage = 9999,
        health = 9999,
        upgrade_locations = {"", "", ""},
        upgrade_text = nil,
        abilities = {
        {
            name = "",
            type = "",
            upgrade_dependency = 0,
            affinity_dependency = false,
            cost = nil,
            description = "",
            values = nil,
            upgrade_text = {"", "", ""}
        }
        }
    },
]] -- You can omit lines containing nil, false, "" or {}
return {
    ["Abomination (Frost)"] = {
        -- card type (string) [Unit|Building|Spell]
        type = "Unit",
        -- edition (string) [Amii|Lost Souls|Renegade|Twilight]
        edition = "Amii",
        -- rarity (string) [Common|Uncommon|Rare|Ultra Rare]
        rarity = "Rare",
        -- orbs right to left (table<string>) [Fire|Frost|Nature|Shadow]
        orbs = {"Nature", "Nature", "Fire", "Fire"},
        -- card power cost (number)
        power_cost = 220,
        -- weapon_type (string|nil) [Melee|Ranged|Special|nil]
        weapon_type = "Melee",
        -- charges (number)
        charges = 4,
        -- squad size (number)
        squadsize = 1,
        -- class (string)
        class = "Beast Destroyer",
        -- counter (string|nil) [S|M|L|XL|nil]
        counter = "XL",
        -- size class (string|nil) [S|M|L|XL|nil]
        size = "XL",
        -- damage (number|table<number>) use a table if numbers change with upgrades
        damage = {5270, 5550, 6100, 6700},
        -- health (number|table<number>) use a table if numbers change with upgrades
        health = 5550,
        -- location of each upgrade card
        upgrade_locations = {
            "Crusade", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        -- text on upgrade cards that doesn't fit somewhere else
        upgrade_text = nil,
        -- list of abilities (table<ability_table>)
        abilities = {
            {
                -- ability name (string)
                name = "Blessed Fury",
                -- ablity type (string) [Active|Passive|Autocast|Godspell|Toggle]
                type = "Active",
                -- true if ability is dependant on affinity (colored icon)
                affinity_dependency = true,
                -- ability cost (number|nil)
                cost = 120,
                -- ability description (string) shown in tooltip. %s is a placeholder for a value which changes on upgrades
                description = "Activate to release a furious roar that deals %s damage to enemies within a 25m radius around the unit, up to %s in total. Every hostile unit within that area will be stunned and unable to fight in close-combat for %s seconds. Reusable every 30 seconds.",
                -- values for placeholder in same order (table<string|number>)
                values = {
                    {840, 900, 900, 1000}, {2520, 2700, 2700, 3000},
                    {15, 15, 20, 20}
                },
                -- text displayed on upgrade card above ability (table<string>|nil)
                upgrade_text = {
                    "+60 damage per target", "+5s duration",
                    "+100 damage per target"
                }
            }, {
                -- same as above, but minimized (removed unnecessary lines)
                name = "Transformation",
                type = "Active",
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight crature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!"
            }
        }
    },
    ["Abomination (Shadow)"] = {
        type = "Unit",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Fire", "Fire"},
        power_cost = 220,
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Destroyer",
        counter = "XL",
        size = "XL",
        damage = {5270, 5550, 6100, 6700},
        health = 5550,
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Fury",
                type = "Active",
                affinity_dependency = true,
                cost = 120,
                description = "Activate to release a furious roar that deals %s damage to enemies within a 25m radius around the unit, up to %s in total. Every hostile unit within that area will be stunned and unable to follow the player's commands for %s seconds. Reusable every 30 seconds.",
                values = {
                    {840, 900, 900, 1000}, {2520, 2700, 2700, 3000},
                    {15, 15, 20, 20}
                }
            }, {
                name = "Transformation",
                type = "Active",
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight crature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!"
            }
        }
    },
    ["Abyssal Warder (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Nature"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Giant Destroyer",
        counter = "L",
        size = "XL",
        damage = {2500, 2500, 2500, 2500},
        health = {2500, 2500, 2500, 2500},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Crystal Spikes",
                type = "Active",
                upgrade_dependency = 0,
                cost = 80,
                description = "Activate to ram Abyssal Warder's crystaline fist into the ground. Crystal Spikes will erupt from the ground and within 4 seconds cover a 20m radius. They deal %s damage to enemies within it, up to %s in total that cannot be warded off with the help of damage reducing abilities as the crystals are able to circumvent every buff or protective shield. Knocks back small and medium units. Only affects ground entities. Reusable every 20 seconds.",
                values = {{570, 600, 660, 725}, {1710, 1800, 1980, 2175}}
            }, {
                name = "Infused Breakdown",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Upon dying the unit collapses into pieces that will reassemble on their own to form two large sized Abyssal Warders. If those die their remains will again form to medium sized golems each. All smaller variants of Abyssal Warder are enraged and deal increasingly more damage the longer they attack.",
                values = {}
                -- TODO: Upgrades value not specified in description (Golem damage)
            }
        }
    },
    ["Abyssal Warder (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Nature"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Giant Destroyer",
        counter = "L",
        size = "XL",
        damage = {2500, 2500, 2500, 2500},
        health = {2500, 2500, 2500, 2500},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Crystal Spikes",
                type = "Active",
                upgrade_dependency = 0,
                cost = 80,
                description = "Activate to ram Abyssal Warder's crystaline fist into the ground. Crystal Spikes will erupt from the ground and within 4 seconds cover a 20m radius. They deal %s damage to enemies within it, up to %s in total that cannot be warded off with the help of damage reducing abilities as the crystals are able to circumvent every buff or protective shield. Knocks back small and medium units. Only affects ground entities. Reusable every 20 seconds.",
                values = {{570, 600, 660, 725}, {1710, 1800, 1980, 2175}}
            }, {
                name = "Blessed Breakdown",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Upon dying the unit collapses into pieces that will reassamble on their own to form two larged sized Abyssal Warders. If those die their remains will again form to medium sized golems each. All smaller variants of Abyssal Warder are endowed with an Ice Shield that absorbs up to 750 damage for 15 seconds.",
                values = {}
                -- TODO: Upgrades value not specified in description (Golem damage)
            }
        }
    },
    ["Aggressor (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "L",
        size = "L",
        damage = {700, 700, 700, 700},
        health = {1075, 1075, 1075, 1075},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Elemental Balls",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit hurls an elemental ball that deals 112 damage to enemies in a 5m radius around its target, up to 168 in total. Knocks back small, medium and large units.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }, {
                name = "Blessed Radiance",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Upon dying the unit will release its elemental powers and infuse them into its environment. Up to 4 hostile units within a 20m radius will be frozen for 20 seconds. After freeze wears off, targets are immune against Freeze for 10 seconds.",
                values = nil
            }
        }
    },
    ["Aggressor (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "L",
        size = "L",
        damage = {700, 700, 700, 700},
        health = {1075, 1075, 1075, 1075},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Elemental Balls",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit hurls an elemental ball that deals 112 damage to enemies in a 5m radius around its target, up to 168 in total. Knocks back small, medium and large units.",
                values = nil
            }, {
                name = "Gifted Radiance",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Upon dying the unit will release its elemental powers and infuse them into its environment. Friendly units will regenerate 10% of their life points every second for up to 1000 life points in total. Lasts for 15 seconds.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Altar of Chaos"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        health = {5200, 5200, 5200, 5720},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Mass Destruction",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to place a Nether Bomb that explodes after 10 seconds dealing 1500 damage to hostile and friendly entities in a 25m radius around its target, up to 9000 in total. Only one bomb may be placed at a time. Cannot be disabled by spellblocking abilities.",
                values = nil
            }, {
                name = "Self-Abandonment",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Own units may be sent into the Altar sacrifice them and store their life points. A maximum of 8000 life points can be stored. 300% of them will be dealt as additional damage as soon as the bomb explodes. Once the bomb has been placed no more units may be sacrificed.",
                values = nil
            }
        }
    },
    ["Altar of Nihil"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Neutral", "Neutral"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1600, 1600, 1600, 1600},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Nihilation",
                type = "Active",
                upgrade_dependency = 0,
                description = "activate to surpress every player's void power refunds. The void power will not grow any further for 20 seconds. Has a 60 seconds cool-down after the building was built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Amazon (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Human Soldier",
        counter = "L",
        size = "M",
        damage = {575, 575, 575, 575},
        health = {720, 720, 720, 720},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Beast Mastery",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to gain control over an enemy beast unit for 15 seconds. Restricted to 1 orb creatures with maximum of 150 power costs. Does not work on extra-large units. The dominated beast does not allow to play out cards next to it and cannot be killed by the player. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Wildlife Affection",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit takes 50% less damage when attacked by beast or forestkin creatures.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Amazon (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Human Soldier",
        counter = "L",
        size = "M",
        damage = {575, 575, 575, 575},
        health = {720, 720, 720, 720},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Beast Mastery",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to gain control over an enemy beast unit for 15 seconds. Restricted to 1 orb creatures with maximum of 150 power costs. Does not work on extra-large units. The dominated beast does not allow to play out cards next to it and cannot be killed by the player. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Wildlife Protection",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every friendly beast or forestkin creature within 20m radius around Amazon will benefit 50% more from any regenerating ability.",
                values = nil
            }
        }
    },
    ["Amii Monument"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        charges = 4,
        squadsize = 1,
        class = "Device",
        size = "Building",
        health = {1700, 1700, 1700, 1700},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Nature Orb",
                type = "Toggle",
                upgrade_dependency = 0,
                cost = 160,
                description = "Gain Nature Orb",
                values = nil
            }, {
                name = "Fire Orb",
                type = "Toggle",
                upgrade_dependency = 0,
                cost = 160,
                description = "Gain Frost Orb",
                values = nil
            }, {
                name = "Frost Orb",
                type = "Toggle",
                upgrade_dependency = 0,
                cost = 160,
                description = "Gain Fire Orb",
                values = nil
            }, {
                name = "Shadow Orb",
                type = "Toggle",
                upgrade_dependency = 0,
                cost = 160,
                description = "Gain Shadow Orb",
                values = nil
            }
        }
    },
    ["Amii Phantom"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Shadow"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Human Gladiator",
        counter = "M",
        size = "M",
        damage = {640, 640, 640, 640},
        health = {540, 540, 540, 540},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Withering Spear",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2.5 seconds , unit throws a poison-tipped spear dealing 85 damage and slowing enemy units.Slowed enemy unit may only move at walkspeed.Last for 10 seconds",
                values = nil
            }, {
                name = "Amii Ashfighter",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to gain Slam , Swift but lose range attack.",
                values = nil
            }, {
                name = "Slam",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Attacked units cannot use their abilities and ranged attack for 10 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at highspeed",
                values = nil
            }
        }
    },
    ["Amii Ritual (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Frost"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 0,
        class = "Enchantment",
        counter = "S",
        size = "S",
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Unbreakable",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Seals every friendly orb, power generator and wall segment in the current game off behind a magical barrier that partially absorbs incoming damage. The affected structures will then receive 80% less damage. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Amii Ritual (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Frost"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 0,
        class = "Enchantment",
        counter = "S",
        size = "S",
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Unbreakable",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Seals every friendly orb, power generator and wall segment in the current game off behind a magical barrier that absorbs 60% of all incoming damage for 15 seconds. The affected structures will additionally regenerate 50 lifepoints every 2 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Amok (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Fire", "Fire"},
        power_cost = {125, 125, 125, 125},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused: Friend or Foe?",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Confuses all units wthin a 25m radius which will make it impossible for them to distinguish between friend and foe. They will therefore start attacking whatever entity is next to them no matter if it is friendly or hostile. Last for 15 seconds. Reusable every 45 seconds.",
                values = nil
            }
        }
    },
    ["Amok (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Fire", "Fire"},
        power_cost = {125, 125, 125, 125},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted: Friend or Foe?",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Confuses the target enemy unit which will no longer be able to distinguish between friend and foe for 15 seconds. It will therefor start attacking whatever entity is nearby no matter if it is friendly or hostile. It may also tranfer its confusion to other surrounding hostile or friendly units within a 15m radius, up to total 15 targets may be affected. Reusable every 45 seconds.",
                values = nil
            }
        }
    },
    ["Architect's Call (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Siege of Hope", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Construction",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a productive aura that reduces the necessary construction time of friendly buildings placed within a 20m radius by 25%. Additionally, every friendly building within it will be constantly repaired and restores 20 life points per second. Lasts for 20 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Architect's Call (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Construction",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a productive aura that reduces the necessary construction time of friendly buildings placed within a 20m radius by 25%. Additionally, every enemy unit within it will be weakened and deal 30% less damage against structures. Lasts for 20 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Area Ice Shield"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Shield",
                type = nil,
                upgrade_dependency = 0,
                description = "Applies Ice Shield on up to 3 friendly units that absorbs up to 520 damage for 30 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Armored Tower"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral", "Neutral"},
        power_cost = {80, 80, 80, 80},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {1420, 1420, 1420, 1420},
        health = {2590, 2590, 2590, 2590},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower hurls an ice bolt that deals 110 damage to enemies in a 5m radius around its target, up to 170 in total.",
                values = nil
            }, {
                name = "Gift of Ice",
                type = "Active",
                upgrade_dependency = 0,
                description = "Friendly entities in a 25m radius take 50% less damage for 30 seconds or until a total of 5200 damage has been absorbed.",
                values = nil
            }
        }
    },
    ["Artillery (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow", "Fire", "Fire"},
        power_cost = {190, 190, 190, 190},
        charges = 4,
        squadsize = 0,
        class = "Tower",
        damage = {4900, 4900, 4900, 4900},
        health = {3500, 3500, 3500, 3500},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Boom Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, Artillery blows a fiery bomb at enemies that deals 784 in a 15m radius, up to 1176 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Infused Mine Blow",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If surrounded by more than 4 hostile entities Artillery may additionally shoot mines every 15 seconds at the position of an enemy unit. After 3 seconds the delivered mine may be tirggered by nearby enemies within a 12m radius and incinerate the ground for 10 seconds dealing 70 damage to hostile ground units per second. If not triggered the mine will vanish after 60 seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the building will repair the building and restore its life points.",
                values = nil
            }
        }
    },
    ["Artillery (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow", "Fire", "Fire"},
        power_cost = {190, 190, 190, 190},
        charges = 4,
        squadsize = 0,
        class = "Tower",
        damage = {4900, 4900, 4900, 4900},
        health = {3500, 3500, 3500, 3500},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Boom Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, Artillery blows a fiery bomb at enemies that deals 784 in a 15m radius, up to 1176 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Tainted Mine Blow",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If surrounded by more than 4 hostile entities Artillery may additionally shoot mines every 15 seconds at the position of an enemy unit. After 10 seconds the delivered mine may be triggered by nearby enemies within a 12m radius and deal 1000 damage, up to 3000 in total. If not triggered the mine will vanish after 60 seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the building will repair the building and restore its life points.",
                values = nil
            }
        }
    },
    ["Ashbone Pyro"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Demon Destroyer",
        counter = "Special",
        size = "L",
        damage = {1400, 1400, 1400, 1400},
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Nightfire Jet",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit casts infernal flames that deal 70 damage to every second.",
                values = nil
            }, {
                name = "Instability",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Loses 50 life points every two seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "30% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Aura of Corruption"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Bad Harvest", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Mischievous Aura",
                type = nil,
                upgrade_dependency = 0,
                description = "Needs 4 seconds to create a destructive aura of 30m radius where playing out cards will backlash. Every card played out will also deal 5 times their power costs x their era as area damage to hostile and friendly units. Lasts for 40 seconds. Reusable every 40 seconds.",
                values = nil
            }
        }
    },
    ["Aura of Pain"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Torment",
                type = nil,
                upgrade_dependency = 0,
                description = "Target unit is surrounded by harmful energy damaging itself and dealing every second 34 damage to enemies in a 15 radius, up to 170 in total. Lasts for 15 seconds. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Avatar of Frost"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Frost"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "L",
        size = "XL",
        damage = {3200, 3200, 3200, 3200},
        health = {500, 500, 500, 500},
        upgrade_locations = {
            "King of the Giants", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Frozen Armor",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Every 15 seconds, unit coats itself in an armor of ice which absorbs up to 2150 damage.",
                values = nil
            }
        }
    },
    Backlash = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Void Surge",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates an explosion that deals the current void power + an additional 250% of it as damage to enemies in a 25m radius, up to 25% of this damage is applied per target. Void power is not used up. Knocks back small and medium units. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Bandit Lancer (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Human Soldier",
        counter = "L",
        size = "M",
        damage = {1300, 1300, 1300, 1300},
        health = {770, 770, 770, 770},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Branding",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 30,
                description = "Activate to mark the targeted enemy, disable its special abilities and force it move at walk speed only. All ranged attackers within a 65m radius will focus their attacks on marked target while their attack range are increased by 15m. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points. (15% lifesteal)",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Stomp",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Tramples small units.",
                values = nil
            }
        }
    },
    ["Bandit Lancer (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Human Soldier",
        counter = "L",
        size = "M",
        damage = {1300, 1300, 1300, 1300},
        health = {770, 770, 770, 770},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Branding",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 30,
                description = "Activate to mark the targeted enemy and make it take 15% more damage. All ranged attackers within a 65m radius will focus their attacks on the marked target while their attack range is increased by 15m. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points. (15% lifesteal)",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Stomp",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Tramples small units.",
                values = nil
            }
        }
    },
    ["Bandit Launcher (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {60, 60, 60, 60},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1200, 1200, 1200, 1200},
        health = {1270, 1270, 1270, 1270},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Flame arrow",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Shoots a fiery arrow every 2 seconds, that deals 96 damage to enemies in a 5m range, up to 144 in total.",
                values = nil
            }, {
                name = "Infused Firebug",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to incinerate the tower. After 3 seconds it will have burnt down completely triggering a massive burst of flames that deals 400 damage to hostile ground entities in a 20m radius around it, up to 1200 in total.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Bandit Launcher (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {60, 60, 60, 60},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1200, 1200, 1200, 1200},
        health = {1270, 1270, 1270, 1270},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Flame arrow",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Shoots a fiery arrow every 2 seconds, that deals 96 damage to enemies in a 5m range, up to 144 in total.",
                values = nil
            }, {
                name = "Tainted Firebug",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to incinerate the tower. After 3 seconds it will have burnt down completely triggering a massive burst of flames that deals 600 damage to any ground entities in a 20m radius around it, up to 1800 in total.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Bandit Sorceress (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Human Wizard",
        counter = "S",
        size = "M",
        damage = {550, 550, 550, 550},
        health = {470, 470, 470, 470},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Bandit Sphere",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit blasts a magic sphere that deals 44 damage to enemies in a 10m radius around its target, up to 66 in total.",
                values = nil
            }, {
                name = "Infused Installation",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 50,
                description = "Activate to send the unit into a building. The unit is able to enter any friendly building where she will use her magical abilities in order to increase the seized building's attack range by 10m. Additionally, friendly units within a 20m radius around the building will deal 20% more damage. Lasts until unit leaves the building again. After 15 seconds the unit can be ordered to leave the seized building again whereupon she will exit it with her life points restored and all buffs and debuffs removed.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Bandit Sorceress (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Human Wizard",
        counter = "S",
        size = "M",
        damage = {550, 550, 550, 550},
        health = {470, 470, 470, 470},
        upgrade_locations = {
            "Convoy", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Bandit Sphere",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit blasts a magic sphere that deals 44 damage to enemies in a 10m radius around its target, up to 66 in total.",
                values = nil
            }, {
                name = "Blessed Installation",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to send the unit into a building. The unit is able to enter any friendly building where she will use her magical abilities in order to increase the seized building's attack range by 10m. Additionally, 30% less damage will be dealt to the building. Lasts until unit leaves the building again. After 15 seconds the unit can be ordered to leave the seized building again whereupon she will exit it with her life points restored and all buffs and debuffs removed.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Bandit Spearmen (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "M",
        size = "S",
        damage = {900, 900, 900, 900},
        health = {810, 810, 810, 810},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Partisans",
                type = "Toggle",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Active to make unit deal 30% more damage against ranged enemies.It will then deal 30% less damage against close-combat opponents,though. Attacked targets can only move at walk speed for 10s. Last until deactivated.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Bandit Spearmen (Frost)"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "M",
        size = "S",
        damage = {900, 900, 900, 900},
        health = {810, 810, 810, 810},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Partisans",
                type = "Toggle",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Active to make unit deal 30% more damage against close-combat opponents.It will then deal 30% less damage against ranged enemies ,though. Attacked targets can only move at walk speed for 10s. Last until deactivated.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Bandit Stalker (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Beast Soldier",
        counter = "Special",
        size = "M",
        damage = {750, 750, 750, 750},
        health = {660, 660, 660, 660},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Piercing",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "25% of all damage dealt by this unit cannot be warded off with the help of damage reducing abilities because it is able to circumvent every buff or protective shield. It additionally deals 100% more damage against Beast creatures.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Bandit Stalker (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Beast Soldier",
        counter = "Special",
        size = "M",
        damage = {750, 750, 750, 750},
        health = {660, 660, 660, 660},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Piercing",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "50% of all damage dealt by this unit cannot be warded off with the help of damage reducing abilities because it is able to circumvent every buff or protective shield.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Banditos (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "S",
        size = "S",
        damage = {660, 660, 660, 660},
        health = {690, 690, 690, 690},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = " Blessed Alliance",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The unit will be incited to deal more damage when being surrounded by hostile units within a 25m radius. Per every 3 hostile ground units around them Banditos will deal 50% more damage up to a maximum of 9 units that will spur them on.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Banditos (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "S",
        size = "S",
        damage = {660, 660, 660, 660},
        health = {690, 690, 690, 690},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Alliance",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The unit will be incited to deal more damage when being surrounded by friendly units within a 25m radius. Per every 3 friendly ground units around them Banditos will deal 50% more damage up to a maximum of 9 units that will spur them on.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Banner of Glory"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Shrine",
        health = {500, 500, 500, 500},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Glorious Death",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Friendly units that die within a 25m radius of the banner immediatly return 15% of their original power costs into the power pool. The remaining power costs are granted as void power.",
                values = nil
            }
        }
    },
    ["Batariel (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Fire", "Fire"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Demon Destroyer",
        counter = "XL",
        size = "XL",
        damage = {3460, 3640, 4000, 4400},
        health = {5000, 5000, 5000, 5000},
        upgrade_locations = {
            "Empire", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gates of Hell",
                type = "Active",
                upgrade_dependency = 0,
                cost = 0,
                description = "Activate to smash Batariel's giant mace onto ground dealing 800 damage to enemies in a 10m radius, up to 2400 in total. The impact will crack open the ground allowing an enormous cleft to emerge that will erupt fountains of red-hot lava after 5 seconds. The lava fountains deal %s damage to nearby enemies, up to %s in total. Reusable every 30 seconds. Affects ground targets only.",
                values = {{1720, 1820, 2000, 2200}, {5160, 5460, 5900, 6300}}
            }, {
                name = "Infused Purgatory",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 120,
                description = "Unit gets easily enraged in battle and starts to burn if it deals at least 1000 damage. It will thus incinerate enemies in a 25m radius around it who take 100 damage per second. The longer it burns the more damage it will eventually deal to surrounding enemies. But if there is no damage dealt for 4 seconds the flames will abate again.",
                values = nil
            }
        }
    },
    ["Batariel (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Fire", "Fire"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Demon Destroyer",
        counter = "XL",
        size = "XL",
        damage = {3460, 3640, 4000, 4400},
        health = {5000, 5000, 5000, 5000},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gates of Hell",
                type = "Active",
                upgrade_dependency = 0,
                cost = 0,
                description = "Activate to smash Batariel's giant mace onto ground dealing 800 damage to enemies in a 10m radius, up to 2400 in total. The impact will crack open the ground allowing an enormous cleft to emerge that will erupt fountains of red-hot lava after 5 seconds. The lava fountains deal %s damage to nearby enemies, up to %s in total. Reusable every 30 seconds. Affects ground targets only.",
                values = {{1720, 1820, 2000, 2200}, {5160, 5460, 5900, 6300}}
            }, {
                name = "Tainted Purgatory",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 120,
                description = "Unit gets easily enraged in battle and starts to burn if it deals at least 1250 damage. It will thus incinerate its environment at first dealing 100 damage to units in a 25m radius around it. But the longer it burns the more dangerous it will eventually get and burn away enemies' armor: affected enemies will then take increasingly more damage. But if there is no damage dealt for 4 seconds the flames will abate again.",
                values = nil
            }
        }
    },
    Battleship = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Neutral", "Neutral"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Artifact Dominator",
        counter = "L",
        size = "XL",
        damage = {3200, 3200, 3200, 3200},
        health = {4350, 4350, 4350, 4350},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Cannon Turrets",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, 4 turrets deal 80 damage each to enemies in 5m radius, up to 120 total.",
                values = nil
            }, {
                name = "Barrage",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to release 5 shots each shot dealing 420 damage to enemies in 12 radius, up to 2500 in total. Knocks back small units. Only affects ground targets. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Befallen's Curse (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 0,
        class = "Spell",
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Disease",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infects the targeted friendly or hostile unit with a weakening disease: it loses 18 life points per second and can neither be healed nor buffed while being ill. The disease is highly infectious and may also spread among surrounding units. Every friendly or hostile unit within a 8m radius around the befallen will also catch the disease and may once again infect other surrounding units as well. Every affected target will suffer for at least 20 from the disease. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Befallen's Curse (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 0,
        class = "Spell",
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Disease",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infects the targeted friendly or hostile unit with a weakening disease: it loses 18 life points per second and deals 25% less damage. The disease is highly infectious and may also spread among surrounding units. Every friendly or hostile unit within a 8m radius around the befallen will also catch the disease and may once again infect other surrounding units as well. Every affected target will suffer for at least 20 from the disease. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Blaster Cannon (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {60, 60, 60, 60},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1300, 1300, 1300, 1300},
        health = {870, 870, 870, 870},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Baneful Bolts",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, cannon blasts bolts that deal 208 damage to enemies in a 5m radius around its target, up to 312 in total. Affects air targets only.",
                values = nil
            }, {
                name = "Infused rage",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Building does increasingly more damage the longer it attacks but falls back to its original damage output if it doesn't shoot for 10 seconds.",
                values = nil
            }
        }
    },
    ["Blaster Cannon (Shadow)"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {60, 60, 60, 60},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1300, 1300, 1300, 1300},
        health = {870, 870, 870, 870},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Baneful Bolts",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, cannon blasts bolts that deal 208 damage to enemies in a 5m radius around its target, up to 312 in total. Affects air targets only.",
                values = nil
            }, {
                name = "Tainted Magma",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Building is surrounded by a magmatic aura that deals 25 damage to all enemies within a 15m radius every 2 seconds.",
                values = nil
            }
        }
    },
    ["Blood Healing"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Soul Sacrifice",
                type = nil,
                upgrade_dependency = 0,
                description = "Targeted own unit loses 250 life points and in turn heals friendly units within a 15m radius around it for up to 860 life points in total every second. Lasts for 10 seconds or until target dies. The target unit cannot be healed while under the influence of this spell. Reusable every 5 seconds.",
                values = nil
            }
        }
    },
    ["Bloodhorn (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow", "Fire", "Neutral", "Neutral"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "XL",
        size = "XL",
        damage = {4700, 4700, 4700, 4700},
        health = {5000, 5000, 5000, 5000},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Stampede",
                type = "Active",
                upgrade_dependency = 0,
                cost = 120,
                description = "Activate to rush towards the target dealing 200 damage to enemies along the way, up to 9000 in total.",
                values = nil
            }, {
                name = "Infused Purge",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to rid Bloodhorn of all debuff but its own life points are immediately reduced by 1500. It will be immune against all major debuffs for 15 seconds afterwards. Cannot be used anymore once life points have been reduced below 1500. Reusable every 30 seconds.",
                values = nil
            }, {
                name = " Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Bloodhorn (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow", "Fire", "Neutral", "Neutral"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "XL",
        size = "XL",
        damage = {4700, 4700, 4700, 4700},
        health = {5000, 5000, 5000, 5000},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Stampede",
                type = "Active",
                upgrade_dependency = 0,
                cost = 120,
                description = "Activate to rush towards the target dealing 200 damage to enemies along the way, up to 9000 in total.",
                values = nil
            }, {
                name = "Tainted Enrage",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to put Bloodhorn in a murderous frenzy. The unit will deal 100% more damage for 15 seconds but its own life points are immediately reduced by 1500. Cannot be used anymore once life points have been reduced below 1500. Reusable every 30 seconds.",
                values = nil
            }, {
                name = " Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    Bloodthirst = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Fire", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Slave Master", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Mania",
                type = nil,
                upgrade_dependency = 0,
                description = "Target unit starts to regenerate 150 life points every second for 10 seconds per every 1200 damage it deals. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Boom Brothers"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Goblin/Ogre Soldier",
        counter = "XL",
        size = "L",
        damage = {2800, 2800, 2800, 2800},
        health = {2000, 2000, 2000, 2000},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "BOOM",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to fire a flaming cannon ball that deals 850 to enemies in a coneshaped area, up to 2100 in total. Affects ground targets only. Knocks back all unit sizes. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Brannoc = {
        description = "Master of the Forge and father of Viridya",
        type = "Unit",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Skylord of Fire",
        counter = "XL",
        size = "XL",
        damage = {4000, 4000, 4000, 4000},
        health = {3400, 3570, 3780, 4100},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Power of the Forge",
                type = "Active",
                upgrade_dependency = 0,
                cost = 0,
                description = "Activate to release the fire of the Forge: a burning aura surrounds Brannoc that deals 50 damage per second to every enemy within a 25m radius. Lasts for 2 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Breeding Grounds"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Hut",
        health = {1200, 1200, 1200, 1200},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Magic Link",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Building is surrounded by a magical zone of 25m radius where summoning friendly units requires 15% less of the usual power costs.",
                values = nil
            }
        }
    },
    ["Burrow Ritual (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Tunneling",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a Portal that transfers up to 5 own units in a 20m radius to the Tunnel Exit. Every transferred unit will additionally deal 30% more damage for 20 seconds.  Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Burrow Ritual (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Tunneling",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a Portal that transfers up to 5 own units in a 20m radius to the Tunnel Exit. Every transferred unit will additionally regenerate 2% of its maximum life points every second for 10 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Burrower = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Beast Destroyer",
        counter = "Special",
        size = "M",
        damage = {820, 820, 820, 820},
        health = {710, 710, 710, 710},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Acid Spit",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to knock enemy units off walls. Affected wall segments cannot be mounted again for 15 seconds. Deals 850 damage to walls and 30 damage to units. Additionally the damage bonus against structures applies as well. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Tunneling",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to teleport to the Tunnel Exit (if it exists). Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Cannon Tower"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Neutral"},
        power_cost = {70, 70, 70, 70},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1380, 1380, 1380, 1380},
        health = {2000, 2000, 2000, 2000},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Cannon",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower launches a cannon ball that deals 140 damage to enemies in a 8m radius around its target, up to 210 in total. Knocks back small units. Affects ground targets only.",
                values = nil
            }
        }
    },
    ["Church of Negation"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        health = {2000, 2000, 2000, 2000},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Mass Disintegration",
                type = "Active",
                upgrade_dependency = 0,
                description = "Disintegrates up to 6 targets simultaneously over time. Target units will be paralyzed during disintegration and cannot be attacked by other units. If the spell is interrupted prematurely the targets will be released unharmed. When disintegrating more than 1 target at the same time the spell will apply an increasing damage on the fortress that gets more harmful the more targets it affects.",
                values = nil
            }
        }
    },
    ["Cluster Explosion (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Neutral", "Neutral"},
        power_cost = {200, 200, 200, 200},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare Shard", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Burst",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "A heavy explosion deals initially 117 damage to enemies in a 25m radius, up to 351 in total. At the position of every damaged entity a second wave of explosions will be triggered, each having a smaller radius and dealing less damage than the first (roughly -50% radius per wave). This way up to 2 consecutive waves of powerful explosions following the initial one can be triggered at the positions of before damaged enemies. Affects ground targets only. Knocks back small and medium units. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Cluster Explosion (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Neutral", "Neutral"},
        power_cost = {200, 200, 200, 200},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Burst",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "A heavy explosion deals initially 117 damage to enemies in a 20m radius, up to 351 in total. At the position of every damaged entity a second wave of explosions will be triggered, each having a smaller radius and dealing less damage than the first (roughly -33% radius and -13.5% damage per wave). This way up to 4 consecutive waves of increasingly smaller explosions following the initial one can be triggered at the positions of before damaged enemies. Affects ground targets only. Knocks back small and medium units. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Coldsnap = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Area Freeze",
                type = nil,
                upgrade_dependency = 0,
                description = "Freezes up to 5 enemies in a 20m radius for 15 seconds. After freeze wears off, targets are immune against Freeze for 10 seconds. Reusable every 20 seconds",
                values = nil
            }
        }
    },
    Colossus = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Nature", "Neutral"},
        power_cost = {280, 280, 280, 280},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "XL",
        size = "XL",
        damage = {5820, 5820, 5820, 5820},
        health = {5000, 5000, 5000, 5000},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Thunderous Roar",
                type = "Active",
                upgrade_dependency = 0,
                description = "Releases a bloodcurdling roar that prevents enemies within a 20m radius from using their special abilities for 10 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Comet Catcher"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Fire", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        health = {5000, 5000, 5000, 5000},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Fiery Comet",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to hurl a large comet that deals 2150 damage to enemies in a 15m radius around their target, up to 13000 in total. Has an extremely long range of 200m but can only fire into an area where at least one other friendly ground entity is postitioned. Knocks back small, medium and large units. Has a 30 seconds cool-down after the weapon was built. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Commandos (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Ranged",
        charges = 20,
        squadsize = 6,
        class = "Human Archers",
        counter = "M",
        size = "S",
        damage = {660, 660, 660, 660},
        health = {582, 582, 582, 582},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = " Crossbow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every second*, unit fires bolts at enemies that deal 11 damage.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }, {
                name = "Concentrate",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain:",
                values = nil
            }, {
                name = "Blessed Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit concentrates on stealing the life of its opponents: 50% of the damage dealt will be added to its life points. It will additionally take 25% less damage from ranged or magical attacks and cannot be knocked back.",
                values = nil
            }
        }
    },
    ["Commandos (Shadow)"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Ranged",
        charges = 20,
        squadsize = 6,
        class = "Human Archers",
        counter = "M",
        size = "S",
        damage = {660, 660, 660, 660},
        health = {582, 582, 582, 582},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = " Crossbow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every second*, unit fires bolts at enemies that deal 11 damage.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }, {
                name = "Concentrate",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain:",
                values = nil
            }, {
                name = "Tainted Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit concentrates on stealing the life of its opponents: 50% of the damage dealt will be added to its life points. It will additionally deal 50% more damage against Humans and cannot be knocked back.",
                values = nil
            }
        }
    },
    Construct = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Ancient Destroyer",
        counter = "Special",
        size = "XL",
        damage = {3100, 3100, 3100, 3100},
        health = {5300, 5300, 5300, 5300},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Arcane Turret",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 5 seconds, unit fires a ball of energy that deals 690 damage to enemies in a 10m radius around its target, up to 1030 in total. Knocks back small, medium, large and extra large units. Affects ground targets only.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Construct (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral", "Neutral", "Neutral"},
        power_cost = 250,
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Ancient Destroyer",
        counter = "Special",
        size = "XL",
        damage = 4050,
        health = 5300,
        abilities = {
            {
                name = "Arcane Turret",
                type = "Autocast",
                description = "Every 5 seconds, unit fires a ball of energy that deals 890 damage to enemies in a 10m radius around its target, up to 1350 in total. Knocks back small, medium, large and extra large units. Affects ground targets only."
            }, {
                name = "Siege",
                type = "Passive",
                description = "Deals 50% more damage against structures."
            }
        }
    },
    ["Construction Hut"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Hut",
        health = {1120, 1120, 1120, 1120},
        upgrade_locations = {
            "Defending Hope", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Maintenance",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Friendly buildings in a 25m radius will be constructed 50% faster and will require 25% less power cost.",
                values = nil
            }
        }
    },
    ["Core Dredge (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {225, 225, 225, 225},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Ancient Dominator",
        counter = "Special",
        size = "XL",
        damage = {2240, 2240, 2240, 2240},
        health = {2700, 2700, 2700, 2700},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Crushed Ice",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit hurls an icy shard that deals 186 damage to enemies in a 10m radius around its target, up to 280 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Earth Dive",
                type = "Passive",
                upgrade_dependency = 0,
                description = "While moving around unit takes 50% less damage and knocks back small and medium units dealing additionally 175 damage to enemy units in target area, up to 700 in total. Affects ground targets only.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Core Dredge (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {225, 225, 225, 225},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Ancient Dominator",
        counter = "Special",
        size = "XL",
        damage = {2240, 2240, 2240, 2240},
        health = {2700, 2700, 2700, 2700},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Crushed Ice",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit hurls an icy shard that deals 186 damage to enemies in a 10m radius around its target, up to 280 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Earth Dive",
                type = "Passive",
                upgrade_dependency = 0,
                description = "While moving around unit takes 50% less damage and knocks back small and medium units dealing additionally 175 damage to enemy units in target area, up to 700 in total. Affects ground targets only.",
                values = nil
            }, {
                name = "Shatter Ice",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Deals 25% more damage against frozen creatures.",
                values = nil
            }
        }
    },
    ["Corpse Explosion"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Explosive Bodies",
                type = nil,
                upgrade_dependency = 0,
                description = "Gathers up to 2000 life points from corpses within a 25m radius to create a huge Nether sphere that explodes after 3 seconds dealing the corpses former maximum life points as area damage to hostile and friendly entities. Up to 33% of the gathered life points are dealt as damage per target. Affects ground targets only. Knocks back small and medium units. Immediately reusable.",
                values = nil
            }
        }
    },
    ["Corsair (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Artifact Destroyer",
        counter = "Special",
        size = "XL",
        damage = {3000, 3000, 3000, 3000},
        health = {2100, 2100, 2100, 2100},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Big fat Cannon",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 9 seconds, the ship's main cannon fires two huge cannon balls that both deal 360 damage to enemies in a 15m radius, up to 540 in total. Knocks back small and medium units. Affects ground targets only.",
                values = nil
                --    }, {
                --         name = "Flank Attack",
                --         type = "Autocast",
                --          upgrade_dependency = 0,
                --         description = "Every 2 seconds, 4 smaller cannons at the ship's flank shoot independently. Every one deals 25 damage to enemies in a 5m radius, up to 38 in total."--,
                --       values = nil
            }, {
                name = "Gifted Assistance",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to commit 3 squads of Banditos (Nature Affinity) below the ship. Banditos have the same upgrade level as the unit itself. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Inspirational Call",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit is surrounded by an inspiring aura of 20m radius that enables friendly human units within it to deal 30% more damage",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Corsair (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Artifact Destroyer",
        counter = "Special",
        size = "XL",
        damage = {3000, 3000, 3000, 3000},
        health = {2100, 2100, 2100, 2100},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Big fat Cannon",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 9 seconds, the ship's main cannon fires two huge cannon balls that both deal 360 damage to enemies in a 15m radius, up to 540 in total. Knocks back small and medium units. Affects ground targets only.",
                values = nil
                --}, {
                --  name = "Flank Attack",
                --   type = "Autocast",
                --   upgrade_dependency = 0,
                --   description = "Every 2 seconds, 4 smaller cannons at the ship's flank shoot independently. Every one deals 25 damage to enemies in a 5m radius, up to 38 in total.",
                --     values = nil
            }, {
                name = "Tainted Assistance",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to commit 2 squads of Commandos (Shadow Affinity) below the ship. Commandos have the same upgrade level as the unit itself. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Inspirational Call",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit is surrounded by an inspiring aura of 20m radius that enables friendly human units within it to deal 30% more damage",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Creeping Paralysis"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Entrance",
                type = nil,
                upgrade_dependency = 0,
                description = "After a preparation time of 5 seconds up to 5 enemies within a 15m radius will be paralyzed for 10 seconds. After the effect wears off, targets are immune against Paralyze for a while. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Crystal Fiend (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Nature"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Elemental Supporter",
        counter = "Special",
        size = "M",
        health = {400, 400, 400, 400},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Use it well",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 2.5 seconds, unit is able to cast a regenerative spell upon friendly units that lasts for 10 seconds and restores 26 life points per second, up to 260 in total. Affected units will additionally take 20% less damage. On each target unit the spell may only be applied once at a time.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Crystal Fiend (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Nature"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Elemental Supporter",
        counter = "Special",
        size = "M",
        health = {400, 400, 400, 400},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Use it well",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 2.5 seconds, unit is able to cast a regenerative spell upon friendly units that lasts for 10 seconds and restores 26 life points per second, up to 260 in total. Affected units will additionally take 20% less damage. On each target unit the spell may only be applied once at a time.",
                values = nil
            }, {
                name = "Gifted Regeneration",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit constantly regenerates 30 life points per second.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Cultist Master"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Spirit Wizard",
        counter = "M",
        size = "M",
        damage = {700, 700, 700, 700},
        health = {700, 700, 700, 700},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Dark Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit casts a dark bolt that deals 70 damage to enemies in a 5m radius around its target, up to 110 in total.",
                values = nil
            }, {
                name = "Call Horrors",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to summon 1 Nightcrawler with Frenzy enabled. Nightcrawler has the same upgrade level as the unit itself. Every summoning will reduce own life points by 400. Cannot be used anymore once life points have been reduced below 400. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Curse Orb"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = {165, 165, 165, 165},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Out of Order",
                type = nil,
                upgrade_dependency = 0,
                description = "Disables a hostile orb for 15 seconds. Only usable if the target player has at least 2 active orbs available. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Curse Well"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = {160, 160, 160, 150},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Spell",
        size = "Spell",
        upgrade_locations = {
            "Nightmare's End", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Deconstruction",
                type = nil,
                upgrade_dependency = 0,
                description = "Destroy a target hostile Power Well.Afterwards, the affected well can not be claimed and rebuilt for 15s by any player .Reusable every 30s.",
                values = nil
            }
        }
    },
    ["Curse of Oink"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Oink!",
                type = nil,
                upgrade_dependency = 0,
                description = "Transforms up to 5 enemy units into pigs for 15 seconds. Affected units may neither move nor attack. After 5 seconds they will be retransformed if being attacked. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Dark Crystal"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Device",
        size = "Building",
        health = {680, 680, 680, 680},
        upgrade_locations = {
            "Nightmare Shard", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Shadow Affinity",
                type = "Active",
                upgrade_dependency = 0,
                description = "Active to decompose those have an affinity towards Shadow: every own unit endowed with a Shadow affinity will immediately return 50% of the usual power refund into the actual power pool upon dying.Lasts for 20s or crystal is destroyed.",
                values = nil
            }
        }
    },
    ["Darkelf Assassins"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 6,
        class = "Dark Elf Archers",
        counter = "S",
        size = "S",
        damage = {570, 570, 570, 570},
        health = {450, 450, 450, 450},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Bow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2,5 second, unit fires arrows at enemies that deal 12 damage.",
                values = nil
            }, {
                name = "Unholy Trance",
                type = "Active",
                upgrade_dependency = 0,
                description = "Unit becomes immobile and deals 16 damage for 10 seconds. After the effect wears off unit will still be immobile and unable to attack for another 20 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Death Ray"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Shadow", "Neutral"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Artifact Dominator",
        counter = "XL",
        size = "XL",
        damage = {4000, 4000, 4000, 4000},
        health = {3000, 3000, 3000, 3000},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Necro Beam",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit fires a deadly ray that deals 550 damage to enemies in a 15m radius around its target, up to 830 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Leech Guns",
                type = "Active",
                upgrade_dependency = 0,
                description = "Brings 4 turrets into action that each drain 100 life points from own units in range every second. A total of 3000 life points can be stored at once. As long as the stored life points last unit deals 50% more damage. Leeching will go on until deactivated.",
                values = nil
            }
        }
    },
    ["Deathglider (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Demon Corruptor",
        counter = "S",
        size = "M",
        damage = {430, 430, 430, 430},
        health = {380, 380, 380, 380},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Shriek",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, unit delivers a bloodcurdling scream that deals 52 damage to enemies in a 10m radius, up to 78 in total. What is more, this horrifying shriek is able to knock back small units.",
                values = nil
            }, {
                name = "Twilight Infection",
                type = "Active",
                upgrade_dependency = 0,
                description = "Infects an own unit with the Twilight Curse: the target will be endowed with the gift of Transformation. It can then transform at will into any other Twilight creature in the current deck whose orb requirements are met. Deathglider will die while infusing the Twilight Curse into the target.",
                values = nil
            }
        }
    },
    ["Deathglider (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Demon Corruptor",
        counter = "S",
        size = "M",
        damage = {430, 430, 430, 430},
        health = {380, 380, 380, 380},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Shriek",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, unit delivers a bloodcurdling scream that deals 52 damage to enemies in a 10m radius, up to 78 in total. What is more, this horrifying shriek is able to knock units off walls. The affected wall cannot be mounted again for 4 seconds.",
                values = nil
            }, {
                name = "Twilight Infection",
                type = "Active",
                upgrade_dependency = 0,
                description = "Infects an own unit with the Twilight Curse: the target will be endowed with the gift of Transformation. It can then transform at will into any other Twilight creature in the current deck whose orb requirements are met. Deathglider will die while infusing the Twilight Curse into the target.",
                values = nil
            }
        }
    },
    Decomposer = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Hut",
        health = {1000, 1000, 1000, 1000},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Shred them!",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to decompose an own unit returning immediately 30% of the usual power refund into the power pool. The remaining part of the power cost refund is granted as void power. Immediately reusable.",
                values = nil
            }
        }
    },
    ["Deep One (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "L",
        damage = {1650, 1650, 1650, 1650},
        health = {1300, 1300, 1300, 1300},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Catch",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to teleport any targeted hostile unit within a 30m radius to the caster. The target unit will then be rooted to the ground for 12 seconds. Rooted units are immobile but may still use ranged attacks and special abilities. After the effect wears off, targets are immune against Root for a while. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Tunneling",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to teleport to the Tunnel Exit (if it exists). Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Deep One (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "L",
        damage = {1650, 1650, 1650, 1650},
        health = {1300, 1300, 1300, 1300},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Catch",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to teleport any targeted hostile unit within a 30m radius to the caster. The target unit will then be weakened and deal 25% less damage for 12 seconds.  Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Tunneling",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to teleport to the Tunnel Exit (if it exists). Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Deepcoil Worm"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Beast Destroyer",
        counter = "Special",
        size = "XL",
        damage = {2730, 2730, 2730, 2730},
        health = {2300, 2300, 2300, 2300},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Volatile Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, units spits a volatile substance that deals 330 damage to enemies in a 10m radius around its target, up to 490 in total. Knocks back small and medium units. Deals 50% more damage against structures.",
                values = nil
            }, {
                name = "Earth Dive",
                type = "Passive",
                upgrade_dependency = 0,
                description = "While moving around unit takes 50% less damage and knocks back small and medium units dealing additionally 250 damage to enemy units in target area, up to 1000 in total. Affects ground targets only.",
                values = nil
            }, {
                name = "Drill Tunnel",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Maw of the Depths",
                values = nil
            }, {
                name = "Maw of the Depths",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit will function as tunnel enter or exit point granting friendly units access to the tunnel network. As long as it functions as a tunnel unit will take 50% less damage.",
                values = nil
            }
        }
    },
    ["Deepfang (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Nature"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Elemental Dominator",
        counter = "L",
        size = "XL",
        damage = {3000, 3000, 3000, 3000},
        health = {2370, 2370, 2370, 2370},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Icefire",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit releases a fiery stream that deals 150 damage to enemies every second.",
                values = nil
            }, {
                name = "Infused Union",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 50,
                description = "Activate to deal 50 damage to enemies within a 20m radius, up to 300 in total. Knocks back small, medium and large units. Also creates an attack zone of 20m radius that allows Deepfang and its Critters to deal 50% more damage. At least one Critter needs to be nearby. Lasts for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Stonekin Critter",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit is spawned with 2 adherers that will follow it loyally and that can be sacrificed in order to restore its life points.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Deepfang (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Nature"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Elemental Dominator",
        counter = "L",
        size = "XL",
        damage = {3000, 3000, 3000, 3000},
        health = {2370, 2370, 2370, 2370},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Icefire",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit releases a fiery stream that deals 150 damage to enemies every second.",
                values = nil
            }, {
                name = "Gifted Union",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 50,
                description = "Activate to throw out toxic saliva poisoning the area: every enemy within a 20m radius will take 50 damage per second. At least one critter needs to be nearby (within 20m). Lasts for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Stonekin Critter",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit is spawned with 2 adherers that will follow it loyally and that can be sacrificed in order to restore its life points.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Deepgorge (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Nature", "Nature"},
        power_cost = {225, 225, 225, 225},
        charges = 4,
        squadsize = 0,
        class = "Fortress",
        damage = {3000, 3000, 3000, 3000},
        health = {4650, 4650, 4650, 4650},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ether Eruption",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, building emits etherial lava that deals 480 damage to enemies in 10m radius, up to 720 in total. Knocks back small and medium units. ",
                values = nil
            }, {
                name = "Infused Cold Clutch",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Building is surrounded by a chilling aura of 20m radius that freezes every enemy unit after 7 seconds within it for 10 seconds. What is more, the building is able to ignore the usual damage reduction of frozen enemies and will deal its full damage against them. The targets will then be immune against freezing attacks for 10 seconds.",
                values = nil
            }, {
                name = "Adamant Alloy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The building takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Deepgorge (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Nature", "Nature"},
        power_cost = {225, 225, 225, 225},
        charges = 4,
        squadsize = 0,
        class = "Fortress",
        damage = {3000, 3000, 3000, 3000},
        health = {4650, 4650, 4650, 4650},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ether Eruption",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, building emits etherial lava that deals 480 damage to enemies in 10m radius, up to 720 in total. Knocks back small and medium units. ",
                values = nil
            }, {
                name = "Blessed Cold Clutch",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Building is surrounded by an ice-cold aura of 20m radius that freezes every enemy unit immediately upon entering it for 10 seconds. The targets will then be immune against freezing attacks for 10 seconds.",
                values = nil
            }, {
                name = "Adamant Alloy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The building takes 15% less damage.",
                values = nil
            }
        }
    },
    Defenders = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Ranged",
        charges = 20,
        squadsize = 6,
        class = "Human Archers",
        counter = "L",
        size = "S",
        damage = {540, 540, 540, 540},
        health = {630, 630, 630, 630},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Crossbow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit fires bolts at enemies that deal 9 damage.",
                values = nil
            }, {
                name = "Stand Ground",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Resilient, Steadfast",
                values = nil
            }, {
                name = "Resilient",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Takes 40% less damage",
                values = nil
            }, {
                name = "Steadfast",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Cannot be knocked back.",
                values = nil
            }
        }
    },
    ["Defense Tower"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {50, 50, 50, 50},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {640, 640, 640, 640},
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Frost Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower hurls a frostly bolt that deals 50 damage to enemies in a 5m radius around its target, up to 75 in total.",
                values = nil
            }
        }
    },
    ["Disenchant (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Neutral"},
        power_cost = {90, 90, 90, 80},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Remove Magic",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Immediately removes all buffs from a hostile or all debuffs from a friendly unit. Will also revert all status effects like Freeze or Paralyze when casted on a friendly unit. Hostile units will be insensitive to all major buffs for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Disenchant (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Neutral"},
        power_cost = {90, 90, 90, 80},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Remove Magic",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Immediately removes all buffs from a hostile or all debuffs from a friendly unit. Will also revert all status effects like Freeze or Paralyze when casted on a friendly unit. Hostile units will be insensitive to all major buffs for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Dreadcharger = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "S",
        size = "M",
        damage = {600, 600, 600, 600},
        health = {520, 550, 600, 660},
        upgrade_locations = {
            "The Treasure Fleet", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "The Reaping",
                type = "Active",
                upgrade_dependency = 1,
                description = "Activate to sacrifice an own unit in order to gain the victim's lifepoints as extra strength. A total of 1000 lifepoints can be stored at once. As long as the lifepoints last unit deals 100% more damage and takes 100% less damage (stored lifepoints decrease equal to damage that would have been taken). Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Stomp",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Tramples small units.",
                values = nil
            }
        }
    },
    Dreadnought = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Frost", "Frost"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Giant Crusader",
        counter = "XL",
        size = "XL",
        damage = {4100, 4100, 4100, 4100},
        health = {6100, 6100, 6100, 6100},
        upgrade_locations = {
            "Bad Harvest", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Pledge of the Giants",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Shared Pain",
                values = nil
            }, {
                name = "Shared Pain",
                type = "Passive",
                upgrade_dependency = 0,
                description = "All friendly units in a 25m radius take only 20% damage. 75% of the remaining damage is absorbed while the rest will be transferred to the caster.",
                values = nil
            }
        }
    },
    Drones = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 4,
        class = "Beast Soldiers",
        counter = "L",
        size = "M",
        damage = {1560, 1560, 1560, 1560},
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tunneling",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to teleport to the tunnel exit. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Dryad (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Spirit Wizard",
        counter = "Special",
        size = "M",
        damage = {455, 455, 455, 455},
        health = {500, 500, 500, 500},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Bedtime!",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Casts a fatiguing beam that makes the target unit fall asleep for 8 seconds after a short while. Sleeping units will awake after 3 seconds if being attacked. After Sleep wears off, target is immune against Sleep for 8 seconds.",
                values = nil
            }, {
                name = "Nature's Wrath",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enter this mode in order to enable the wrath of nature. Every 2 seconds, Dryad will then release the forces of nature to deal 35 damage to enemies in a 5m radius around the target, up to 55 in total.",
                values = nil
            }, {
                name = "Blessed Genius Loci",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Friendly units in 20m radius around Dryad take 25% less damage.",
                values = nil
            }
        }
    },
    ["Dryad (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Spirit Wizard",
        counter = "Special",
        size = "M",
        damage = {455, 455, 455, 455},
        health = {500, 500, 500, 500},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Bedtime!",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Casts a fatiguing beam that makes the target unit fall asleep for 8 seconds after a short while. Sleeping units will awake after 3 seconds if being attacked. After Sleep wears off, target is immune against Sleep for 8 seconds.",
                values = nil
            }, {
                name = "Nature's Wrath",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enter this mode in order to enable the wrath of nature. Every 2 seconds, Dryad will then release the forces of nature to deal 35 damage to enemies in a 5m radius around the target, up to 55 in total.",
                values = nil
            }, {
                name = "Gifted Genius Loci",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Friendly units in 20m radius around Dryad are immune against weakening abilities but may still be affected by spells like Freeze or Paralyze.",
                values = nil
            }
        }
    },
    ["Dying Breed (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 0,
        class = "Spell",
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Extinction",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Turns the target into a dying breed. The affected player may no longer play out any more cards of the same card as long as the target unit lives. Additionally, the targeted unit takes 50 damage every second. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Dying Breed (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 0,
        class = "Spell",
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Extinction",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Turns the target into a dying breed. The affected player may no longer play out any more cards of the same kind as long as the target unit lives. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Earth Crystal"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Device",
        size = "Building",
        health = {680, 680, 680, 680},
        upgrade_locations = {
            "The Soultree", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Nature Affinity",
                type = "Active",
                upgrade_dependency = 0,
                description = "Earth Crystal is a device with a global effect activated by a special ability; it heals all the owner's Gifted Affinity cards in the game for 30 seconds. Note that this ability targets cards with Gifted Affinity rather than cards requiring a Nature orb.",
                values = nil
            }
        }
    },
    ["Earthen Gift (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Nature", "Nature"},
        power_cost = {160, 160, 160, 160},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Enchantment",
        counter = "S",
        size = "S",
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Earth",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Supercharged spell that repairs and strengthens structures on a global scale. Every friendly structure in the current game will deal 30% more damage and restore 10% of its maximun life points per second, up to 4000 in total per structure. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Earthen Gift (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Nature", "Nature"},
        power_cost = {160, 160, 160, 160},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Enchantment",
        counter = "S",
        size = "S",
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Earth",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Supercharged spell that repairs structures on a global scale. Every friendly structure in the current game will restore 10% of its maximum life points per second, up to 4000 in total per structure. Every hostile building in the current game will deal 50% less damage. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Earthkeeper (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Elemental Supporter",
        counter = "M",
        size = "M",
        damage = {540, 540, 540, 540},
        health = {750, 750, 750, 750},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Backup",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to become immobile and absorb 50% of all damage done to the targeted friendly unit and allow it to deal 30% more damage. The absorbed damage is transferred to all own stonekin within a 40m radius of the target. The transferred damage can not be warded off by damage reducing abilities. Lasts for 30 seconds or until interrupted. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Earthkeeper (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Elemental Supporter",
        counter = "M",
        size = "M",
        damage = {540, 540, 540, 540},
        health = {750, 750, 750, 750},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Backup",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to become immobile and absorb all damage done to the targeted friendly unit. The absorbed damage is transferred to all own stonekin within a 40m radius of the target. The transferred damage can not be warded off by damage reducing abilities. Lasts for 30 seconds or until interrupted. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    Earthshaker = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Neutral", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Quake",
                type = nil,
                upgrade_dependency = 0,
                description = "Triggers 5 abrasions that each deal 475 damage to structures in a 15m radius, up to 1400 in total. Deals only minimal damage to units. Knocks back small, medium and large units. Affects ground targets only. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Easter Egg (Promo)"] = {
        description = "Happy Easter everyone!",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Neutral", "Neutral"},
        power_cost = 25,
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Egg",
        counter = "Special",
        size = "L",
        damage = 10,
        health = 100,
        abilities = {
            {
                name = "Egg Hunt",
                type = "Passive",
                description = "After 30 seconds the egg will break making everyone around happier!"
            }
        }
    },
    ["Eliminator (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "M",
        size = "M",
        damage = {780, 780, 780, 780},
        health = {675, 675, 675, 675},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Taming",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 50,
                description = "Activate to tame friendly demon and undead.Every Demon or Undead within a 20 m around Eliminator will then be able to focus better on their strength: they deal 30% more damage but also lose 10 life points per second. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Eliminator (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "M",
        size = "M",
        damage = {780, 780, 780, 780},
        health = {675, 675, 675, 675},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Taming",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 50,
                description = "Activate to tame friendly demon and undead.Every Demon or Undead within a 20 m around Eliminator will then be able to focus better on defending: they take 30% less damage but also lose 10 life points per second. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Embalmer's Shrine"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow"},
        power_cost = {30, 30, 30, 30},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1032, 1032, 1032, 1032},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Pick over the Bones",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to gain more life points from corpses. For the next 40 seconds all corpses in the current game will grant 170% more life points when being gathered. Has a 60 seconds cool-down after building was built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    Emberstrike = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Neutral", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "M",
        size = "L",
        damage = {3035, 3035, 3035, 3035},
        health = {1960, 1960, 1960, 1960},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Fire Lance",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to shoot a fire lance through enemies in a straight line, dealing 850 damage to enemies, up to 1300 in total. Resuable every 30 seconds.",
                values = nil
            }, {
                name = "Fiery Birth",
                type = "Passive",
                upgrade_dependency = 0,
                description = "When being spawned unit causes an explosion that deals 500 damage to enemy units in target area, up to 750 in total. Knocks back small and medium units. Affects ground units only.",
                values = nil
            }
        }
    },
    ["Energy Parasite"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Beast Corruptor",
        counter = "S",
        size = "M",
        damage = {520, 520, 520, 520},
        health = {300, 300, 300, 300},
        upgrade_locations = {"Sunbridge", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Power Shock",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit fires a power sphere that deals 41 damage to enemies in a 8m radius around its target, up to 62 in total. May only attack units.",
                values = nil
            }, {
                name = "Power Drain",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to drain 30 power from a power well and add it to the power pool. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Enforcer = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "M",
        size = "M",
        damage = {700, 700, 700, 700},
        health = {670, 670, 670, 670},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Charge",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit charges at enemies.",
                values = nil
            }
        }
    },
    Enlightenment = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Neutral"},
        power_cost = {270, 270, 270, 270},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Enchantment",
        counter = "S",
        size = "S",
        upgrade_locations = {"Empire", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Wish",
                type = nil,
                upgrade_dependency = 0,
                description = "Disable the card play requirements. One card played within the next 20 seconds will not require any orbs to be used. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Ensnaring Roots"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ensnare",
                type = nil,
                upgrade_dependency = 0,
                description = "Covers an area of 15m radius in roots that fetter enemies to the ground. Rooted units are immobile but still able to use ranged attacks and special abilities. Affects ground targets only. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Envenom (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Nature"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Intoxication",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infuses a strong poison in the targeted enemy unit whose life points will be reduced by 40 per second. The poison will be refreshed every time the target deals at least 80 damage. Otherwise it may decay after just 5 seconds. Lasts for 30 seconds.",
                values = nil
            }
        }
    },
    ["Envenom (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Nature"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Intoxication",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infuses a strong poison in the targeted enemy unit whose life points will be reduced by 23 per second. Lasts for 15 seconds. The damage dealt by this substance cannot be warded off with the help of damage reducing abilities because it is able to circumvent every buff or protective shield.",
                values = nil
            }
        }
    },
    ["Equilibrium (Frost)"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {125, 125, 125, 125},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Emergence Heal",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Releases a heal spell that will prove to be increasingly more powerful the more enemy units are positioned in the target area. Friendly units in a 25m radius will be healed for 450 life points per every 800 enemy life points surrounding them. There is a minimum heal amount of 1000 while up to 4500 life points can be restored in total. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Equilibrium (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {125, 125, 125, 125},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Harmonic Heal",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Releases a heal spell that will prove to be increasingly more powerful the more friendly units are positioned in the target area. Friendly units in a 25m radius will be healed for 450 life points per every 1200 friendly life points surrounding them. There is a minimum heal amount of 1000 while up to 4500 life points can be restored in total. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    Eruption = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Explosion",
                type = nil,
                upgrade_dependency = 0,
                description = "A heavy explosion deals 250 damage to enemies in a 10m radius around its target, up to 720 in total. Knocks back small units. Immediately reusable.",
                values = nil
            }
        }
    },
    ["Ethereal Storm (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {165, 165, 165, 165},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Shift",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Tears a hole in the barrier between the world of the living and the in-between. A storm will break loose that deals 34 damage to every unit within a 25m radius per second. The presence of a Revenant will deepen the hole and thus enforce the storm: if one Revenant is nearby, every unit within the storm additionally takes 20 more damage per second. More Revenants will further increase its effect. Lost Souls are generally immune to all damage dealt by the Ethereal Storm. Lasts for 21 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Ethereal Storm (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {165, 165, 165, 165},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Shift",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Tears a hole in the barrier between the world of the living and the in-between.A storm will break loose that deals 34 damage to every unit within a 25 m radius per second. The presence of a Revenant will deepen the hole and thus enforce the storm: if one Revenant is nearby, every unit within the storm additionally deal 20% less damage.More Revenants will further increase this effect. Lost Souls are generally immune to all damage dealt by the Ethereal Storm. Lasts for 21 seconds.Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Evocator's Woe (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Banishment",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Evokes a circle of relegation of 25m radius. In this circle nobody is able to play out any buildings or spells for 15sec. Reusable, every 20sec.",
                values = nil
            }
        }
    },
    ["Evocator's Woe (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare's End", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Banishment",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Evokes a circle of relegation of 25m radius. In this circle nobody is able to play out any units for 15sec. Reusable every 20sec.",
                values = nil
            }
        }
    },
    Executor = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "M",
        size = "M",
        damage = {600, 600, 600, 600},
        health = {520, 520, 520, 520},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Burnout",
                type = "Active",
                upgrade_dependency = 0,
                description = "Unit deals 30% more damage for 20 seconds. After the effect wears off unit will be weakened and deal 50% less damage for 40 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Fallen Skyelf"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Sky Elf Corrupter",
        counter = "L",
        size = "L",
        damage = {1400, 1400, 1400, 1400},
        health = {780, 780, 780, 780},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infernal Blade",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit casts a lance of infernal power that deals 100 damage to enemies in a 5m radius around its target, up to 150 in total.",
                values = nil
            }, {
                name = "Visions of Despair",
                type = "Active",
                upgrade_dependency = 0,
                description = "Significantly weakens an enemy unit. Target takes 150% more damage for 10 seconds. Spell will be interrupted if caster is knocked back or target moves out of range. If target is still alive after the spell ends it will be completely healed. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Fallen Skyelf (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = 100,
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Elf Corruptor",
        counter = "L",
        size = "L",
        damage = 1400,
        health = 1000,
        abilities = {
            {
                name = "Infernal Blade",
                type = "Autocast",
                description = "Every 2 seconds, unit casts a lance of infernal power that deals 100 damage to enemies in a 5m radius around its target, up to 150 in total."
            }, {
                name = "Visions of Despair",
                type = "Active",
                description = "Significantly weakens an enemy unit. Target takes 200% more damage for 15 seconds. Spell will be interrupted if caster is knocked back or target moves out of range. If target is still alive after the spell ends it will be completely healed. Reusable every 20 seconds."
            }
        }
    },
    ["Fathom Lord"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "XL",
        size = "L",
        damage = {2100, 2100, 2100, 2100},
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {"The Soultree", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Paralyze",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to paralyze target enemy for 15 seconds. After the effect wears off, target is immune against Paralyze for a while. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Fire Bomb"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Device",
        health = {850, 850, 850, 850},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Explosive",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Upon being destroyed, bomb explodes dealing 560 damage to enemies in a 20m radius around its target, up to 1300 in total. Knocks back small and medium units. Affects ground targets only.",
                values = nil
            }, {
                name = "Self-Destruct",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to trigger Detonation by destroying the bomb.",
                values = nil
            }
        }
    },
    ["Fire Dragon"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Fire", "Fire", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Dominator",
        counter = "XL",
        size = "XL",
        damage = {2150, 2150, 2150, 2150},
        health = {2400, 2400, 2400, 2400},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Fire Breath",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit exhales a stream of fire that deals 240 damage to enemies in a 35m radius around its target, up to 360 in total.",
                values = nil
            }, {
                name = "Rage",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit does increasingly more damage the longer it attacks but falls back to its original damage output if it doesn't fight for 10 seconds.",
                values = nil
            }
        }
    },
    ["Fire Sphere"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Fire", "Fire", "Neutral"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Massive Explosion",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a huge ball of fire that explodes after 10 seconds dealing 2240 damage to enemies in a 15m radius, up to 6730 in total. Knocks back small, medium and large units. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Fire Stalker"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Beast Soldier",
        counter = "L",
        size = "M",
        damage = {820, 820, 820, 820},
        health = {580, 580, 580, 580},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Inner Fire",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to gain: Unstable Ember, Siege",
                values = nil
            }, {
                name = "Unstable Ember",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 5 seconds, unit shoots a fiery bomb that explodes after 3 seconds dealing 80 damage to enemies in a 10m radius around its target, up to 120 in total. Knocks back small units. Affects ground targets only.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Fire Worm"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Neutral", "Neutral"},
        power_cost = {210, 210, 210, 210},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = {4800, 4800, 4800, 4800},
        health = {2100, 2100, 2100, 2100},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Fiery Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit hurls a magma ball that deals 480 damage to enemies in a 10m radius around its target, up to 720 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Earthquake",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to trigger a groundshaking quake that deals 850 damage to enemies every 2 seconds for 6 seconds. Knocks back small, medium and large units. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Percussive Birth",
                type = "Passive",
                upgrade_dependency = 0,
                description = "When being spawned unit knocks back small, medium and large units dealing additionally 500 damage to enemy units in target area, up to 2000 in total. Affects ground targets only.",
                values = nil
            }, {
                name = "Earth Dive",
                type = "Passive",
                upgrade_dependency = 0,
                description = "While moving around unit takes 50% less damage and knocks back small and medium units dealing additionally 250 damage to enemy units in target area, up to 1000 in total. Affects ground targets only.",
                values = nil
            }
        }
    },
    Firedancer = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Human Wizard",
        counter = "Special",
        size = "M",
        damage = {740, 740, 740, 740},
        health = {430, 430, 430, 430},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Pillar of Fire",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit casts a pillar of fire that deals 100 damage to enemies in a 5m radius around its target, up to 155 in total. Knocks back small units.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 75% more damage against structures.",
                values = nil
            }
        }
    },
    ["Firedancer (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire"},
        power_cost = 70,
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Human Wizard",
        counter = "Special",
        size = "M",
        damage = 740,
        health = 560,
        abilities = {
            {
                name = "Pillar of Fire",
                type = "Autocast",
                description = "Every 2 seconds, unit casts a lance of infernal power that deals 100 damage to enemies in a 5m radius around its target, up to 150 in total."
            }, {
                name = "Siege",
                type = "Passive",
                description = "Deals 150% more damage against structures."
            }
        }
    },
    ["Firesworn (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Fire"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Human Archer",
        counter = "Special",
        size = "M",
        damage = {660, 660, 660, 660},
        health = {440, 440, 440, 440},
        upgrade_locations = {"Mo", "Behind Enemy Lines", "Behind Enemy Lines"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Flash Burn",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds unit blasts fiery blaze that deals 105 damage to enemies in a 10m radius, up to 160 in total. Knocks back small units. Affects ground targets only.",
                values = nil
            }, {
                name = "Infused Big Shot",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to fire off a special shot at large creatures. It deals 350 damage to the target and weakens it in such a way as to make it take 30% more damage for 15 seconds. Only usable with large ground creatures. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Slaying Giants",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against large creatures.",
                values = nil
            }
        }
    },
    ["Firesworn (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Fire"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Human Archer",
        counter = "Special",
        size = "M",
        damage = {660, 660, 660, 660},
        health = {440, 440, 440, 440},
        upgrade_locations = {
            "Oracle", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Flash Burn",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds unit blasts fiery blaze that deals 105 damage to enemies in a 10m radius, up to 160 in total. Knocks back small units. Affects ground targets only.",
                values = nil
            }, {
                name = "Blessed Big Shot",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to fire off a special shot at large creatures. It deals 350 damage to the target and knocks back the target. Only usable with large ground creatures. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Slaying Giants",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against large creatures.",
                values = nil
            }
        }
    },
    ["Flame Crystal"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Device",
        size = "Building",
        health = {680, 680, 680, 680},
        upgrade_locations = {
            "The Treasure Fleet", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Fire Affinity",
                type = "Active",
                upgrade_dependency = 0,
                description = "missing",
                values = nil
            }
        }
    },
    ["Fleshbender (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Infection",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to spread the Twilight Curse on the entire map. Every unit played out within the next 20 seconds will be turned into Twilight Pest and spawned as a bug. They will initially deal 30% more damage for 20 seconds but will be retransformed to into their actual form after the effect wears off. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Fleshbender (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Infection",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to spread the Twilight Curse on the entire map. Every unit played out within the next 20 seconds will be turned into Twilight Pest and spawned as a bug. They will initially deal 30% less damage for 20 seconds but will be retransformed to into their actual form after the effect wears off. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Forest Elder (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Nature", "Nature"},
        power_cost = {325, 325, 325, 325},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = {4750, 4750, 4750, 4750},
        health = {6800, 6800, 6800, 6800},
        upgrade_locations = {"Ocean", "The Guns of Lyr", "The Guns of Lyr"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Forest's Charm",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to release the regenerative powers of the forest and surround the unit by a magical aura of 25m that heals friendly units within it. Every 2 seconds, up to 10 friendly units restore 88 life points each, up to 880 in total. Lasts for 20 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Flower Power",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit is surrounded by flowering meadows that strengthen friendly units within a 20m radius. They will fight on lightheartedly and deal 25% more damage while being near Forest Elder.",
                values = nil
            }
        }
    },
    ["Forest Elder (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Nature", "Nature"},
        power_cost = {325, 325, 325, 325},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = {4750, 4750, 4750, 4750},
        health = {6800, 6800, 6800, 6800},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Forest's Charm",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to release the regenerative powers of the forest and surround the unit by a magical aura of 25m that heals friendly units within it. Every 2 seconds, up to 10 friendly units restore 88 life points each, up to 880 in total. Lasts for 20 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Pest Plants",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit is surrounded by pestering weeds that poison enemy units within a 20m radius. They will lose 50 life points every second while being near Forest Elder.",
                values = nil
            }
        }
    },
    ["Forest's Vim (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Transfer",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infuses reviving powers into a root network. The entire root network that the targeted entity is a member of will regenerate 150 life points per second that are distributed among the individual members. Lasts for 13 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Forest's Vim (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Transfer",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infuses reviving powers into a root network. The target's life points will be reduced by 150 per second but they will also be multiplied and then distributed among the remaining members of the same network each regenerate 150 life points per second. What is more, the target will deal 50% more damage while its life points are being drained. Lasts for 13 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Forsaken = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 20,
        squadsize = 6,
        class = "Human Archers",
        counter = "M",
        size = "S",
        damage = {450, 450, 450, 450},
        health = {450, 450, 450, 450},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Crossbow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit fires bolts at enemies, that deal 6 damage.",
                values = nil
            }, {
                name = "Frenzy",
                type = "Active",
                upgrade_dependency = 0,
                description = "Unit deals 12 damage for 20 seconds. After the effect wears off unit will die.",
                values = nil
            }
        }
    },
    ["Fountain of Rebirth"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1300, 1300, 1300, 1300},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ritual of Rebirth",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to trigger a global heal spell. Every friendly unit in the current game will regenerate 20 life points every 2 seconds for 10 seconds. Has a 60 seconds cool-down after the weapon was built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Frenetic Assault (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Agression",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Bewitches the targeted hostile unit in such a way as to make it attract the aggression of all its allied units within a 20m radius. The surrounding allies will immiediately start to attack the target and no longer follow the player's commands. They are then confused in such a way as to be no longer able to distinguish between friend and foe and may also harm surrounding allies. The targeted unit may additionally only move at walk speed and cannot be healed. Lasts for 15 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Frenetic Assault (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare's End", "The Insane God", "The Insane God"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Agression",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Bewitches the targeted hostile unit in such a way as to make it attract the aggression of all its allied units within a 20m radius. The surrounding allies will immiediately start to attack the target and no longer follow the player's commands. They will be confused in such a way as to be no longer able to distinguish between friend and foe and may also harm surrounding allies. Additionally, nearby units are poisoned by this curse and thus lose 40 life points per second while surrounding the affected target. Lasts for 15 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Frontier Keep (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {2100, 2100, 2100, 2100},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Winterfall",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to immediately freeze all enemy units within a 20m radius around every friendly building in the current game for 10 seconds. Units frozen by this ability will receive full damage when attacked. Has a 60 seconds cool-down after having been built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Frontier Keep (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {2100, 2100, 2100, 2100},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Winterfall",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to cast an icy aura on every friendly building in the current game that freezes all enemy units within a 20m radius for 10 seconds. Lasts for 15 seconds. Has a 60 seconds cool-down after having been built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Frost Bite (Fire)"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {25, 25, 25, 25},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 0,
        class = "Arcane",
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Slowdown",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Cools down an enemy unit until it is almost frozen. It will then only able to move at normal walk speed and to fight at a slower pace. Lasts for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Frost Bite (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {25, 25, 25, 25},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 0,
        class = "Arcane",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Slowdown",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Cools down an enemy unit until it is almost frozen. It will then only able to move at normal walk speed and takes 25% more damage . Lasts for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Frost Crystal"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {70, 70, 70, 70},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {900, 900, 900, 900},
        health = {1460, 1460, 1460, 1460},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Shard",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower hurls an icy shard that deals 72 damage to enemies in a 5m radius around its target, up to 110 in total.",
                values = nil
            }, {
                name = "Frost Wave",
                type = "Active",
                upgrade_dependency = 0,
                description = "Freezes up to 4 units in target area for 10 seconds. After freeze wears off, targets are immune against Freeze for a while. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Frost Mage"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Human Wizard",
        counter = "S",
        size = "M",
        damage = {360, 360, 360, 360},
        health = {570, 570, 570, 570},
        upgrade_locations = {
            "Defending Hope", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Lance",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit shoots an ice lance through enemies in a straight line, dealing 57 damage to each, up to 85 in total. Knocks back small units.",
                values = nil
            }
        }
    },
    ["Frost Shard"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Oracle", "The Guns of Lyr", "The Guns of Lyr"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Freezing Shock",
                type = nil,
                upgrade_dependency = 0,
                description = "Casts a freezing Shock that deals 750 damage to enemies in a 15m radius around its target, up to 2250 in total. Freezes target enemies for 10 seconds afterwards. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Frost Sorceress"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Human Wizard",
        counter = "M",
        size = "M",
        damage = {285, 285, 285, 285},
        health = {600, 600, 600, 600},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit hurls an ice blast that deals 17 damage to enemies in a 5m radius around its target, up to 25 in total.",
                values = nil
            }, {
                name = "Ice Shield",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to apply Ice Shield on a friendly unit. Absorbs up to 520 damage for 30 seconds. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Furnace of Flesh"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Hut",
        health = {1900, 1900, 1900, 1900},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Recycle",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers all corpses within a 25m radius in order to recycle them and take 2% of their former maximum life points from void power to return it into the power pool.",
                values = nil
            }
        }
    },
    ["Gemeye (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature", "Neutral", "Neutral"},
        power_cost = {270, 270, 270, 270},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Elemental Corruptor",
        counter = "Special",
        size = "XL",
        damage = {2250, 2250, 2250, 2250},
        health = {4500, 4500, 4500, 4500},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 5 seconds, unit spits poisonous matter, dealing 450 damage to units in a 15m radius, up to 675 in total. Knocks back small and medium units. What is more, the affected area around the target will be contaminated by an enfeebling substance that paralyzes up to 4 units within it after 5 seconds. Lasts for 10 seconds.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Gemeye (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature", "Neutral", "Neutral"},
        power_cost = {270, 270, 270, 270},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Elemental Corruptor",
        counter = "Special",
        size = "XL",
        damage = {2250, 2250, 2250, 2250},
        health = {4500, 4500, 4500, 4500},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 5 seconds, unit spits poisonous matter, dealing 450 damage to units in a 15m radius, up to 675 in total. Knocks back small and medium units. What is more, the affected area around the target will be contaminated for 5 seconds, dealing 55 damage to enemy units, up to 165 in total per second. The damage dealt by this substance cannot be warded off with the help of damage reducing abilities because it is able to circumvent every buff or protective shield.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    Ghostspears = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "M",
        size = "S",
        damage = {900, 900, 900, 900},
        health = {780, 780, 780, 780},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Weapon Change",
                type = "Active",
                upgrade_dependency = 0,
                description = "Makes unit more effective against small units instead of medium ones. Lasts until deactivated.",
                values = nil
            }
        }
    },
    ["Giant Slayer"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Human Dominator",
        counter = "XL",
        size = "M",
        damage = {520, 520, 520, 520},
        health = {980, 980, 980, 980},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Charge",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit charges at enemies.",
                values = nil
            }, {
                name = "Hamstring Rage",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit does increasingly more damage the longer it attacks but falls back to its original damage output if it doesn't fight for 5 seconds. Additionally, attacked units may only move at walk speed for 10 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Stalwart",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Cannot be knocked back.",
                values = nil
            }
        }
    },
    ["Giant Wyrm"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral", "Neutral", "Neutral"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Dominator",
        counter = "L",
        size = "XL",
        damage = {4000, 4000, 4000, 4000},
        health = {3530, 3530, 3530, 3530},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Corrosive Breath",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit exhales a corrosive cloud that deals 480 damage to enemies in a 10m radius around its target, up to 720 in total. Knocks back small and medium units.",
                values = nil
            }
        }
    },
    ["Girl Power (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Feminism",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Strengthens the power of women; the targeted female, friendly unit will deal 35% more damage and takes 25% less damage. Can only be cast on females. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Girl Power (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Feminism",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Strengthens the power of women; the targeted female, friendly unit will deal 35% more damage against male units and evaporate a poison that additionally makes every male, hostile unit within a 15m radius lose 15 life points per second. Can only be cast on females. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Glaciation (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 0,
        class = "Arcane",
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Walls",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Congeals up to 3 targeted wall segments until they are completely iced up. The affected segments will then take 75% less damage while units mounted on them deal 50% more damage. Lasts for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Glaciation (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 0,
        class = "Arcane",
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Walls",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Congeals up to 3 targeted wall segments until they are completely iced up. The affected segments will then take 75% less damage and mounted units can no longer be knocked off. Lasts for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Glacier Shell"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Encase in Ice",
                type = nil,
                upgrade_dependency = 0,
                description = "An own building is coated in an icy armor, absorbing 75% damage for up to 1300 damage in total. Lasts for 30 seconds. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Gladiatrix (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Fire", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Human Soldier",
        counter = "L",
        size = "M",
        damage = {790, 790, 790, 790},
        health = {450, 450, 450, 450},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Warrior Spear",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2.5 seconds, unit throws her warrior spear at an enemy dealing 84 damage in a 5m radius around the target, up to 126 in total.",
                values = nil
            }, {
                name = "Gifted Sobering",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to immediately remove alls buffs from a target hostile unit. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Gladiatrix (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Fire", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Human Soldier",
        counter = "L",
        size = "M",
        damage = {790, 790, 790, 790},
        health = {450, 450, 450, 450},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Warrior Spear",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2.5 seconds, unit throws her warrior spear at an enemy dealing 84 damage in a 5m radius around the target, up to 126 in total.",
                values = nil
            }, {
                name = "Tainted Sobering",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to immediately remove all buffs from a targeted hostile unit. The target will additionally be insensitive to all major buffs for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Global Warming (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Fire", "Fire"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 0,
        class = "Spell",
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Melting away",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Heats up the environment in such a way as to make every hostile Ice Shield within 25m radius melt down by 50 points per second. The heat will prevent affected enemies from receiving an Ice Shield. Lasts for 20 second. Reusable every 25 seconds.",
                values = nil
            }
        }
    },
    ["Global Warming (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Fire", "Fire"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 0,
        class = "Spell",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Melting away",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Heats up the environment in such a way as to make every hostile Ice Shield within 25m radius melt down by 50 points per second. The heat will prevent affected enemies from receiving an Ice Shield. Lasts for 20 second. Reusable every 25 seconds.",
                values = nil
            }
        }
    },
    ["Glyph of Frost"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Titans", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Mark of Frost",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a glyph that explodes as soon as enemies are nearby freezing up to 5 enemies in a 15m radius for 15 seconds. After freeze wears of, targets are immune against Freeze for 10 seconds. Vanishes after 20 seconds. Affects ground targets only. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Gravity Surge (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Neutral"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Pull Down",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Pulls a flying enemy unit down to the ground. The caught flier will then be enchained to the ground for 10 seconds and can no longer move. Ground units will be able to attack it while it is bound. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Gravity Surge (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Neutral"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Pull Down",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Pulls a flying enemy unit down to the ground. The caught flier will then be enchained to the ground for 15 seconds and can no longer move. Ground units will be able to attack it while it is bound but it is immune to ranged or magical attacks. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Green Peace (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 0,
        class = "Arcane",
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Protect the Environment!",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Installs peace and harmony among friendly and hostile units. Within a 25m radius all combat operations will be interrupted for 20 seconds. What is more, all friendly nature units that enjoy the peaceful setting for at least 5 seconds will then take courage and deal 50% more damage for 20 seconds even if they leave the area. Reusable 'every 25 seconds.",
                values = nil
            }
        }
    },
    ["Green Peace (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 0,
        class = "Arcane",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Protect the Environment!",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Installs peace and harmony among friendly and hostile units. Within a 25m radius all combat operations will be interrupted for 20 seconds. What is more, all friendly nature units that enjoy the peaceful setting for at least 5 seconds will then take courage and deal 50% more damage for 20 seconds even if they leave the area. Reusable 'every 25 seconds.",
                values = nil
            }
        }
    },
    ["Grim Bahir (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Neutral", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Corruptor",
        counter = "Special",
        size = "XL",
        damage = {3590, 3590, 3590, 3590},
        health = {2710, 2710, 2710, 2710},
        upgrade_locations = {"Convoy", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infectious Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit throws infectious spit dealing 400 damage to enemies in a 15m radius, up to 600 in total. If a unit directly attacked by Grim Bahir dies, tedious little Nether Crawler will spawn out of its corpse that will ferociously fight any enemy and die after 20 seconds. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Infused Life Drain",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to attach Grim Bahir to an extra large enemy unit. Each second, the targeted enemy will lose 95 life points that are transferred to the dragon who will thus restore 95 life points. Additionally, the target will be weekend and deal 25% less damage. Grim Bahir cannot attack while bound. In order to use this ability Grim Bahir needs already to have lost some life points. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Grim Bahir (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Neutral", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Corruptor",
        counter = "Special",
        size = "XL",
        damage = {3590, 3590, 3590, 3590},
        health = {2710, 2710, 2710, 2710},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infectious Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit throws infectious spit dealing 400 damage to enemies in a 15m radius, up to 600 in total. If a unit directly attacked by Grim Bahir dies, tedious little Nether Crawler will spawn out of its corpse that will ferociously fight any enemy and die after 20 seconds. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Gifted Life Drain",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to attach Grim Bahir to an extra large enemy unit. Each second, the targeted enemy will lose 95 life points that are transferred to the dragon who will thus restore 95 life points. Additionally, the target cannot use its special abilities and will only be able to move at walk speed. Grim Bahir cannot attack while bound. In order to use this ability, Grim Bahir needs already to have lost some life points. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Grimvine = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Neutral", "Neutral", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Forestkin Destroyer",
        counter = "Special",
        size = "XL",
        damage = {5800, 5800, 5800, 5800},
        health = {5000, 5270, 5800, 6380},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Strangling Vines",
                type = "Active",
                upgrade_dependency = 0,
                description = "Ties enemies within a 15m radius to the ground for 15 seconds dealing 50 damage to each target every 2 seconds. Rooted units are immobile but still able to use ranged attacks. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Grinder (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Nature", "Nature"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "Special",
        size = "XL",
        damage = {5000, 5000, 5000, 5000},
        health = {4500, 4500, 4500, 4500},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Provoke",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 115,
                description = "Activate to taunt an enemy unit. The unit will be forced to only attack Grinder and cannot be controlled any more for 12 seconds. Grinder will additionally buff itself and do 50% more damage. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Harmony",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Every 15 seconds unit regenerates a certain amount of life points depending on how many friendly units are positioned within a 25m radius around it. It will restore 220 life points per every 1000 friendly life points around it, up to 2640 in total.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Takes 15% less damage",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Does 100% more damage to structures.",
                values = nil
            }
        }
    },
    ["Grinder (Promo)"] = {
        affinity_variants = "Shadow",
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Nature", "Nature"},
        power_cost = 260,
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "Special",
        size = "XL",
        damage = 5000,
        health = 4500,
        abilities = {
            {
                name = "Tainted Provoke",
                type = "Active",
                affinity_dependency = true,
                cost = 100,
                description = "Activate to taunt an enemy unit. The targeted unit will then be forced to only attack Grinder and cannot be controlled any more for 12 seconds. It will additionally be weakened and deal 75% less damage. Reusable every 30 seconds."
            }, {
                name = "Harmony",
                type = "Passive",
                description = "Every 15 seconds unit regenerates a certain amount of life points depending on how many friendly units are positioned within a 25m radius around it. It will restore 220 life points per every 1000 friendly life points around it, up to 2640 in total."
            }, {
                name = "Adamant Skin",
                type = "Passive",
                description = "Takes 15% less damage"
            }, {
                name = "Siege",
                type = "Passive",
                description = "Does 100% more damage to structures."
            }
        }
    },
    ["Grinder (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Nature", "Nature"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "Special",
        size = "XL",
        damage = {5000, 5000, 5000, 5000},
        health = {4500, 4500, 4500, 4500},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Provoke",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 115,
                description = "Activate to taunt an enemy unit. The targeted unit will then be forced to only attack Grinder and cannot be controlled any more for 12 seconds. It will additionally be weakened and deal 75% less damage. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Harmony",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Every 15 seconds unit regenerates a certain amount of life points depending on how many friendly units are positioned within a 25m radius around it. It will restore 220 life points per every 1000 friendly life points around it, up to 2640 in total.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Takes 15% less damage",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Does 100% more damage to structures.",
                values = nil
            }
        }
    },
    ["Grove Spirit"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Special",
        charges = 8,
        squadsize = 1,
        class = "Spirit Supporter",
        counter = "Special",
        size = "M",
        health = {1100, 1100, 1100, 1100},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Paralyzing Ray",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit casts a powerful ray that paralyzes the target enemy. Spell will be interrupted if unit changes its target or is knocked back. Lasts for 10 seconds.",
                values = nil
            }, {
                name = "Healing Song",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to create a magical zone of 25m radius where friendly units will be healed for up to 860 life points per second, up to 4300 in total. Will be interrupted if unit is knocked back. Otherwise lasts until unit is given different orders. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Steadfast",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Cannot be knocked back.",
                values = nil
            }
        }
    },
    ["Gunner (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "Special",
        size = "L",
        damage = {960, 960, 960, 960},
        health = {1320, 1320, 1320, 1320},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Burst",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 4 seconds, unit uses its cannon to fire off a ball that deals 192 to enemies within a cone-shaped area, up to 288 in total. 25% of all damage dealt by this unit cannot be warded off with the help of damage reduction abilities because it is able to circumvent every buff or protective shield. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Deals 100% more damage against structures.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Gunner (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "Special",
        size = "L",
        damage = {960, 960, 960, 960},
        health = {1320, 1320, 1320, 1320},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Burst",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 4 seconds, unit uses its cannon to fire off a ball that deals 192 to enemies within a cone-shaped area, up to 288 in total. 100% of all damage dealt by this unit cannot be warded off with the help of damage reduction abilities because it is able to circumvent every buff or protective shield. Knocks back small and medium units. ",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Hammerfall (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {150, 150, 150, 150},
        charges = 8,
        squadsize = 1,
        class = "Tower",
        damage = {1600, 1600, 1600, 1600},
        health = {2800, 2800, 2800, 2800},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ethereal Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, artillery launches an ether bomb that deals 256 damage to enemies in a 15m radius, up to 384 in total. Has a long range of 50m and requires a minimum distance to the target of at least 10m. Knocks back small and medium units. Affects ground targets only.",
                values = nil
            }, {
                name = "Breeze of Strength",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Friendly units within a 20m radius will receive an Ice Shield that absorbs up to 800 damage and last for another 15 seconds upon leaving area around Hammerfall. There is an initial capability to install up to 3 Ice Shields that may exhaust but will restore over time. Cannot be disabled by spellblocking abilities.",
                values = nil
            }, {
                name = "Adamant Alloy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The building takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Hammerfall (Nature)"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {150, 150, 150, 150},
        charges = 8,
        squadsize = 1,
        class = "Tower",
        damage = {1600, 1600, 1600, 1600},
        health = {2800, 2800, 2800, 2800},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ethereal Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, artillery launches an ether bomb that deals 256 damage to enemies in a 15m radius, up to 384 in total. Has a long range of 50m and requires a minimum distance to the target of at least 10m. Knocks back small and medium units. Affects ground targets only.",
                values = nil
            }, {
                name = "Breeze of Life",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Friendly units within a 20m radius will be healed for up to 250 in total per second. There is an initial healing capability of 3000 max that may exhaust but will restore over time. Cannot be disabled by spellblocking abilities.",
                values = nil
            }, {
                name = "Adamant Alloy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The building takes 15% less damage.",
                values = nil
            }
        }
    },
    Harvester = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Undead Destroyer",
        counter = "Special",
        size = "XL",
        damage = {2700, 2700, 2700, 2700},
        health = {2800, 2800, 2800, 2800},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Summon Skeletons",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to summon 1 Skeleton Warrior with its Unholy Armor enabled. Needs to have gathered 2000 life points from corpses first. Skeleton Warriors have the same upgrade level as the unit itself. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Harvests energy from nearby corpses equal to their former maximum life points to enable the summoning of skeletons.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Harvester (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow"},
        power_cost = 300,
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Undead Destroyer",
        counter = "Special",
        size = "XL",
        damage = 3440,
        health = 2800,
        abilities = {
            {
                name = "Summon Skeletons",
                type = "Active",
                cost = 0,
                description = "Activate to summon 4 Skeleton Warrior with its Unholy Armor enabled. Needs to have gathered 2000 life points from corpses first. Skeleton Warriors have the same upgrade level as the unit itself. Reusable every 30 seconds."
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                description = "Harvests energy from nearby corpses equal to their former maximum life points to enable the summoning of skeletons."
            }, {
                name = "Siege",
                type = "Passive",
                description = "Deals 50% more damage against structures."
            }
        }
    },
    ["Hatecaster (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Fire", "Fire"},
        power_cost = {100, 100, 100, 100},
        charges = 8,
        squadsize = 0,
        class = "Fortress",
        damage = {2765, 2765, 2765, 2765},
        health = {3050, 3050, 3050, 3050},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Slimy Throw-Off",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, building throws out slimy balls that do 442 damage to enemies in a 15m radius, up to 663 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Gifted Evaporation",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The building evaporates noisome fume every 8 seconds; up to 3 hostile units within a 20m radius will be paralyzed for 10 seconds upon inhaling it. There is no way avoid the effects of this fume and affected units will not be immune to Paralyze after the effect wears off.",
                values = nil
            }
        }
    },
    ["Hatecaster (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Fire", "Fire"},
        power_cost = {100, 100, 100, 100},
        charges = 8,
        squadsize = 0,
        class = "Fortress",
        damage = {2765, 2765, 2765, 2765},
        health = {3050, 3050, 3050, 3050},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Slimy Throw-Off",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, building throws out slimy balls that do 442 damage to enemies in a 15m radius, up to 663 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Tainted Evaporation",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The building evaporates noisome fume every 4 seconds; up to 3 hostile units within a 20m radius will be paralyzed poisoned for 10 seconds upon inhaling it. They will then take 100 damage per second. After the effect wears off, targets are immune against Paralyze for a while.",
                values = nil
            }
        }
    },
    ["Healing Gardens"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Shrine",
        health = {2100, 2100, 2100, 2100},
        upgrade_locations = {
            "Crusade", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ritual of Recovery",
                type = "Active",
                upgrade_dependency = 0,
                description = "Every friendly unit in the current game benefits 85% more from any regenerating ability for 30 seconds. Has a 60 seconds cool-down after the building was built. Reusable every 60 seconds.",
                values = nil
            }, {
                name = "Aura of Recovery",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Friendly units within a 20m radius will regenerate 2% of their maximum life points every 2 seconds. Cannot be disabled by spellblocking abilities.",
                values = nil
            }
        }
    },
    ["Healing Well"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Shrine",
        health = {950, 950, 950, 950},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Water of Life",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Friendly units within 25m radius will be healed for up to 220 in total per second. There is an inital healing capability of 3000 that may exhaust but will restore over time. Cannot be disabled by spellblocking abilities.",
                values = nil
            }
        }
    },
    ["Home Soil"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Defending Hope", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "To Arms!",
                type = nil,
                upgrade_dependency = 0,
                description = "All friendly units in a 25m radius will deal 40% more damage as long as they are in proximity of a friendly building. Lasts for 30 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Howling Shrine (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Neutral", "Neutral"},
        power_cost = {200, 200, 200, 200},
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        damage = {2000, 2000, 2000, 2000},
        health = {2800, 2800, 2800, 2800},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Paralyzing Shot",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 20 seconds, the main turret is able to paralyze a target enemy for 10 seconds. After effect wears off, target is immune against Paralyze for a while.",
                values = nil
            }, {
                name = "Essence Bolts",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 11 seconds, 4 turrets deal 600 damage each to enemies in 10m radius, up to 900 total.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 3 entities connected to the root network support each other enabling more powerful attacks. The fortress will then be able to continously shoot and paralyze ever faster.",
                values = nil
            }
        }
    },
    ["Howling Shrine (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Neutral", "Neutral"},
        power_cost = {200, 200, 200, 200},
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        damage = {2000, 2000, 2000, 2000},
        health = {2800, 2800, 2800, 2800},
        upgrade_locations = {
            "Titans", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Strangling Shot",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 20 seconds, the main turret is able to root a target enemy to the ground for 10 seconds dealing 50 damage every second. Rooted units are immobile but still able to use ranged attacks. After the affect wears off, target is immune against Root for a while",
                values = nil
            }, {
                name = "Essence Bolts",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 11 seconds, 4 turrets deal 600 damage each to enemies in 10m radius, up to 900 total.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 3 entities connected to the root network support each other enabling more powerful attacks. The fortress will then be able to continously shoot and paralyze ever faster.",
                values = nil
            }
        }
    },
    Hurricane = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blow them away!",
                type = nil,
                upgrade_dependency = 0,
                description = "Releases a total of 5 strong wind gusts that knock back small units every 3 seconds. Deal 10 damage to enemies in the target area, up to 100 in total. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Ice Age (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Glacial",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every friendly Ice Shield in the current game will immediately restore 650 life points. What is more, the duration of affected Ice Shields is extended by the continuance of this spell. Lasts for 30 seconds. Reusable every 35 seconds.",
                values = nil
            }
        }
    },
    ["Ice Age (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Glacial",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every friendly Ice Shield in the current game will slowly restore 32 life points per second. What is more, the duration of affected Ice Shields is extended by the continuance of this spell. Lasts for 30 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Ice Barrier"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {20, 20, 20, 20},
        weapon_type = "Melee",
        charges = 24,
        squadsize = 1,
        class = "Barrier",
        health = {510, 510, 510, 510},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Rapid Construction",
                type = nil,
                upgrade_dependency = 0,
                description = "Construction time is drastically reduced.",
                values = nil
            }
        }
    },
    ["Ice Crystal"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Device",
        size = "Building",
        health = {680, 680, 680, 680},
        upgrade_locations = {
            "Siege of Hope", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Frost Affinity",
                type = "Active",
                upgrade_dependency = 0,
                description = "Active to support those have an affinity towards Frost: every own unit endowed with a Frost affinity in the current game will take 20% less damage.Lasts for 20s or crystal is destroyed.",
                values = nil
            }
        }
    },
    ["Ice Guardian"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "M",
        size = "M",
        damage = {500, 500, 500, 500},
        health = {400, 400, 400, 400},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Frost Ward",
                type = "Active",
                upgrade_dependency = 0,
                description = "A frosty barrier which absorbs up to 520 damage. Degenerates if not in proximity of friendly structures. Can only be casted near friendly structures. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Ice Shield Tower"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost"},
        power_cost = {50, 50, 50, 50},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {640, 640, 640, 640},
        health = {1100, 1100, 1100, 1100},
        upgrade_locations = {
            "Siege of Hope", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower shoots an ice bolt that deals 50 damage to enemies in a 5m radius around its target, up to 75 in total.",
                values = nil
            }, {
                name = "Ice Shield",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to apply Ice Shield on a friendly unit. Absorbs up to 690 damage for 30 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Ice Tornado"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Neutral", "Neutral"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Frosty Storm",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates an icy whirlwind that moves along a defined path, hurling several icy shards, each dealing 260 damage to enemies in a 10m radius, up to 750 in total per second. May cover a maximum distance of 30m. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Icefang Raptor (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "S",
        size = "M",
        damage = {680, 680, 680, 680},
        health = {895, 895, 895, 895},
        upgrade_locations = {
            "Bad Harvest", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Reserve",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit has less than 450 life points left it will extend its frosty spikes. In this emergence state it will then reflect 30% of all damage done to it in close combat to the attacker.",
                values = nil
            }, {
                name = "Agility",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gains fast movement speed near friendly structures (Swift movement speed)",
                values = nil
            }
        }
    },
    ["Icefang Raptor (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "S",
        size = "M",
        damage = {680, 680, 680, 680},
        health = {895, 895, 895, 895},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Reserve",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit has less than 450 life points left it will extend its frosty plating. In this emergence state it will then take 25% less damage.",
                values = nil
            }, {
                name = "Agility",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gains fast movement speed near friendly structures (Swift movement speed)",
                values = nil
            }
        }
    },
    Imperials = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "M",
        size = "S",
        damage = {660, 660, 660, 660},
        health = {690, 690, 690, 690},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Defensive Stance",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to gain: Resilient, Slow",
                values = nil
            }, {
                name = "Resilient",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Takes 40% less damage.",
                values = nil
            }, {
                name = "Slow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Slow movement.",
                values = nil
            }
        }
    },
    ["Incubator (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Shadow", "Neutral", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 0,
        class = "Shrine",
        health = {2730, 2730, 2730, 2730},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Morphing",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to transform an own ground unit within a 100m range into a Mutating Frenzy that has its special Deathwish already activated. Thus it deals 75% more damage but also loses 90 life points every 2 seconds. Mutating Frenzy has the same upgrade level as the building itself. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Incubator (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Shadow", "Neutral", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 0,
        class = "Shrine",
        health = {2730, 2730, 2730, 2730},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Morphing",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to transform an own ground unit within a 100m range into a Mutating Frenzy that is not able to distinguish between friend and foe. Thus it deals 100% more damage but will start attacking whatever entity is next to it no matter if it is friendly or hostile. It cannot be controlled by the player. Mutating Frenzy has the same upgrade level as the building itself. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Infect = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infectious Vermin",
                type = nil,
                upgrade_dependency = 0,
                description = "Infects up to 7 enemies within a 25m radius with a dreadful disease. If an infected unit dies within the next 20 seconds a Nightcrawler will spawn out of its corpse with Frenzy enabled. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Infected Tower (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Fire"},
        power_cost = {70, 70, 70, 70},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1130, 1130, 1130, 1130},
        health = {1570, 1570, 1570, 1570},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Slime Cannon",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, the tower shoots out slime dealing 90 damage to enemies within a 5m radius, up to 135 in total.",
                values = nil
            }, {
                name = "Infused Virus",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to submerge the tower into a virulent cloud that spreads within a 20m radius around it. Every own unit within it will be turned into a Twilight Bug upon its death. The bugs initially deal 30% more damage for 20 seconds. Lasts for 20 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Infected Tower (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Fire"},
        power_cost = {70, 70, 70, 70},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1130, 1130, 1130, 1130},
        health = {1570, 1570, 1570, 1570},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Slime Cannon",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, the tower shoots out slime dealing 90 damage to enemies within a 5m radius, up to 135 in total.",
                values = nil
            }, {
                name = "Blessed Virus",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to submerge the tower in a virulent cloud that spreads within a 20m radius around it. Every own unit within it will be turned into a Twilight Bug upon its death. The bugs are initially endowed with an Ice Shield that absorbs up to 600 damage for 20 seconds. Lasts for 20 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Infernal Chain (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Shadow", "Shadow", "Neutral", "Neutral"},
        power_cost = {165, 165, 165, 165},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Bond",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Grants the targeted friendly unit the ability to establish an infernal chain between itself and an enemy unit. While the bond exists the targeted enemy will lose 85 life points per second and the caster takes 50% less, damage. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Infernal Chain (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Shadow", "Shadow", "Neutral", "Neutral"},
        power_cost = {165, 165, 165, 165},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Bond",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Grants the targeted friendly unit the ability to establish an infernal chain between itself and an enemy unit. While the bond exists the targeted enemy will lose 85 life points per second and the caster regenerate 75 life points per second. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Infernal Machine (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Device",
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Arson",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to cast a fiery aura upon every friendly building in the current game. Every hostile unit within a 20m radius around affected buildings will be severely hurt. Each aura deals 45 damage to hostile units, up to 180 per second and incinerates enemies within it. Burned units will additionally lose 25 life points every 2 seconds and stay inflamed for another 10 seconds even after leaving the aura. Lasts for 12 seconds. Has a 60 seconds cool-down after being built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Infernal Machine (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Device",
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Arson",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to cast a fiery aura upon every friendly building in the current game. Every hostile unit within a 20m radius around affected buildings will be severely hurt. Each aura deals 45 damage to hostile units, up to 180 per second and every enemy within it will deal 50% less damage against structures. Lasts for 12 seconds. Has a 60 seconds cool-down after being built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    Inferno = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "King of the Giants", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Meteor Shower",
                type = nil,
                upgrade_dependency = 0,
                description = "Hurls 8 meteors onto the target each dealing 200 damage to enemies in a 15m radius, up to 600 in total. Knocks back small and medium units. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Ironclad (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Frost", "Neutral"},
        power_cost = {280, 280, 280, 280},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Ancient Dominator",
        counter = "XL",
        size = "XL",
        damage = {3400, 3400, 3400, 3400},
        health = {4980, 4980, 4980, 4980},
        upgrade_locations = {"Raven's End", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Snowy Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit fires snowy bombs at enemies, which deals 544 damage in a 15m radius, up to 860 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Infused Winterfall",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Switch into this mode in order to turn Ironclad's Frost Cannons to the ground. They will unleash pure ice that slowly freezes the surrounding-'ground. The ice will spread from the giant's feet until a total radius of 20m has been frozen. Up to 10 enemies within that area take 1400 damage and will then be frozen for 15 seconds. Ironclad will be immobile while freezing the ground but it additionally incites surrounding friendly units to deal 50% more damage against frozen targets. Lasts for 15 seconds. Affects ground targets only. Reusable every 15 seconds.",
                values = nil
            }
        }
    },
    ["Ironclad (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Frost", "Neutral"},
        power_cost = {280, 280, 280, 280},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Ancient Dominator",
        counter = "XL",
        size = "XL",
        damage = {3400, 3400, 3400, 3400},
        health = {4980, 4980, 4980, 4980},
        upgrade_locations = {"Blight", "The Guns of Lyr", "The Guns of Lyr"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Snowy Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit fires snowy bombs at enemies, which deals 544 damage in a 15m radius, up to 860 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Blessed Winterfall",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Switch into this mode in order to turn Ironclad's Frost Cannons to the ground. They will unleash pure ice that slowly freezes the surrounding ground. The ice will spread from the giant's feet until a total radius of 20m has been frozen. Up to 10 enemies within that area take 1400 damage and will then be frozen for 15 seconds. Ironclad will be immobile while freezing the ground but gains an additional Ice Shield that absorbs up to 2000 damage. Lasts for 15 seconds. Affects grounds targets only. Reusable every 15 seconds.",
                values = nil
            }
        }
    },
    Jorne = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral", "Neutral"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Giant Leader",
        counter = "XL",
        size = "XL",
        damage = {6350, 6350, 6350, 6350},
        health = {5490, 5490, 5490, 5490},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Wrecking Hammer",
                type = "Active",
                upgrade_dependency = 0,
                description = "Active to thrust Jorne's giant hammer onto the ground dealing heavy damage to surrounding structures. Every building or barrier within a 20m radius takes 1800 damage, up to 5400 damage is dealt in total. Units generally take very little damage but every small or medium unit within the affected area will be knocked back. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Giant Shelter",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Jorne is surrounded by an air of invulnerability and shelter that benefits his fellow leaders. Every other Legendary Unit within a 20m radius takes 50% less damage.",
                values = nil
            }
        }
    },
    Juggernaut = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Fire"},
        power_cost = {220, 220, 220, 220},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "XL",
        size = "XL",
        damage = {3750, 3750, 3750, 3750},
        health = {3550, 3550, 3550, 3550},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Stampede",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to rush towards the target dealing 170 damage to enemies along the way, up to 7750 in total. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Juggernaut (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Fire"},
        power_cost = 220,
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "XL",
        size = "XL",
        damage = 4745,
        health = 3550,
        abilities = {
            {
                name = "Stampede",
                type = "Active",
                cost = 65,
                description = "Activate to rush towards the target dealing 220 damage to enemies along the way, up to 4950 in total. Reusable every 20 seconds."
            }
        }
    },
    ["Juice Tank"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Shrine",
        health = {1550, 1550, 1550, 1550},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "The Juice Must Flow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Own power wells in a 20m radius consume 40% less power thus producing more.",
                values = nil
            }
        }
    },
    ["Knight of Chaos (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Shadow", "Shadow"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Human Corruptor",
        counter = "L",
        size = "M",
        damage = {880, 880, 880, 880},
        health = {900, 900, 900, 900},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Chaos",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 60,
                description = "Activate to create a disturbing aura of 20m radius around the caster that will lure all units within on to chaos: units around the caster will not be able to fight or attack. Affects friend and foe alike. Lasts for 10 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Knight of Chaos (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Shadow", "Shadow"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Human Corruptor",
        counter = "L",
        size = "M",
        damage = {880, 880, 880, 880},
        health = {900, 900, 900, 900},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Chaos",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 60,
                description = "Activate to create a disturbing aura of 20m radius around the caster that will lure all units within on to chaos: units around the caster will be confused and thus unable to distinguish between friend and foe. They will therefore start attacking whatever entity is next to them no matter if it is friendly or hostile. Affects friend and foe alike. Lasts for 10 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Kobold Engineer"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Kobold Supporter",
        counter = "M",
        size = "L",
        damage = {950, 950, 950, 950},
        health = {2000, 2000, 2000, 2000},
        upgrade_locations = {"Sunbridge", "The Guns of Lyr", "The Guns of Lyr"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Architect",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds unit repairs a structure for 430 life points.",
                values = nil
            }
        }
    },
    ["Kobold Inc. (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Frost", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Device",
        health = {2680, 2680, 2680, 2680},
        upgrade_locations = {
            "The Soultree", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Speed-up",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to accelerate the construction time of all buildings placed in the current game. Every friendly building played out will be constructed 50% faster. Lasts for 15 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Kobold Inc. (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Frost", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Device",
        health = {2680, 2680, 2680, 2680},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Speed-up",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to accelerate the construction time of all buildings placed in the current game. Every friendly building played out will be nearly instantly constructed but will also immediately lose 400 life points. Lasts for, 15 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Kobold Laboratory"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Hut",
        health = {1300, 1300, 1300, 1300},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Mason Mastery",
                type = "Active",
                upgrade_dependency = 0,
                description = "Friendly buildings in a 25m radius take only 60% damage for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Material Research",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Friendly buildings in a 25m radius have 100% lower repair costs.",
                values = nil
            }
        }
    },
    ["Kobold Trick"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Repair Building",
                type = nil,
                upgrade_dependency = 0,
                description = "Instantly repairs a friendly building for 850. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Lava Field"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Burn!",
                type = nil,
                upgrade_dependency = 0,
                description = "Spreads burning liquid over the ground dealing 340 damage to enemies in a 25m radius, up to 2100 in total. Knocks back small and medium units. Affects ground units only. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Life Weaving"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Pain Link",
                type = nil,
                upgrade_dependency = 0,
                description = "All damage done to the targeted own unit is reduced by 30%, transferring 50% more of the received damage to hostile and friendly entities within a 15m radius. Lasts for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Lifestealer = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {50, 50, 50, 50},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1080, 1080, 1080, 1080},
        health = {1200, 1200, 1200, 1200},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Painful Shot",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower fires a painful shot that deals 85 damage to enemies in a 5m radius around its target, up to 130 in total. Every shot reduces the tower's life points by 50. Tower will no longer attack once its life points have been reduced too far. Knocks back small units.",
                values = nil
            }, {
                name = "Sacrifice",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to sacrifice an own unit in order to transfer the victim's lifepoints into own lifepoints. Reusable every 15 seconds.",
                values = nil
            }, {
                name = "Still alive",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Regenerates 5 life points every second.",
                values = nil
            }
        }
    },
    Lifestream = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {5500, 5500, 5500, 5500},
        upgrade_locations = {"Oracle", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Life Link",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to reduce all damage done to friendly units in a chosen area of 25m radius within a 200m range. Affected units take only 30% damage, transferring all of the remaining damage to the Lifestream Shrine. Lasts for 30 seconds. Has a 30 seconds cool-down after the building was built. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Restoration",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Regenerates 25 lifepoints per second.",
                values = nil
            }
        }
    },
    ["Lightblade (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Ogre Dominator",
        counter = "L",
        size = "M",
        damage = {420, 420, 420, 420},
        health = {1050, 1050, 1050, 1050},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Provoke",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 20,
                description = "Activate to taunt an enemy unit. The targeted unit will then be forced to only attack Lightblade and cannot be controlled any more for 10 seconds. Lightblade will additionally buff itself and deal 75% more damage. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Righteous Fury",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against Undead creatures.",
                values = nil
            }
        }
    },
    ["Lightblade (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Ogre Dominator",
        counter = "L",
        size = "M",
        damage = {420, 420, 420, 420},
        health = {1050, 1050, 1050, 1050},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Provoke",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 20,
                description = "Activate to taunt an enemy unit. The targeted unit will then be forced to only attack Lightblade and cannot be controlled any more for 10 seconds. It will additionally be weakened and deal 50% less damage. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Righteous Fury",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against Undead creatures.",
                values = nil
            }
        }
    },
    ["Living Tower"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature"},
        power_cost = {70, 70, 70, 70},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1000, 1000, 1000, 1000},
        health = {1200, 1200, 1200, 1200},
        upgrade_locations = {
            "The Treasure Fleet", "The Insane God", "The Insane God"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Essence Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 10 seconds, tower fires a magic bolt that deals 275 damage to enemies in a 5m radius around its target, up to 410 in total. Knocks back small units.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 5 entities connected to the root network support each other enabling more powerful attacks.",
                values = nil
            }
        }
    },
    ["Lord Cyrian (Promo)"] = {
        description = "A fierce creature that rules with an iron fist over the Moloch roaming the world of Caledonia and seeking to give the future Lord of Ultima a hard time.",
        type = "Unit",
        edition = "Amii",
        rarity = "Ultra Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = 380,
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "King of the Moloch",
        counter = "L",
        size = "XL",
        damage = 5250,
        health = 5250,
        abilities = {
            {
                name = "Thrust of Ultima",
                type = "Active",
                cost = 100,
                description = "Activate to strike out Lord Cyrian's arms and bash them onto the ground dealing 800 damage to enemies in a 25m radius, up to 2400 in total. Knocks back small, medium and large units. Affects ground targets only. After the impact enemies will be stunned and unable to fight for 5 seconds. Reusable every 30 seconds."
            }, {
                name = "Enrage",
                type = "Active",
                cost = 90,
                description = "Activate to enrage Lord Cyrian. He will then deal 100% more damage but will also be more vulnerable. He takes 50% more damage and can no longer be controlled by the player for 20 seconds. Reusable every 60 seconds."
            }
        }
    },
    ["Lost Banestone (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1430, 1430, 1430, 1430},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Underworld Gate",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to partially draw the targeted hostile unit into the inbetween. The target will be paralyzed and cannot be attacked by other units. The affected player may no longer play out any more cards of same card as long as either the target unit lives or Banestone are still standing. Reusable every 60 seconds.",
                values = nil
            }, {
                name = "Blessed Glacial",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The building is surrounded by an icy aura. The duration of every friendly Ice Shields within a 25m radius is extended by the continuance of this spell",
                values = nil
            }
        }
    },
    ["Lost Banestone (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1430, 1430, 1430, 1430},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Underworld Gate",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to partially draw the targeted hostile unit into the inbetween. The target will be paralyzed and cannot be attacked by other units. The affected player may no longer play out any more cards of same card as long as either the target unit lives or Banestone are still standing. Reusable every 60 seconds.",
                values = nil
            }, {
                name = "Gifted Glacial",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The building is surrounded by icy aura. Each friendly Ice Shield within a 25m radius restores 25 life points per second.",
                values = nil
            }
        }
    },
    ["Lost Converter (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow"},
        power_cost = {55, 55, 55, 55},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Tower",
        health = {1470, 1470, 1470, 1470},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points in order to enable a freezing aura.",
                values = nil
            }, {
                name = "Blessed Ice Shock",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Once at least 1000 life points have been stored the building will start to convert them in order to cover its surroundings in ice. Every hostile unit within a 25m radius will be frozen for 15 seconds After the effect wears off, targets will be immune against Freeze for a while. For each frozen enemy 200 stored life points will be used up.",
                values = nil
            }
        }
    },
    ["Lost Converter (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow"},
        power_cost = {55, 55, 55, 55},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Tower",
        health = {1470, 1470, 1470, 1470},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points in order to enable a freezing aura.",
                values = nil
            }, {
                name = "Tainted Ice Shock",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Once at least 1000 life points have been stored the building will start to convert them in order to cover its surroundings in ice. Every hostile unit within a 25m radius that remains exposed to the ice for at least 5 seconds will be frozen for 25 seconds. After the effect wears off, targets will be immune against Freeze for a while. For each frozen enemy 200 stored life points will be used up.",
                values = nil
            }
        }
    },
    ["Lost Dancer (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Undead Archer",
        counter = "S",
        size = "M",
        damage = {670, 670, 670, 670},
        health = {620, 620, 620, 620},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, unit delivers a nether blast that deals 80 damage to enemies in a 15m radius, up to 120 in total.",
                values = nil
            }, {
                name = "Necro Explosion",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to gather up to 2600 life points from corpses within a 20m radius around the caster to create a huge nether sphere that explodes after 2 seconds dealing the corpses former maximum life points as area damage to hostile and friendly entities. Up to 25% of the gathered life points are dealt as damage per target. Affects ground targets only. Knocks back small units. Reusable every 10 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures",
                values = nil
            }
        }
    },
    ["Lost Dancer (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Undead Archer",
        counter = "S",
        size = "M",
        damage = {670, 670, 670, 670},
        health = {620, 620, 620, 620},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, unit delivers a nether blast that deals 80 damage to enemies in a 15m radius, up to 120 in total. Deals 100% more damage against humans.",
                values = nil
            }, {
                name = "Necro Explosion",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to gather up to 2600 life points from corpses within a 20m radius around the caster to create a huge nether sphere that explodes after 2 seconds dealing the corpses former maximum life points as area damage to hostile and friendly entities. Up to 25% of the gathered life points are dealt as damage per target. Affects ground targets only. Knocks back small units. Reusable every 10 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures",
                values = nil
            }
        }
    },
    ["Lost Disruptor (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {75, 75, 75, 75},
        charges = 12,
        squadsize = 0,
        class = "Tower",
        damage = {2450, 2450, 2450, 2450},
        health = {2070, 2070, 2070, 2070},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Air Disruption",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, building blasts disrupting projectiles into the air that deal 300 damage to units in a 5m radius, up to 330 in total. Affects air targets only. Has an extra-long range of 50m.",
                values = nil
            }, {
                name = "Gifted Disruption",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to interrupt every buff triggered by a hostile building that affects the entire current map. What is more, every hostile building in the current game will no longer be able to use its special abilities for 15 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Lost Disruptor (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {75, 75, 75, 75},
        charges = 12,
        squadsize = 0,
        class = "Tower",
        damage = {2450, 2450, 2450, 2450},
        health = {2070, 2070, 2070, 2070},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Air Disruption",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, building blasts disrupting projectiles into the air that deal 300 damage to units in a 5m radius, up to 330 in total. Affects air targets only. Has an extra-long range of 50m.",
                values = nil
            }, {
                name = "Tainted Disruption",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to interrupt every buff triggered by a hostile building that affects the entire current map. What is more, every -hostile building in the current game will take 15% more damage for 15 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Lost Dragon (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost", "Frost", "Shadow", "Shadow"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Corruptor",
        counter = "Special",
        size = "XL",
        damage = {3000, 3000, 3000, 3000},
        health = {3120, 3120, 3120, 3120},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Spit",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, unit throws out its corruptive spit dealing 335 damage to enemies within 20m radius, up to 502 in total.Enemies within the affected area will then be contaminated and can neither use their ranged attack nor special abilities for 5 seconds.",
                values = nil
            }, {
                name = "Revenant's doom",
                type = "Active",
                upgrade_dependency = 0,
                cost = 185,
                description = "Activate to bestow the unit with a curse that will make it ressurect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 25 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Dragon (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost", "Frost", "Shadow", "Shadow"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Corruptor",
        counter = "Special",
        size = "XL",
        damage = {3000, 3000, 3000, 3000},
        health = {3120, 3120, 3120, 3120},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Spit",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, unit throws out its corruptive spit dealing 335 damage to enemies in a 20m radius, up to 502 in total. Enemies affected within the area will additionally be contaminated and deal 50% less damage for 5 seconds.",
                values = nil
            }, {
                name = "Revenant's doom",
                type = "Active",
                upgrade_dependency = 0,
                cost = 185,
                description = "Activate to bestow the unit with a curse that will make it ressurect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 25 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Evocation (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Shadow", "Shadow"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 0,
        class = "Blessed Revenant",
        counter = "S",
        size = "S",
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Revenant",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Summons the Revenant of a mighty Lost Souls Demon. The Revenant can be controlled by the player and is able to strengthen other friendly Lost Soul units around him. He will vanish back into the in between after 25 seconds. Every player can only summon one demon at a time. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Lost Evocation (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Shadow", "Shadow"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 0,
        class = "Blessed Revenant",
        counter = "S",
        size = "S",
        upgrade_locations = {
            "Raven's End", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Revenant",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Summons the Revenant of a mighty Lost Souls Demon. The Revenant can be controlled by the player and is able to strengthen other friendly Lost Soul units around him. He will vanish back into the in between after 25 seconds. Every player can only summon one demon at a time. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Lost Grigori (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {200, 200, 200, 200},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "L",
        size = "XL",
        damage = {2500, 2500, 2500, 2500},
        health = {3590, 3590, 3590, 3590},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Disintegrating Shock",
                type = "Active",
                upgrade_dependency = 0,
                cost = 100,
                description = "Activate to slowly disintegrate an enemy unit over time. Target unit will be paralyzed during disintegration and cannot be attacked by other units. If the spell is interrupted prematurely the target will be released unharmed. May only disintegrate units. Reusable every 30 seconds",
                values = nil
            }, {
                name = "Infused Attraction",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to unleash a provoking aura that attracts the attention of every enemy unit within a 20m radius around Lost Grigori. Affected enemy units within this aura will then be forced to only attack; the caster and cannot be controlled any more. The demon will additionally be strengthened and deal 50% more damage. As long as the effect lasts it will be immobile. Lasts until deactivated but at least 15 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Grigori (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {200, 200, 200, 200},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "L",
        size = "XL",
        damage = {2500, 2500, 2500, 2500},
        health = {3590, 3590, 3590, 3590},
        upgrade_locations = {
            "Ocean", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Disintegrating Shock",
                type = "Active",
                upgrade_dependency = 0,
                cost = 100,
                description = "Activate to slowly disintegrate an enemy unit over time. Target unit will be paralyzed during disintegration and cannot be attacked by other units. If the spell is interrupted prematurely the target will be released unharmed. May only disintegrate units. Reusable every 30 seconds",
                values = nil
            }, {
                name = "Tainted Attraction",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to unleash a provoking aura that attracts the attention of every enemy unit within a 20m radius around Lost Grigori. Affected enemy units within this aura will then be forced to only attack; the caster and cannot be controlled any more. They will additionally be weakened and deal 30% less damage. As long as the effect lasts the demon will be immobile Lasts until deactivated but at least 15 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Horror (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Undead Corruptor",
        counter = "Special",
        size = "XL",
        damage = {1870, 1870, 1870, 1870},
        health = {3310, 3310, 3310, 3310},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Lost Goo",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit spits gooey stuff that deal 300 damage to enemies within 15m radius, up to 450 in total.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                cost = 170,
                description = "Activate to bestow the unit with a curse that will make it ressurect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 25 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }, {
                name = "Infused Multishot",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit may shoot at two targets at once, knocking back small and medium units.",
                values = nil
            }
        }
    },
    ["Lost Horror (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Undead Corruptor",
        counter = "Special",
        size = "XL",
        damage = {1870, 1870, 1870, 1870},
        health = {3310, 3310, 3310, 3310},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Lost Goo",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit spits gooey stuff that deal 300 damage to enemies within 15m radius, up to 450 in total.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                cost = 170,
                description = "Activate to bestow the unit with a curse that will make it ressurect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 25 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }, {
                name = "Gifted Multishot",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit may shoot at 3 targets at once.",
                values = nil
            }
        }
    },
    ["Lost Launcher (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow"},
        power_cost = {70, 70, 70, 70},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1500, 1500, 1500, 1500},
        health = {1120, 1120, 1120, 1120},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Hurling Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, tower blasts hurling energy dealing 180 damage to enemies in a 10m radius, up to 270 in total. Knocks back small units.",
                values = nil
            }, {
                name = "Infused Rage",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit does increasingly more damage the longer it attacks but falls back to its original damage output if it doesn't fight for 10 seconds.",
                values = nil
            }
        }
    },
    ["Lost Launcher (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow"},
        power_cost = {70, 70, 70, 70},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1500, 1500, 1500, 1500},
        health = {1120, 1120, 1120, 1120},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Hurling Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, tower blasts hurling energy dealing 180 damage to enemies in a 10m radius, up to 270 in total. Knocks back small units.",
                values = nil
            }, {
                name = "Blessed Ice Shield",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The tower is endowed with an Ice Shield that absorbs up to 600 damage and may restore its abosrption capacity by 5 every second.",
                values = nil
            }
        }
    },
    ["Lost Priest (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Undead Wizard",
        counter = "M",
        size = "M",
        damage = {560, 560, 560, 560},
        health = {590, 590, 590, 590},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Power Shock",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit releases a shock deal 56 damage to enemies in an 15 m radius, up to 84 in total",
                values = nil
            }, {
                name = "Infused Exhaustion",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 50,
                description = "Activate to trigger a cursed chain that affect up to 4 hostile targets. The curse jumps from one valid target to the next within a 15m range;each affected enemies will take 30% more damage for 20 seconds. Reusable after 20s.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                cost = 45,
                description = "Activate to bestow the unit with a curse that will make it ressurect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 25 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Priest (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Undead Wizard",
        counter = "M",
        size = "M",
        damage = {560, 560, 560, 560},
        health = {590, 590, 590, 590},
        upgrade_locations = {"Slave Master", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Power Shock",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit releases a shock deal 56 damage to enemies in an 15 m radius, up to 84 in total",
                values = nil
            }, {
                name = "Tainted Exhaustion",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to trigger a cursed chain that may affect up to 3 hostile targets. The curse jumps from one valid target to the next within a 15m range: each affected enemy will deal 25% less damage for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                cost = 45,
                description = "Activate to bestow the unit with a curse that will make it ressurect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 25 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Reaver (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "S",
        size = "L",
        damage = {1200, 1200, 1200, 1200},
        health = {1650, 1650, 1650, 1650},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Mob",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to conjure 3 Lost Crawler next to the target enemy. If not killed in time those creepy little beasts will explode after 15 seconds dealing 200 damage to hostile and friendly entities in a 15m radius, up to 600 in total. Needs to have gathered 1500 life points from corpses first. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points to enable the conjuring of Lost Crawler.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Reaver (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "S",
        size = "L",
        damage = {1200, 1200, 1200, 1200},
        health = {1650, 1650, 1650, 1650},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tained Mob",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to conjure 3 Lost Crawler next to the target enemy. If not killed in time those creepy little beasts will explode after 15 seconds releasing atoxic substance. Nearby hostile and friendly units will be poisoned and take 30 damage per second for 10 seconds. Needs to have gathered 1500 life points from corpses first. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points to enable the conjuring of Lost Crawler.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Shade (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Shadow"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Undead Destroyer",
        counter = "M",
        size = "L",
        damage = {940, 940, 940, 940},
        health = {800, 800, 800, 800},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Acherontic Jet",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit ejects a firejet that deals 47 damage to enemies every second.",
                values = nil
            }, {
                name = "Blessed Union",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "An unearthly bond is installed between all friendly Lost Shades within a 25m radius. They mutually share their life points with each other and all damage done to a single unit will be distributed among all members of this wicked company. Each individual unit will additionally take 20% less damage when being surrounded by at least 2 other Lost Shades.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Shade (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Shadow"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Undead Destroyer",
        counter = "M",
        size = "L",
        damage = {940, 940, 940, 940},
        health = {800, 800, 800, 800},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Acherontic Jet",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit ejects a firejet that deals 47 damage to enemies every second.",
                values = nil
            }, {
                name = "Tainted Union",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "An unearthly bond is installed between all friendly Lost Shades within a 25m radius. They mutually share their life points with each other and all damage done to a single unit will be distributed among all members of this wicked company. When being surrounded by at least 2 other Lost Shades each individual unit will reflect 100 damage to enemies attacking it in close combat.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Spirit Ship (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow", "Neutral", "Neutral"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Undead Destroyer",
        counter = "M",
        size = "XL",
        damage = {4250, 4250, 4250, 4250},
        health = {3080, 3080, 3080, 3080},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Torpedo Gun",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, 8 turrets shoot independently dealing 115 damage to enemies in a 15m radius around its target up to 140 in total each. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Recycling",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to destroy an own building. The buildings former life-points will be stored as energy. Once enough energy has been gathered the Lost Crystal will become available and can be dropped down below the ship. A maximum of 6000 life points can be stored.",
                values = nil
            }, {
                name = "Infused Crystal",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to place a Lost Crystal below the ship. The Crystal, is caught in the in between and only materializes partially in the living world. Thus it can neither be attacked nor repaired by the player and will vanish after 15 seconds. Friendly units summoned within a 25m radius are not dazed. What is more, the Crystal emits energy from the in-between that is extremely harmful for the living: each wave deals 250 damage to enemies in a 25m radius, up to 810 in total. Needs to have gathered 1500 life points from buildings first. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Spirit Ship (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow", "Neutral", "Neutral"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Undead Destroyer",
        counter = "M",
        size = "XL",
        damage = {4250, 4250, 4250, 4250},
        health = {3080, 3080, 3080, 3080},
        upgrade_locations = {
            "Raven's End", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Torpedo Gun",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, 8 turrets shoot independently dealing 115 damage to enemies in a 15m radius around its target up to 140 in total each. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Recycling",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to destroy an own building. The buildings former life-points will be stored as energy. Once enough energy has been gathered the Lost Crystal will become available and can be dropped down below the ship. A maximum of 6000 life points can be stored.",
                values = nil
            }, {
                name = "Gifted Crystal",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to place a Lost Crystal below the ship. The Crystalis, caught in the in between and only materializes partially in the living world. Thus it can neither be attacked nor repaired by the player and will vanish after 15 seconds. Friendly units within a 25m radius regenerate 250 life points per second. What is more, the Crystal emits energy from the in-between that is extremely harmful for the living: each wave deals 250 damage to enemies in a 25m radius, up to 810 in total. Needs to have gathered 1500 life points from buildings first. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Vigil (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {160, 160, 160, 160},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "Special",
        size = "L",
        damage = {1290, 1290, 1290, 1290},
        health = {960, 960, 960, 960},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Celestial Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit casts a thunderous lance that deals 90 damage to enemies in a 15m radius around its target, up to 135 in total. Can only attack ground entities.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }, {
                name = "Gifted Invigoration",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit considerably gains in strength when positioned within a 20m radius around a friendly structure. It then has a long range of 40m and every blast deals 180 damage to enemies in a 15m radius around the target, up to 270 in total. Additionally, the unit will regenerate 25 life points every second.",
                values = nil
            }
        }
    },
    ["Lost Vigil (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {160, 160, 160, 160},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "Special",
        size = "L",
        damage = {1290, 1290, 1290, 1290},
        health = {960, 960, 960, 960},
        upgrade_locations = {"Blight", "The Guns of Lyr", "The Guns of Lyr"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Celestial Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit casts a thunderous lance that deals 90 damage to enemies in a 15m radius around its target, up to 135 in total. Can only attack ground entities.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }, {
                name = "Tainted Invigoration",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit considerably gains in strength when positioned within a 20m radius around a friendly structure. It then has a long range of 40m and every blast deals 180 damage to enemies in a ism radius around the target, up to 270 in total. Additionally, 25% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Lost Wanderer (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Supporter",
        counter = "M",
        size = "M",
        damage = {745, 745, 745, 745},
        health = {820, 820, 820, 820},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Shield",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 11 seconds, unit is able to cast an Ice Shield on a friendly unit that absorbs up to 520 damage for 20 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }, {
                name = "Blessed Breeze",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The unit is surrounded by a frosty breeze in a 15m radius around it all friendlyentities deal 25% more damage against frozen units.",
                values = nil
            }
        }
    },
    ["Lost Wanderer (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Shadow"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Supporter",
        counter = "M",
        size = "M",
        damage = {745, 745, 745, 745},
        health = {820, 820, 820, 820},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Shield",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 11 seconds, unit is able to cast an Ice Shield on a friendly unit that absorbs up to 520 damage for 20 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }, {
                name = "Gifted Breeze",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The unit is surrounded by a frosty breeze. In a 15m radius around it every friendly Ice Shield restores 10 hit points per second.",
                values = nil
            }
        }
    },
    ["Lost Warlord (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Shadow", "Shadow"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Destroyer",
        counter = "XL",
        size = "XL",
        damage = {4640, 4640, 4640, 4640},
        health = {5820, 5820, 5820, 5820},
        upgrade_locations = {"Convoy", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Onslaught",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to teleport to a hostile ground unit within a 100m range. Requires the target to be within a 20m range of an own ground entity. Lost Warlord will initially deal 50% more damage for 15 second after having been teleported. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lost Warlord (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Shadow", "Shadow"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Destroyer",
        counter = "XL",
        size = "XL",
        damage = {4640, 4640, 4640, 4640},
        health = {5820, 5820, 5820, 5820},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Onslaught",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to teleport to a hostile ground unit within a 100m range. Requires the target to be within a 20m range of an own ground entity. Lost Warlord will gain an Ice Shield that absorbs up to 2200 damage for 15 second after having been teleported. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Revenant's Doom",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bestow the unit with a curse that will make it resurrect in case it dies. The resurrected revenant will only be a shadow of its former self but it will be endowed with the same abilities and equal in strength. After 20 seconds the revenant will then die once and for all. May only be triggered once.",
                values = nil
            }
        }
    },
    ["Lyrish Knight"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Human Soldier",
        counter = "XL",
        size = "M",
        damage = {400, 400, 400, 400},
        health = {775, 775, 775, 775},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Protector",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gains near friendly structures:",
                values = nil
            }, {
                name = "Surge of Strength",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Stomp",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Tramples small units.",
                values = nil
            }
        }
    },
    ["Lyrish Knight (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral"},
        power_cost = 60,
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Human Soldier",
        counter = "XL",
        size = "M",
        damage = 400,
        health = 980,
        abilities = {
            {
                name = "Protector",
                type = "Passive",
                description = "Gains near friendly structures (40m):"
            }, {
                name = "Surge of Strength",
                type = "Passive",
                description = "Deals 100% more damage."
            },
            {
                name = "Swift",
                type = "Passive",
                description = "Moves at high speed."
            },
            {
                name = "Stomp",
                type = "Passive",
                description = "Tramples small units."
            }
        }
    },
    Maelstrom = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral", "Neutral", "Neutral"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Massive Blizzard",
                type = nil,
                upgrade_dependency = 0,
                description = "Casts 10 frosty windstorms, each dealing 200 damage to enemy units in a 25m radius, up to 600 in total, and freezing them after some time. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Magma Fiend"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = {5200, 5200, 5200, 5200},
        health = {3170, 3170, 3170, 3170},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Fire Stream",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit releases a fiery stream that deals 300 damage to enemies every second.",
                values = nil
            }, {
                name = "Burning Liquid",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to spread 8 waves of burning liquid on the ground that inflicts damage 8 times. Each time 80 damage is dealt to enemies in a 25m radius around the target, up to 480 in total per second. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Magma Hurler"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "L",
        size = "L",
        damage = {1700, 1700, 1700, 1700},
        health = {975, 975, 975, 975},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Magma Balls",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit hurls a magma ball that deals 240 damage to enemies in a 5m radius around its target, up to 360 in total. Knocks back small und medium units.",
                values = nil
            }
        }
    },
    ["Magma Spore"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "L",
        size = "M",
        damage = {1260, 1260, 1260, 1260},
        health = {470, 470, 470, 470},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Magma Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit hurls a fiery comet that deals 160 damage to flying units in a 25m radius around its target, up to 200 in total. Affects air targets only.",
                values = nil
            }, {
                name = "Ground Blast",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to trigger a violent exploison that deals 620 damage to enemies in a 15m radius around its target, up to 970 in total. Affects ground targets only. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Makeshift Tower"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire"},
        power_cost = {60, 60, 60, 60},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {345, 345, 345, 345},
        health = {800, 800, 800, 800},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Grenade Launcher",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, tower fires an explosive grenade that deals 30 damage to enemies in a 10m radius around its target, up to 50 in total. Knocks back small units.",
                values = nil
            }
        }
    },
    ["Mana Wing"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Beast Wizard",
        counter = "S",
        size = "M",
        damage = {480, 480, 480, 480},
        health = {210, 210, 210, 210},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Mana Stream",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit casts a ray of mana that deals 60 damage to enemies in a 5m radius around its target, up to 90 in total.",
                values = nil
            }, {
                name = "Blink",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to teleport to an own ground unit within a 50m range. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Mark of the Keeper"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Shrine",
        health = {1120, 1120, 1120, 1120},
        upgrade_locations = {
            "Titans", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Spellbane",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Building is surrounded by an anti-magic zone of 35m where enemies can neither use ranged attacks nor special abilities. No enemies can be summoned within that zone. Cannot be disabled by spellblocking abilities.",
                values = nil
            }
        }
    },
    ["Master Archers"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 20,
        squadsize = 6,
        class = "Human Archers",
        counter = "S",
        size = "S",
        damage = {300, 300, 300, 300},
        health = {600, 600, 600, 600},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Crossbow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit fires bolts at enemies that deal 5 damage.",
                values = nil
            }
        }
    },
    ["Matter Mastery (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Nature"},
        power_cost = {165, 165, 165, 165},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Raven's End", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Hostile Take-Over",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Hostile Take-Over - Grants temporary control over an enemy building for 20 seconds. Reusable every 30 seconds. The dominated target does not allow to play out cards next to it.",
                values = nil
            }
        }
    },
    ["Matter Mastery (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Nature"},
        power_cost = {165, 165, 165, 165},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Hostile Take-Over",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Hostile Take-Over - Grants temporary control over an enemy building for 20 seconds. Reusable every 30 seconds. The dominated target does not allow to play out cards next to it.",
                values = nil
            }
        }
    },
    Mauler = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "L",
        size = "M",
        damage = {710, 710, 710, 710},
        health = {830, 830, 830, 830},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Slam",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Attacked units cannot use their special abilities for 5 seconds.",
                values = nil
            }
        }
    },
    ["Mind Control"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Nature", "Neutral"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Slave Master", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infinite Domination",
                type = nil,
                upgrade_dependency = 0,
                description = "Grants permanent control over an enemy unit with a maximum of 4 orbs and 300 power costs. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Mindweaver = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1724, 1724, 1724, 1724},
        health = {2500, 2500, 2500, 2500},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Psionic Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, tower projects mental energy that deals 190 damage to enemies in a 5m radius around its target, up to 290 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Edict of Command",
                type = "Active",
                upgrade_dependency = 0,
                description = "Control over an enemy unit for 12 seconds. Restricted to 3 orb creatures with a maximum of 300 power costs. Controlled untis cannot be killed by the player. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    Mine = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Goblin Trap",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a mine for 20 seconds that explodes as soon as enemies are nearby triggering 6 bursting waves that each deal 200 damage to enemies and 50 to structures in a 15m radius, up to 600 in total. Affects ground targets only. Knocks back small units. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    Mo = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = {350, 350, 350, 350},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Champion",
        counter = "L",
        size = "XL",
        damage = {4700, 4700, 4700, 4700},
        health = {5000, 5000, 5000, 5000},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Group Hug",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to heal Mo. The overall heal amount depends on how many friendly units are surrounding Mo. The higher the amount of maximum life points of nearby friendly units is the more powerful will this spell become. A maximum of 3000 life points may be healed while there is a minimum heal of at least 500. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Mo's better blues",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to increase the damage of nearby friendly units by 30% for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Stampede",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to rush towards the target dealing 170 damage to enemies along the way, up to 7750 in total. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Mo (Promo)"] = {
        description = "The famous White Juggernaut.",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = 350,
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = 4700,
        health = 5000,
        abilities = {
            {
                name = "Group Hug",
                type = "Active",
                cost = 65,
                description = "Activate to heal Mo. The overall heal amount depends on how many friendly units are surrounding Mo. The higher the amount of the maximum life points of nearby friendly units is the more powerful will this spell become. A maximum of 3000 life points may be healed while there is a minimum heal of at least 500. Reusable every 30 seconds."
            }, {
                name = "Mo's better blues",
                type = "Active",
                cost = 65,
                description = "Activate to increase the damage of nearby friendly units by 50%. Reusable every 30 seconds."
            }, {
                name = "Stampede",
                type = "Active",
                cost = 65,
                description = "Activate to rush towards the target dealing 220 damage to enemies along the way, up to 9900 in total. Reusable every 30 seconds."
            }
        }
    },
    Moloch = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Fire", "Fire"},
        power_cost = {350, 350, 350, 350},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Beast Destroyer",
        counter = "Special",
        size = "XL",
        damage = {5000, 5000, 5000, 5000},
        health = {5000, 5000, 5000, 5000},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Hardened Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Takes 50% less from ranged and magical attacks.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 100% more damage against structures.",
                values = nil
            }, {
                name = "Slow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Slow movement.",
                values = nil
            }
        }
    },
    Moon = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Skylord of Shadow",
        counter = "L",
        size = "M",
        damage = {1170, 1170, 1170, 1170},
        health = {900, 900, 900, 900},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Necroshade",
                type = "Active",
                upgrade_dependency = 0,
                cost = 60,
                description = "Activate to use Moons abilities as an assasin to cripple a hostile unit within 50m range. Within the blink of an eye she will appear at the side of the targeted enemy intoxicating it with a weakening substance: her victim will then only be able to move at walk speed and takes 20% more damage for 15 seconds. Reuseable every 10 seconds.",
                values = nil
            }, {
                name = "Dark Art",
                type = "Active",
                upgrade_dependency = 0,
                cost = 70,
                description = "Activate to gather up 3000 life points from corpses within a 20m radius of Moon. They will create a huge dark sphere that disolves after 2 seconds transforming the corpses former maximum life points in to healing power that restores the life pomints of every friendly unit within that area. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Morklay Trap"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Device",
        health = {1200, 1200, 1200, 1200},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Explosion Blast",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to emit a cone-shaped blast wave that deals 690 damage to enemies in an arc of 45m, up to 2100 in total. Knocks back small and medium units. Also triggers Detonation.",
                values = nil
            }, {
                name = "Self-Destruct",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to trigger Detonation by destroying the bomb",
                values = nil
            }, {
                name = "Detonation",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Explodes when being destroyed charge deals 800 damage to enemies in a 20m radius around its target, up to 2000 in total. Knocks back small and medium units.",
                values = nil
            }
        }
    },
    ["Mortar Tower"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Tower",
        health = {800, 800, 800, 800},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Mortar Attack",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to shoot 6 fire bombs that each deal 170 damage to enemies in a 10m radius around its target, up to 260 in total. Knocks back small units. Has a long range of 40m. Affects ground targets only. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Motivate = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow"},
        power_cost = {25, 25, 25, 25},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Oracle", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Spur",
                type = nil,
                upgrade_dependency = 0,
                description = "Sacrifices an own unit in order to spur on all other existing own and friendly units of the same kind in the current game. Affected units will deal 50% more damage for 20 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Mountain Rowdy (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "M",
        size = "M",
        damage = {585, 585, 585, 585},
        health = {860, 860, 860, 860},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Ice Block",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to turn the unit into an Ice Block. In this state it is immobile but takes 65% less damage and is surrounded by a gelid breeze: friendly units within a 20m radius take 25% less damage. While turned into an Ice Block the unit is immune to all status effects like Freeze or Paralyze. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Mountain Rowdy (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "M",
        size = "M",
        damage = {585, 585, 585, 585},
        health = {860, 860, 860, 860},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Ice Block",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to turn the unit into an Ice Block. In this state it is immobile but takes 65% less damage and is surrounded by a gelid breeze: hostile units within a 15m radius take 15 damage every second. While turned into an Ice Block the unit is immune to all status effects like Freeze or Paralyze. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Mountaineer = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Neutral"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Special",
        charges = 8,
        squadsize = 1,
        class = "Ogre Destroyer",
        counter = "Special",
        size = "L",
        damage = {1200, 1200, 1200, 1200},
        health = {1350, 1350, 1350, 1350},
        upgrade_locations = {
            "Blight", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Bombard",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit hurls balls of ice that deal 170 damage to enemies in a 5m radius around its target, up to 260 in total. Knocks back small and medium units. Affects ground targets only.",
                values = nil
            }, {
                name = "Glacier Shield",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Builds up a regenerating frosty barrier which absorbs up to 600 damage but will only regenerate if the unit is not attacking.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Mumbo Jumbo (Fire)"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Jinx",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "It will no longer be possible to play out cards or claim buildings next to it. It will take 20% more damage. Lasts for 12 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Mumbo Jumbo (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Jinx",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Puts a hex on the targeted hostile unit: it will no longer be possible to play out cards or claim structures next to. Additionally, it will deal 20% less damage. Lasts for 12 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Mutating Frenzy"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Demon Dominator",
        counter = "XL",
        size = "L",
        damage = {1630, 1630, 1630, 1630},
        health = {1900, 1900, 1900, 1900},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Deathwish",
                type = "Active",
                upgrade_dependency = 0,
                description = "Unit permanently deals 25% more damage but also loses 30 life points every 2 seconds. Reusable every 10 seconds.",
                values = nil
            }, {
                name = "Sacrifice",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to sacrifice an own unit in order to transfer the victim's lifepoints into own lifepoints. Reusable every 15 seconds.",
                values = nil
            }
        }
    },
    ["Mutating Maniac (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {140, 140, 140, 140},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Demon Corruptor",
        counter = "XL",
        size = "L",
        damage = {1875, 1875, 1875, 1875},
        health = {1980, 1980, 1980, 1980},
        upgrade_locations = {
            "Nightmare Shard", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Toxic Cloud",
                type = "Active",
                upgrade_dependency = 0,
                cost = 90,
                description = "A poisonous cloud that envenoms enemy units at once in a 25m radius initially dealing 10 damage every second. But the longer units are exposed to the poison the more damage they will take. The poisonous effect will slowly wear off once they leave the cloud. Lasts for 15 seconds. Reusable every 25 seconds.",
                values = nil
            }, {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to infect unit Twilight curse and transform it in another unit of that faction. Mutation process to select the Twilight of the deck unit, in that you want to change it. The current deck must contain at least one, another unit Twilight, which all the requirements to play it are met.",
                values = nil
            }, {
                name = "Infused Hex",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit is transformed it will trigger a hex. Every enemy unit in a 20m radius can no longer be healed or buffed for 20 seconds.",
                values = nil
            }
        }
    },
    ["Mutating Maniac (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {140, 140, 140, 140},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Demon Corruptor",
        counter = "XL",
        size = "L",
        damage = {1875, 1875, 1875, 1875},
        health = {1980, 1980, 1980, 1980},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Toxic Cloud",
                type = "Active",
                upgrade_dependency = 0,
                cost = 90,
                description = "A poisonous cloud that envenoms enemy units at once in a 25m radius initially dealing 10 damage every second. But the longer units are exposed to the poison the more damage they will take. The poisonous effect will slowly wear off once they leave the cloud. Lasts for 15 seconds. Reusable every 25 seconds.",
                values = nil
            }, {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to infect unit Twilight curse and transform it in another unit of that faction. Mutation process to select the Twilight of the deck unit, in that you want to change it. The current deck must contain at least one, another unit Twilight, which all the requirements to play it are met.",
                values = nil
            }, {
                name = "Gifted Hex",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit is transformed it will trigger a hex. Every enemy unit in a 20m radius can no longer be healed for 20 seconds. Additionally, affected units cannot use their special abilities while cursed.",
                values = nil
            }
        }
    },
    ["Nasty Surprise"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Foul Play",
                type = nil,
                upgrade_dependency = 0,
                description = "Turns an own unit into a living bomb that explodes immediately dealing 150% of its current life points as damage to hostile and friendly units within a 25m radius, up to 33% per target. Knocks back small and medium units. Reusable every 5 seconds.",
                values = nil
            }
        }
    },
    ["Necroblaster (Nature)"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Shadow", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        charges = 8,
        squadsize = 0,
        class = "Tower",
        damage = {3680, 3680, 3680, 3680},
        health = {2360, 2360, 2360, 2360},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Necrotic Gun",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "If enough Life Points have been stored the tower is able to deliver a Necrotic Blast every 5 seconds: it deals 588 damage to enemies in a 10m radius, up to 883 in total. For each shot the tower needs to have gathered 500 life points from corpses first. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Gifted Voodoo",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to kill the targeted own unit with a 100m range. Immediately afterwards up to 600,life, points from corpses,, within a 20m radius around the target will be gathered to create a huge nether sphere that dissolves after 2 seconds transforming the corpses former maximum life points into healing power that restores the life points of every friendly unit within that area. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points in order to enable Necrotic Gun.",
                values = nil
            }
        }
    },
    ["Necroblaster (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Shadow", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        charges = 8,
        squadsize = 0,
        class = "Tower",
        damage = {3680, 3680, 3680, 3680},
        health = {2360, 2360, 2360, 2360},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Necrotic Gun",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "If enough Life Points have been stored the tower is able to deliver a Necrotic Blast every 5 seconds: it deals 588 damage to enemies in a 10m radius, up to 883 in total. For each shot the tower needs to have gathered 500 life points from corpses first. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Tainted Voodoo",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to kill the targeted own unit with a 100m range. Immediately afterwards up to 6000 life points from corpses within a 20m radius around the target will be gathered to create a huge nether sphere that explodes after 2 seconds dealing the corpses former maximum life points as area damage to hostile and friendly entities. Up to 33% of the gathered life points are dealt as damage per target. Affects ground targets only. Knocks back small units. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points in order to enable Necrotic Gun.",
                values = nil
            }
        }
    },
    Necrofury = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral", "Neutral", "Neutral"},
        power_cost = {220, 220, 220, 220},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "XL",
        size = "XL",
        damage = {1100, 1100, 1100, 1100},
        health = {3570, 3570, 3570, 3570},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Siege Mode",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Nether Bomb and Bone Shards",
                values = nil
            }, {
                name = "Nether Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit hurls a ball of nether that deals 640 damage to enemies in a 10m radius around its target, up to 970 in total. Affects ground targets only. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Bone Shards",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to fire off bone shards that deal 2560 damage to enemies in a 10m radius around its target, up to 3900 in total. Every shot drains the unit's own life points by 2000. Unit will no longer attack once its life points have been reduced below 2000. Affects ground targets only. Knocks back small, medium and large units. Reusable every 9 seconds.",
                values = nil
            }, {
                name = "Sacrifice",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to sacrifice an own unit in order to transfer the victim's lifepoints into own lifepoints. Reusable every 15 seconds.",
                values = nil
            }
        }
    },
    ["Nether Warp (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Teleport",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a warp zone that teleports any unit within it to the target destination which has to be within 60m range of the zone. Any unit sent through the warp zone may only move at walk speed for 10 seconds. Lasts for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Nether Warp (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Crusade", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Teleport",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a warp zone that teleports any unit within it to the target destination which has to be within 60m range of the zone. Any unit sent through the warp zone will restore 40 life points every 2 seconds. Lasts for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Nightcrawler = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Beast Soldier",
        counter = "M",
        size = "M",
        damage = {640, 640, 640, 640},
        health = {745, 745, 745, 745},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Frenzy",
                type = "Active",
                upgrade_dependency = 0,
                description = "Unit deals 50% more damage for 20 seconds. After the effect wears off unit will die.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Nightguard (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Human Corruptor",
        counter = "L",
        size = "M",
        damage = {450, 450, 450, 450},
        health = {400, 400, 400, 400},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Dark Spear",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit throws her spear at enemies dealing 48 damage in a 5m radius around its target, up to 72 in total.",
                values = nil
            }, {
                name = "Swap",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to permanently exchange Nightguard for an enemy unit. Restricted to 2 orb creatures with a maximum of 150 power costs. Does not work on extra-large units. The swapped unit does not allow to play out cards next to it and will be immune to Swap for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Nightguard (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Human Corruptor",
        counter = "L",
        size = "M",
        damage = {450, 450, 450, 450},
        health = {400, 400, 400, 400},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Dark Spear",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit throws her spear at enemies dealing 48 damage in a 5m radius around its target, up to 72 in total.",
                values = nil
            }, {
                name = "Swap",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to permanently exchange Nightguard for an enemy unit. Restricted to 2 orb creatures with a maximum of 150 power costs. Does not work on extra-large units. The swapped unit does not allow to play out cards next to it and will be immune to Swap for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Tainted Fury",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit deals 50% more damage against Humans.",
                values = nil
            }
        }
    },
    ["Nightshade Plant (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Fire", "Fire"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Forestkin Destroyer",
        counter = "L",
        size = "XL",
        damage = {4920, 4920, 4920, 4920},
        health = {5300, 5300, 5300, 5300},
        upgrade_locations = {
            "Encounters with Twilight", "Behind Enemy Lines",
            "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation ",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Gifted Tendrils",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit dies its many tendrils will cover the ground rooting every enemy unit in (a) 20m radius for 20 seconds.",
                values = nil
            }
        }
    },
    ["Nightshade Plant (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Fire", "Fire"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Forestkin Destroyer",
        counter = "L",
        size = "XL",
        damage = {4920, 4920, 4920, 4920},
        health = {5300, 5300, 5300, 5300},
        upgrade_locations = {"Sunbridge", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation ",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Tainted Tendrils",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit dies its many tendrils will poison the ground. Every enemy unit within a 20m radius will take 50 damage per second. Lasts for 20 seconds.",
                values = nil
            }
        }
    },
    ["Nomad (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Human Soldier",
        counter = "M",
        size = "M",
        damage = {675, 675, 675, 675},
        health = {460, 460, 460, 460},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Sky Scare",
                type = "Active",
                upgrade_dependency = 0,
                cost = 100,
                description = "Activate to throw Nomad's spear at a flying enemy unit and deal 500 damage. Affects flying units only. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Infused Company",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The unit will be incited to deal 50% more damage when being surrounded by at least 2 other Nomads within a 25m radius.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Stomp",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Tramples small units.",
                values = nil
            }
        }
    },
    ["Nomad (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Human Soldier",
        counter = "M",
        size = "M",
        damage = {675, 675, 675, 675},
        health = {460, 460, 460, 460},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Sky Scare",
                type = "Active",
                upgrade_dependency = 0,
                cost = 100,
                description = "Activate to throw Nomad's spear at a flying enemy unit and deal 500 damage. Affects flying units only. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Gifted Company",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The unit will be supported by other nomads within a 25m radius. When being surrounded by at least 2 Nomads it will be able to constantly regenerate 3% of its maximum life points every 1 second.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Stomp",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Tramples small units.",
                values = nil
            }
        }
    },
    ["Northern Keep (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {70, 70, 70, 70},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {900, 900, 900, 900},
        health = {1300, 1300, 1300, 1300},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Glacial Shot",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower shoots snowy balls that deal 72 damage to enemies in a 5m radius around its target, up to 108 in total",
                values = nil
            }, {
                name = "Infused Trench",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to entrench small and medium friendly units within a 20m radius. Entrenched units deal 10% more damage. Lasts for 20 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Northern Keep (Frost)"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {70, 70, 70, 70},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {900, 900, 900, 900},
        health = {1300, 1300, 1300, 1300},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Glacial Shot",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower shoots snowy balls that deal 72 damage to enemies in a 5m radius around its target, up to 108 in total",
                values = nil
            }, {
                name = "Blessed Trench",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to entrench small and medium friendly units within a 20m radius. Entrenched units recieve 100% less damage. Additionaly the tower itself receives 10% less damage. Lasts for 20 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Northguards = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "S",
        size = "S",
        damage = {450, 450, 450, 450},
        health = {720, 720, 720, 720},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Brave Defenders",
                type = nil,
                upgrade_dependency = 0,
                description = "This unit has no special abilities.",
                values = nil
            }
        }
    },
    ["Northland Drake (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Frost", "Frost"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Dominator",
        counter = "XL",
        size = "XL",
        damage = {2370, 2370, 2370, 2370},
        health = {2435, 2435, 2435, 2435},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Frost Breath",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit exhales frosty breath that deals 265 damage to enemies within a 35m radius, up to 398 in total.",
                values = nil
            }, {
                name = "Infused Blizzard",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to raise a Blizzard that hurls several icy shards, each dealing 84 damage to hostile units and 21 to structures in a 10m radius, up to 126 in total. Frozen targets will be-hit even harder: they take an additional damage of 100. Lasts for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Northland Drake (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost", "Frost", "Frost"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Dominator",
        counter = "XL",
        size = "XL",
        damage = {2370, 2370, 2370, 2370},
        health = {2435, 2435, 2435, 2435},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Frost Breath",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit exhales frosty breath that deals 265 damage to enemies within a 35m radius, up to 398 in total.",
                values = nil
            }, {
                name = "Blessed Blizzard",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to raise a Blizzard that hurls several freezing shards, each dealing 84 damage to hostile units and 21 to structures in a 10m radius, up to 126 in total. Additionally, every 3 seconds, enemy units caught by the Blizzard will be frozen for 15 seconds. Lasts for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Northstar (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Device",
        health = {1000, 1000, 1000, 1000},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Ice Breaker",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Building is surrounded by an icy aura with a 25m radius that enables all friendly entities within it to deal 125% of their usual damage against frozen units. Additionally, within this frosty aura every enemy will stay frozen 25% longer than usually.",
                values = nil
            }
        }
    },
    ["Northstar (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Device",
        health = {1000, 1000, 1000, 1000},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Ice Breaker",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Building is surrounded by an icy aura with a 25m radius that enables all friendly entities within it to deal 125% of their usual damage against frozen units. Additionally, every enemy within this aura will be slowed down and only be able to move at walk speed.",
                values = nil
            }
        }
    },
    ["Nox Carrier (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {180, 180, 180, 180},
        weapon_type = "Special",
        charges = 8,
        squadsize = 1,
        class = "Artifact Destroyer",
        counter = "Special",
        size = "L",
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Necro Strike",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to ram the unit against an enemy structure dealing 2740 damage. It will be destroyed during the attack but 2 Ripper will be able to spawn out of its remains.",
                values = nil
            }, {
                name = "Slow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Slow movement.",
                values = nil
            }
        }
    },
    ["Nox Carrier (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Neutral"},
        power_cost = {180, 180, 180, 180},
        weapon_type = "Special",
        charges = 8,
        squadsize = 1,
        class = "Artifact Destroyer",
        counter = "Special",
        size = "L",
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Necro Strike",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to ram the unit against an enemy structure dealing 2740 damage. It will be destroyed during the attack but a Ripper will spawn out of its remains that additionally contaminate an area of 20m radius dealing 40 damage per second to every enemy within it. Lasts for 15 seconds.",
                values = nil
            }, {
                name = "Slow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Slow movement.",
                values = nil
            }
        }
    },
    ["Nox Trooper"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Human Archer",
        counter = "M",
        size = "M",
        damage = {450, 450, 450, 450},
        health = {450, 450, 450, 450},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Nightfire",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit fires a blast of dark energy at enemies that deals 40 damage.",
                values = nil
            }, {
                name = "Overload",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to release a powerful shot after a preparation time of 6 seconds that deals 300 damage to enemies. Knocks back small units. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Noxious Cloud"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Neutral", "Neutral"},
        power_cost = {290, 290, 290, 290},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Intoxication",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a poisonous cloud that envenoms every enemy unit in a 25m radius initially dealing 10 damage every second. But the longer units are exposed to the poison the more damage they will take. The poisonous effect will slowly wear off once they leave the cloud. Lasts for 30 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Offering (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Tempting Offer",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Sacrifices an own unit to restore card charges. The card of every unit that has the same size as the sacrificed one will be granted one more charge. The maximum number of possible card charges for a specific card will not be exceeded, though.",
                values = nil
            }
        }
    },
    ["Offering (Nature)"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Tempting Offer",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Sacrifices an own unit to restore card charges. Every card that requires the same amount of orbs to be played out as the sacrified unit will be granted one more charge. The maximum number of possible card charges for a specific card will not be exceeded, though.",
                values = nil
            }
        }
    },
    ["Oracle Mask (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {200, 200, 200, 200},
        charges = 8,
        squadsize = 1,
        class = "Shrine",
        damage = {2250, 2250, 2250, 2250},
        health = {1700, 1700, 1700, 1700},
        upgrade_locations = {"Mo", "The Dwarven Riddle", "The Dwarven Riddle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ring of Fire",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, shrine erupts a ring of fire that deals 175 damage to enemies within a 25m radius around it, up to 500 in total.",
                values = nil
            }, {
                name = "Infused Mysticism",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 60,
                description = "Activate to use black art in order to conceal every friendly unit within a 20m radius around a friendly structure in the current game from enemies' vision. Enemies will no longer be able to spot affected units and thus cannot attack them. Additionally, Oracle Mask will deal 30% more damage. Lasts for 12 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Oracle Mask (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {200, 200, 200, 200},
        charges = 8,
        squadsize = 1,
        class = "Shrine",
        damage = {2250, 2250, 2250, 2250},
        health = {1700, 1700, 1700, 1700},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ring of Fire",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, shrine erupts a ring of fire that deals 175 damage to enemies within a 25m radius around it, up to 500 in total.",
                values = nil
            }, {
                name = "Gifted Mysticism",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 60,
                description = "Activate to use black art in order to conceal every friendly unit within a 20m radius around a friendly structure in the current game from enemies' vision. Enemies will no longer be able to spot affected units and thus cannot attack them. Additionally, Oracle Mask will restore 25 life points every second. Lasts for 12 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    Overlord = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Neutral", "Neutral"},
        power_cost = {220, 220, 220, 220},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Demon Crusader",
        counter = "L",
        size = "XL",
        damage = {3450, 3450, 3450, 3450},
        health = {4000, 4000, 4000, 4000},
        upgrade_locations = {"Mo", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blood Share",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to transfer 1000 own life points to a friendly unit in a 15m radius. Reusable every 5 seconds.",
                values = nil
            }, {
                name = "Flesh Feast",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers nearby corpses to regenerate 300 life points every 6 seconds.",
                values = nil
            }
        }
    },
    Parasite = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"The Soultree", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Epidemic",
                type = nil,
                upgrade_dependency = 0,
                description = "Infects an enemy with a parasite that deals 60 damage every seconds. After 10 seconds the parasite passes over to the next available target within a 15m range. May affect a total of 4 targets. The parasite will vanish if no more targets are nearby. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Parasite Swarm"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 6,
        class = "Beast Corruptor",
        counter = "M",
        size = "S",
        damage = {780, 780, 780, 780},
        health = {330, 330, 330, 330},
        upgrade_locations = {
            "Blight", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Mind Blast",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit projects mental energy that deals 16 damage to enemies in a 10m radius around its target, up to 24 in total.",
                values = nil
            }, {
                name = "Mind Control",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to gain permanent control over an enemy unit but kill Parasite Swarm. Restricted to 2 orb creatures with a maximum of 150 power costs. Does not work on extra-large units.",
                values = nil
            }
        }
    },
    Phalanx = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Neutral"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "L",
        size = "S",
        damage = {570, 570, 570, 570},
        health = {1320, 1320, 1320, 1320},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Defensive Formation",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to gain: Payback, Steadfast, Slow",
                values = nil
            }, {
                name = "Payback",
                type = "Passive",
                upgrade_dependency = 0,
                description = "When being trampled, each member of this squad deals 230 damage to enemy.",
                values = nil
            }, {
                name = "Steadfast",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Cannot be knocked back.",
                values = nil
            }, {
                name = "Slow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Slow movement.",
                values = nil
            }
        }
    },
    ["Phase Tower"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow"},
        power_cost = {60, 60, 60, 60},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {900, 900, 900, 900},
        health = {950, 950, 950, 950},
        upgrade_locations = {
            "King of the Giants", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Shadow Bolts",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, tower shoots a shadow bolt that deals 110 damage to enemies in a 5m radius around its target, up to 160 in total.",
                values = nil
            }, {
                name = "Relocation",
                type = "Active",
                upgrade_dependency = 0,
                description = "Building relocates at another spot within a 50m range. After the relocation tower will be more vulnerable taking 200% more damage for 40 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Plague = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Neutral", "Neutral"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Mass Epidemic",
                type = nil,
                upgrade_dependency = 0,
                description = "Infects up to 5 hostile or friendly units with a parasite that deals 100 damage every second. After 4 seconds the parasites pass over to the next available targets within a 25m range. Every parasite may affect a total of 4 hostile or friendly targets. Parasites will vanish if no more targets are nearby. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Portal Nexus"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Device",
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Teleport Station",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to build a teleport station near an own ground unit. Once the station has been built own and friendly units can enter either of them to be teleported between the two spots. Only one teleport station can be built. Cannot be prevented by spellblocking abilities.",
                values = nil
            }, {
                name = "Explosive Death",
                type = "Passive",
                upgrade_dependency = 0,
                description = "If the teleport station is destroyed it will also make the portal explode dealing 3000 damage to hostile and friendly entities in a 20m radius, up to 12000 in total. Knocks back small and medium units.",
                values = nil
            }
        }
    },
    ["Primal Defender"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {835, 835, 835, 835},
        health = {1300, 1300, 1300, 1300},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Earthstrike",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, tower fires a magic bolt that deals 100 damage to enemies in a 5m radius around its target, up to 150 in total. Affects ground targets only.",
                values = nil
            }, {
                name = "Skywatch",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to gain: Cloudstrike",
                values = nil
            }, {
                name = "Cloudstrike",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, tower fires a magic bolt at enemies that deals 170 damage. Affects air targets only.",
                values = nil
            }
        }
    },
    ["Primeval Watcher"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Neutral", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Spirit Corruptor",
        counter = "Special",
        size = "XL",
        damage = {4300, 4300, 4300, 4300},
        health = {3650, 3650, 3650, 3650},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gaze of the Watcher",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit casts an energy ray that jumps from one enemy to the next. Deals 180 damage to the first target while the following targets will receive continuously less damage.",
                values = nil
            }, {
                name = "Stasis Field",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to paralyze enemies within a 25m radius for 10 seconds. After the effect wears off, targets are immune against Paralyze for a while. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Promise of Life (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Nature", "Neutral"},
        power_cost = {180, 180, 180, 180},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Revive",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Casts a charm upon the targeted friendly unit that will make it ressurect after 15 seconds if it dies within 20 seconds. The affected unit will gain an Ice Shield as soon as it is ressurected that absorbs up to 800 damage for 20 seconds. It cannot be killed by the player. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Promise of Life (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Nature", "Neutral"},
        power_cost = {180, 180, 180, 180},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Revive",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Casts a charm upon the targeted friendly unit that will make it ressurect after 3 seconds if it dies within 20 seconds. The affected unit cannot be killed by the player. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Protector's Seal (Lost Souls)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Shadow", "Neutral"},
        power_cost = {165, 165, 165, 165},
        charges = 4,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Lost Absorption",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a 25m radius safe zone that absorbs all damage done by hostile Twilight, Nature and Fire units. Lasts for 15 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Protector's Seal (Twilight)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {165, 165, 165, 165},
        charges = 4,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Twilight Absorption",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a 25m radius safe zone that absorbs all damage done by hostile Lost Souls, Shadow and Frost units. Lasts for 15 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Pyromaniac (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Fire", "Fire"},
        power_cost = {100, 100, 100, 100},
        charges = 16,
        squadsize = 1,
        class = "Device",
        damage = {1880, 1880, 1880, 1880},
        health = {1290, 1290, 1290, 1290},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Flamethrower",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Building casts blazing flames that deal 94 damage to enemies every second. Additionally, it sets every enemy on fire who will burn on for another 10 second after leaving the flames taking increasingly more damage the longer they have been exposed to them.",
                values = nil
            }
        }
    },
    ["Pyromaniac (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Fire", "Fire"},
        power_cost = {100, 100, 100, 100},
        charges = 16,
        squadsize = 1,
        class = "Device",
        damage = {1880, 1880, 1880, 1880},
        health = {1290, 1290, 1290, 1290},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Flamethrower",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Building casts blazing flames that deal 94 damage to enemies every second. Additionally, it is also able to attack flying units.",
                values = nil
            }
        }
    },
    QueekQueek = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Destroyer",
        counter = "L",
        size = "M",
        damage = {660, 660, 660, 660},
        health = {550, 550, 550, 550},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Superpig",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to make QueekQueek become Super Pig. He then will fly faster, deal 85% more and take 50% less damage.Also allow him to do ranged attack.",
                values = nil
            }
        }
    },
    ["QueekQueek (Superpig)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Destroyer",
        counter = "L",
        size = "M",
        damage = {660, 660, 660, 660},
        health = {550, 550, 550, 550},
        upgrade_locations = {},
        upgrade_text = nil,
        abilities = {
            {
                name = "Pitchfork of Doom",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "placeholder",
                values = nil
            }, {
                name = "Make a Runner",
                type = "Active",
                upgrade_dependency = 0,
                description = "placeholder",
                values = nil
            }, {
                name = "Superpowers",
                type = "Passive",
                upgrade_dependency = 0,
                description = "placeholder",
                values = nil
            }
        }
    },
    Rageclaws = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "M",
        size = "S",
        damage = {360, 360, 360, 360},
        health = {960, 960, 960, 960},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Rage",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit does increasingly more damage the longer it attacks but falls back to its original damage output if it doesn't fight for 5 seconds.",
                values = nil
            }
        }
    },
    ["Rageflame (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {130, 130, 130, 130},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "Special",
        size = "L",
        damage = {1300, 1300, 1300, 1300},
        health = {1600, 1600, 1600, 1600},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Frostshower",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit casts frosty flames that deal 65 damage to enemies every second. After 7 seconds it will freeze the attacked unit or building for 10 seconds. After freeze wears off, targets are immune against Freeze for 10 seconds.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Rageflame (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {130, 130, 130, 130},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "Special",
        size = "L",
        damage = {1300, 1300, 1300, 1300},
        health = {1600, 1600, 1600, 1600},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Frostshower",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit casts frosty flames that deal 65 damage to enemies every second. After 7 seconds it will freeze the attacked units for 10 seconds. After freeze wears off, targets are immune against Freeze for 10 seconds. What is more, the unit is able to ignore the usual damage reduction of frozen enemies and will deal its full damage against them.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Rallying Banner"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Shrine",
        health = {560, 560, 560, 560},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Rally",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Units summoned within a 25m radius around the banner are not dazed.",
                values = nil
            }
        }
    },
    Ravage = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infusion",
                type = nil,
                upgrade_dependency = 0,
                description = "While in combat target unit regenerates 75 life points every 2 seconds, up to 750 in total. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Ravenheart = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral", "Neutral"},
        power_cost = {350, 350, 350, 350},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Artifact Dominator",
        counter = "XL",
        size = "XL",
        damage = {4125, 4125, 4125, 4125},
        health = {4050, 4050, 4050, 4050},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Broadside",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, 4 smaller cannons at the ship's flank shoot independently. Every one deals 100 damage to enemies in a 5m radius, up to 150 in total.",
                values = nil
            }, {
                name = "Mine Field",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to drop 2 fiery mines that explode as soon as an enemy unit is nearby dealing each 500 damage in a 15m radius, up to 1500 in total. If not triggered the mines will vanish after 40 seconds. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Harpoon",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to fire Ravenheart's mighty harpoon dealing 1000 damage to the target enemy and up to 3000 in total within a 15m radius. What is more, the harpoon is equipped with heavy nets that will rope in all damaged enemy units. Netted units are immobile but still able to use ranged attacks and special abilities. Affects ground targets only. Lasts for 20 seconds. After the effect wears off, targets are immune against Root for a while. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Ravenheart (Promo)"] = {
        description = "Blight's famous flagship",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral", "Neutral"},
        power_cost = 350,
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Artifact Dominator",
        counter = "XL",
        size = "XL",
        damage = 4125,
        health = 4900,
        abilities = {
            {
                name = "Broadside",
                type = "Autocast",
                description = "Every 2 seconds, 4 smaller cannons at the ship's flank shoot independently. Every one deals 110 damage to enemies in a 5m radius, up to 165 in total."
            }, {
                name = "Mine Field",
                type = "Active",
                cost = 65,
                description = "Activate to drop 2 fiery mines that explode as soon as an enemy unit is nearby dealing each 500 damage in a 15m radius, up to 1500 in total. If not triggered the mines will vanish after 40 seconds. Reusable every 20 seconds."
            }, {
                name = "Harpoon",
                type = "Active",
                cost = 110,
                description = "Activate to fire off Ravenheart's mighty harpoon dealing 1000 damage to the target enemy and up to 3000 in total within a 15m radius. What is more, the harpoon is equipped with heavy nets that will rope in all damaged enemy units. Netted units are immobile but still able to use ranged attacks and special abilities. Affects ground targets only. Lasts for 20 seconds. After the effect wears off, targets are immune against Root for a while. Reusable every 20 seconds."
            }
        }
    },
    ["Ray of Light"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Healing Radiance",
                type = nil,
                upgrade_dependency = 0,
                description = "Friendly units within a 15m radius will regenerate 3% of their life points every second for up to 2500 life points in total. Lasts for 30 seconds. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    Razorleaf = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Forestkin Dominator",
        counter = "L",
        size = "XL",
        damage = {2250, 2250, 2250, 2250},
        health = {2760, 2760, 2760, 2760},
        upgrade_locations = {
            "Crusade", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Root",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Rain of Razorleaves, Linked Fire",
                values = nil
            }, {
                name = "Rain of Razorleaves",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 5 seconds, unit releases volleys of razor-sharp leaves that deal 50 damage to enemies in a 5m radius around its target, up to 70 in total. Has a long range of 50m.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 7 entities connected to the root network support each other enabling more powerful attacks.",
                values = nil
            }
        }
    },
    ["Razorleaf (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Neutral"},
        power_cost = 260,
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = 2550,
        health = 3420,
        abilities = {
            {
                name = "Root",
                type = "Toggle",
                cost = 0,
                description = "Enable to become immobile and gain: Rain of Razorleaves, Linked Fire"
            }, {
                name = "Rain of Razorleafs",
                type = "Autocast",
                description = "Every 5 seconds, unit releases volleys of razor-sharp leaves that deal 34 damage to enemies in a 5m radius around its target, up to 51 in total. Has a long range of 50m."
            }, {
                name = "Linked Fire",
                type = "Passive",
                description = "Up to 6 entities connected to the root network support each other enabling more powerful attacks. The unit will then be able to continuously release more and more razor-sharp leaves at once with each volley"
            }
        }
    },
    ["Razorshard (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Elemental Destroyer",
        counter = "S",
        size = "M",
        damage = {600, 600, 600, 600},
        health = {600, 600, 600, 600},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Bombing Raid",
                type = "Toggle",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Active to become immobile and begin a destructive bombing raid. Every 5 seconds, unit fires off a bomb that explodes after 4 seconds dealing 120 damage to units and 120 to structures in a 10m radius, up to 300 in total. Knock back small and medium units. Affect ground targets only. Has an exceptionally long range of 40m . Last until deactivated.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "This unit take 15% less damage.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Razorshard (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Elemental Destroyer",
        counter = "S",
        size = "M",
        damage = {600, 600, 600, 600},
        health = {600, 600, 600, 600},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Bombing Raid",
                type = "Toggle",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to become immobile and begin a destructive bombing raid. Every 5 seconds, unit fires off a bomb that explodes after 3 seconds dealing 120 damage to enemies in a 10m radius, up to 180 in total. Affects ground targets only. Has an exceptionally long range of 40m. While in this state, friendly units within a 15m radius around the caster regenerate 20 life points every second. Lasts until deactivated.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "This unit take 15% less damage.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    Regrowth = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral", "Neutral", "Neutral"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Emerald Blessing",
                type = nil,
                upgrade_dependency = 0,
                description = "Instantly heals friendly units wihtin a 25m radius for up to 1700 life points in total. Also creates an aura where friendly units regenerate 3% of their life points every second for up to 4200 life points in total. Lasts for 30 seconds. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Resource Booster"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Device",
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {
            "Bad Harvest", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Power Flow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Own power wells in a 20m radius will produce 33% more power but will also consume 115% more power than before.",
                values = nil
            }
        }
    },
    ["Retreating Circle"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Neutral", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Homeland Portal",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a Portal that teleports friendly units in a 15m radius back to the nearest monument of their owner. Lasts for 30 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Revenant's Blessing (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Shadow"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Immortal",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates an aura that extends the life time of a Lost Souls Revenant. Within a 20m radius every Lost Revenant's life time will stop to run out and they deal 25% more damage. Upon leaving the aura the hourglass will be reinstalled and remaining life time will again run out. Last for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Revenant's Blessing (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Frost", "Shadow"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Immortal",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates an aura that extends the life time of a Lost Souls Revenant. Within a 20m radius every Lost Revenant's life time will stop to run out and they regenerate 15 life points per second. Upon leaving the aura the hourglass will be reinstalled and remaining life time will again run out. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Revenge = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Mirror Pain",
                type = nil,
                upgrade_dependency = 0,
                description = "All friendly entities in 25m radius take only 80% damage, transferring all of the remaining damage to enemies in range. Lasts for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Rifle Cultists"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow", "Neutral", "Neutral", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 20,
        squadsize = 6,
        class = "Human Archers",
        counter = "L",
        size = "S",
        damage = {960, 960, 960, 960},
        health = {810, 810, 810, 810},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Rifle Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit fires slugs at enemies that deal 16 damage.",
                values = nil
            }, {
                name = "Dark Grenade",
                type = "Active",
                upgrade_dependency = 0,
                cost = 100,
                description = "Activate to charge a dark sphere that explodes after having been fed with 24 shots dealing 2400 damage to hostile and friendly entities in a 20m radius around its target, up to 3600 in total. Knocks back small and medium units. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Rioter's Retreat (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {80, 80, 80, 80},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {700, 700, 700, 700},
        health = {1350, 1350, 1350, 1350},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Uproar",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 second, the tower delivers several shots each dealing 56 damage to enemies within a 5m radius, up to 84 in total. It may attack two targets at once.",
                values = nil
            }, {
                name = "Blessed Retreat",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Friendly Bandit units within a 25m radius around the tower take 25% less damage.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the building will repair the building and restore its life points.",
                values = nil
            }
        }
    },
    ["Rioter's Retreat (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {80, 80, 80, 80},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {700, 700, 700, 700},
        health = {1350, 1350, 1350, 1350},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Uproar",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 second, the tower delivers several shots each dealing 56 damage to enemies within a 5m radius, up to 84 in total. It may attack two targets at once.",
                values = nil
            }, {
                name = "Gifted Retreat",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Friendly Bandit units within a 25m radius around the tower regenerate 70 life points every second.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the building will repair the building and restore its life points.",
                values = nil
            }
        }
    },
    Ripper = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Undead Soldier",
        counter = "S",
        size = "S",
        damage = {720, 720, 720, 720},
        health = {660, 660, 660, 660},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Cannibalize",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit consumes nearby corpses to regenerate 10 life points every second.",
                values = nil
            }
        }
    },
    ["Rocket Tower"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire"},
        power_cost = {80, 80, 80, 80},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {1700, 1700, 1700, 1700},
        health = {2000, 2000, 2000, 2000},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Rocket Barrage",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 5 seconds tower shoots a maximum of 3 rockets at different targets in a 5m radius. Each rocket deals 85 damage to its target. Knocks back small and medium units.",
                values = nil
            }
        }
    },
    ["Rogan Kayle"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Lyrish Leader",
        counter = "M",
        size = "M",
        damage = {790, 790, 790, 790},
        health = {1000, 1000, 1000, 1000},
        upgrade_locations = {
            "Encounters with Twilight", "The Dwarven Riddle",
            "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "It's the shoes",
                type = "Active",
                upgrade_dependency = 0,
                cost = 60,
                description = "Activate to awe up to 3 enemy units within a 15m radius around Rogan. Affected units will be awestruck by his compelling presence and will not be able to fight or attack for 13 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Inspiring Leader",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Friendly units within a 15m radius will be inspired by Rogan's presence and deal 25% more damage while surrounding him.",
                values = nil
            }
        }
    },
    ["Rogan Kayle (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral"},
        power_cost = 90,
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Lyrish Leader",
        counter = "M",
        size = "M",
        damage = 990,
        health = 1000,
        abilities = {
            {
                name = "It's the shoes",
                type = "Active",
                cost = 50,
                description = "Activate to awe up to 3 enemy units within a 15m radius around Rogan. Affected units will be awestruck by his compelling presence and will not be able to fight or attack for 15 seconds. Reusable every 25 seconds."
            }, {
                name = "Inspiring Leader",
                type = "Passive",
                description = "Friendly units within a 15m radius will be inspired by Rogan's presence and deal 25% more damage while surrounding him."
            }
        }
    },
    ["Root Nexus (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {30, 30, 30, 30},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Device",
        health = {780, 780, 780, 780},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Repeater",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Is able to repeat the root network and bridge the distance between two entities connected to it. Those entities may then support each other even across wide distances although the Root Nexus itself does not grant any additional support.",
                values = nil
            }, {
                name = "Blessed Support",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Friendly entities connected to the root network within a 25m radius around Root Nexus will take 25% less damage.",
                values = nil
            }
        }
    },
    ["Root Nexus (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {30, 30, 30, 30},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Device",
        health = {780, 780, 780, 780},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Repeater",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Is able to repeat the root network and bridge the distance between two entities connected to it. Those entities may then support each other even across wide distances although the Root Nexus itself does not grant any additional support.",
                values = nil
            }, {
                name = "Gifted Support",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Friendly entities connected to the root network within a 25m radius around Root Nexus will regenerate 2% of their life points every 2 seconds.",
                values = nil
            }
        }
    },
    ["Sandstorm (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Desert Sand",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a gritty tornado that moves along a defined path of at least 15m length, hurling several boulders, each dealing 90 damage to enemies in a 10m radius, up to 270 in total per second. It devestates the area in such a way as to make it impossible to play out cards in it for 15 seconds. May cover a maximum distance of 30m. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Sandstorm (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {230, 230, 230, 230},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Desert Sand",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a gritty tornado that moves along a defined path of at least 15m length, hurling several boulders, each dealing 90 damage to enemies in a 10m radius, up to 270 in total per second. It corrupts the area in such a way as to make playing out cards backlash: in addition to its normal effect every card played out will also deal 3 times their power costs x their era as area damage to hostile and friendly entities. May cover a maximum distance of 30m. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Santa Claus (Promo)"] = {
        description = "Merry Christmas! Santa Claus always means well and has a bagful of presents to give away. But his generosity will only last during the Jolly Season. As soon as Christmas time is over his special abilities will no longer be available.",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = 200,
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Giant Benefactor",
        counter = "L",
        size = "XL",
        damage = 2000,
        health = 2000,
        abilities = {
            {
                name = "Blue Gift",
                type = "Active",
                cost = 0,
                description = "Activate to distribute Xmas gifts among surrounding friendly unit within a 25m radius around the caster. Every affected unit will gain an additional special ability that allows them to trigger miraculous healing powers. As soon as the special is activated the unit will instantly regenerate 750 life points. Every unit may only be granted one gift. Reusable every 60 seconds."
            }, {
                name = "Red Gift",
                type = "Active",
                cost = 0,
                description = "Activate to distribute Xmas gifts among surrounding friendly unit within a 25m radius around the caster. Every affected unit will gain an additional special ability that allows them to teleport back to the nearest monument of their owner. Every unit may only be granted one gift. Reusable every 60 seconds."
            }, {
                name = "Christmas Peace",
                type = "Active",
                cost = 0,
                description = "Activate to install peace among surrounding units. Friendly and hostile units within a 25m radius alike will stop fighting each other and honor the cease-fire for 15 seconds. Reusable every 60 seconds."
            }
        }
    },
    ["Satanael (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Shadow"},
        power_cost = {220, 220, 220, 220},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Demon Destroyer",
        counter = "XL",
        size = "XL",
        damage = {3100, 3100, 3100, 3100},
        health = {2500, 2500, 2500, 2500},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Crystalline Shock",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit casts shocks of crystalline energy that deal 372 damage to enemies in a 15m radius around the target, up to 558 in total.",
                values = nil
            }, {
                name = "Infused Fealty",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to conjure 1 squad of Snapjaws with an affinity towards Fire. They will have the same upgrade level as Satanael himself. While surrounding him Snapjaws will be infused by his infernal powers: they will then deal 150% more and take 50% less damage. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Satanael (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow", "Shadow"},
        power_cost = {220, 220, 220, 220},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Demon Destroyer",
        counter = "XL",
        size = "XL",
        damage = {3100, 3100, 3100, 3100},
        health = {2500, 2500, 2500, 2500},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Crystalline Shock",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit casts shocks of crystalline energy that deal 372 damage to enemies in a 15m radius around the target, up to 558 in total.",
                values = nil
            }, {
                name = "Tainted Fealty",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "",
                values = nil
            }
        }
    },
    Scavenger = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Beast Soldiers",
        counter = "S",
        size = "M",
        damage = {570, 570, 570, 570},
        health = {540, 540, 540, 540},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Crippling Bite",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Attacked units may only move at walk speed for 5 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Scorched Earth (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Deconstruction",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Scorches the ground within a 20m radius which makes it impossible to build any hostile structures on it for the next 10 seconds. Structures within that area will take 20% more damage. The erection of buildings that are presently under construction will be interrupted and it will not be possible to repair anything. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Scorched Earth (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Deconstruction",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Scorches the ground within a 20m radius which makes it impossible to build any hostile structures on it for the next 10 seconds. Buildings within that area will deal 50% less damage. The erection of buildings that    are presently under construction will be interrupted and it will not be possible to repair anything. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Scythe Fiends"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 4,
        class = "Beast Soldiers",
        counter = "S",
        size = "M",
        damage = {1100, 1100, 1100, 1100},
        health = {1040, 1040, 1040, 1040},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tunneling",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to teleport unit to an own ground unit or structure within a 30m range. Reusable every 10 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Second Chance (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow", "Shadow", "Neutral"},
        power_cost = {220, 220, 220, 220},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Enchantment",
        counter = "S",
        size = "S",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Global Revive",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Casts a hex on every unit in the current game that will make it resurrect after 3 seconds if it dies within 15 seconds. Affected units cannot be killed by the player. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Second Chance (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow", "Shadow", "Neutral"},
        power_cost = {220, 220, 220, 220},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Enchantment",
        counter = "S",
        size = "S",
        upgrade_locations = {
            "Defending Hope", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Global Revive",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Casts a hex on every unit in the current game that will make it ressurect after 3 seconds if it dies within 15 seconds. Revived creatures are able to deal 50% more damage but they will irrevocably die after 30 seconds. Affected units cannot be killed by the player. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Shadow Insect"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "M",
        damage = {1200, 1200, 1200, 1200},
        health = {1030, 1030, 1030, 1030},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Soul Shock",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to release a shot of destructive energy that deals 370 damage to enemies in a 5m radius around its target, up to 500 in total. Needs to have gathered 900 life points from corpse first. Knocks back small units. Reusable every 3 seconds.",
                values = nil
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Harvests energy from nearby corpses equal to their former maximum life points to enable Soul Shock. A maximum of 1800 life points can be stored at once.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Steadfast",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Cannot be knocked back.",
                values = nil
            }
        }
    },
    ["Shadow Mage"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Spirit Wizard",
        counter = "Special",
        size = "M",
        damage = {960, 960, 960, 960},
        health = {560, 560, 560, 560},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Soulburn",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit fires a bolt of dark energy that deals 230 damage to enemies in a 10m radius around its target, up to 345 in total. Every shot drains the unit's own life points by 130. Unit will no longer attack once its life points have been reduced below 130. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Sacrifice",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to sacrifice an own unit in order to transfer the victim's life points into own life points. Reusable every 15 seconds.",
                values = nil
            }, {
                name = "Foul Play",
                type = "Active",
                upgrade_dependency = 0,
                description = "Turns an own unit into a living bomb that explodes after 20 seconds dealing 200% of its current lifepoints as damage to hostile and friendly entities within a 25m radius, up to 33% per target. Knocks back small and medium units. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Shadow Phoenix"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Demon Soldier",
        counter = "Special",
        size = "L",
        damage = {1500, 1500, 1500, 1500},
        health = {645, 645, 645, 645},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Crashdive",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit starts a powerful suicidal attack that deals 500 damage to enemies in a 25m radius around its target, up to 2000 in total. Unit dies during the attack. Knocks back small and medium units. Affects ground targets only.",
                values = nil
            }, {
                name = "Reincarnation",
                type = "Passive",
                upgrade_dependency = 0,
                description = "When unit dies after performing a Crashdive it may rise like a phoenix. To be reborn it needs to collect 2000 life points from corpses within a 25m radius 3 seconds after its death.",
                values = nil
            }
        }
    },
    ["Shadow Worm"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Shadow", "Shadow"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = {4000, 4000, 4000, 4000},
        health = {3000, 3000, 3000, 3000},
        upgrade_locations = {
            "Nightmare's End", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Nether Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit hurls a bolt of Nether that deals 400 damage to enemies in a 10m radius around its target, up to 600 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Mass Disintegration",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Disintegrates up to 5 targets simultaneously over time. Target units will be paralyzed during disintegration and cannot be attacked by other units. If the spell is interrupted prematurely the targets will be released unharmed. Spell turns caster immobile and applies increasing damage the more targets it affects. Lasts until deactivated.",
                values = nil
            }, {
                name = "Earth Dive",
                type = "Passive",
                upgrade_dependency = 0,
                description = "While moving around unit takes 50% less damage and knocks back small and medium units dealing additionally 250 damage to enemy units in target area, up to 1000 in total. Affects ground targets only.",
                values = nil
            }
        }
    },
    Shaman = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Ogre Supporter",
        counter = "M",
        size = "M",
        damage = {410, 410, 410, 410},
        health = {410, 410, 410, 410},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Heal",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 5 seconds, unit heals a friendly unit for 120 life points.",
                values = nil
            }, {
                name = "Mystical Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit casts a bolt of mystical energy that deals 58 damage to enemies in a 5m radius around its target, up to 87 in total.",
                values = nil
            }
        }
    },
    ["Shatter Ice"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Frost", "Frost", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare's End", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Explosion",
                type = nil,
                upgrade_dependency = 0,
                description = "Deals 2400 damage to frozen units in a 15m radius, up to 7200 in total. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Shield Building"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Neutral", "Neutral"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ice Shield",
                type = nil,
                upgrade_dependency = 0,
                description = "Applies Ice Shield on a friendly building that absorbs 1300 damage for 8 seconds. Ice Shield renews itself every 7 seconds for up to 3 times in total. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Shrine of Greed"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Shadow"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1400, 1400, 1400, 1400},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gimme Power!",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to immediately transfer 30% of own and friendly player's current void power back into the acutal power pool. There will be no power refund at all for 40 seconds afterwards. Has a 60 seconds cool-down after the building was built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Shrine of Martyrs"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {125, 125, 125, 125},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Shield of the Martyr",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to create protective shields with a total strength of 400% of the current void power which are applied to friendly units. Shields last for 30 seconds and absorb 50% of all damage. Has a 60 seconds cool-down after the building was built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Shrine of Memory"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Echoes of the Past",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to regain Void Power 100% faster for 30 seconds. Has a 60 seconds cool-down after the building was built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Shrine of War"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1600, 1600, 1600, 1600},
        upgrade_locations = {
            "Siege of Hope", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Song of Battle",
                type = "Active",
                upgrade_dependency = 0,
                description = "Whenever an enemy is killed 4% of the current void power will be added to the actual power pool. Lasts for 20 seconds. Has a 60 seconds cool-down after the building was built. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Silverwind Lancers"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Neutral", "Neutral"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 4,
        class = "Human Soldiers",
        counter = "L",
        size = "M",
        damage = {960, 960, 960, 960},
        health = {1400, 1400, 1400, 1400},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }, {
                name = "Stomp",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Tramples small units.",
                values = nil
            }
        }
    },
    ["Skeleton Warriors"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Undead Soldiers",
        counter = "M",
        size = "S",
        damage = {600, 600, 600, 600},
        health = {510, 510, 510, 510},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Unholy Armor",
                type = "Active",
                upgrade_dependency = 0,
                description = "Unit takes 30% less damage for 20 seconds. After the effect wears off unit will die.",
                values = nil
            }
        }
    },
    ["Skycatcher (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Fire", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Dominator",
        counter = "Special",
        size = "XL",
        damage = {4660, 4660, 4660, 4660},
        health = {2640, 2640, 2640, 2640},
        upgrade_locations = {
            "The Treasure Fleet", "The Insane God", "The Insane God"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Twisted Wake",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit hurls a wake of mana that deals 520 damage to enemies in a 10m radius around its target, up to 780 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Blessed Impairment",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 100,
                description = "Activate to release a debilitating substance into the surrounding atmosphere that blocks all melee attacks from hostile units within a 20m radius around the caster. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Twilight Infection",
                type = "Active",
                upgrade_dependency = 0,
                cost = 50,
                description = "Infects an own ground unit with the Twilight Curse: the target will be endowed with the gift of Transformation. During the next 40 seconds the unit can transform at will into any other twilight creature in the current deck whose orb requirements are met. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Skycatcher (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Fire", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Dragonkin Dominator",
        counter = "Special",
        size = "XL",
        damage = {4660, 4660, 4660, 4660},
        health = {2640, 2640, 2640, 2640},
        upgrade_locations = {
            "Sunbridge", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Twisted Wake",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit hurls a wake of mana that deals 520 damage to enemies in a 10m radius around its target, up to 780 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Gifted Impairment",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 100,
                description = "Activate to release a debilitating substance into the surrounding atmosphere that blocks all normal ranged attacks from hostile units within a 20m radius around the caster. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Twilight Infection",
                type = "Active",
                upgrade_dependency = 0,
                cost = 50,
                description = "Infects an own ground unit with the Twilight Curse: the target will be endowed with the gift of Transformation. During the next 40 seconds the unit can transform at will into any other twilight creature in the current deck whose orb requirements are met. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Skydefender (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {80, 80, 80, 80},
        charges = 16,
        squadsize = 0,
        class = "Tower",
        damage = {1470, 1470, 1470, 1470},
        health = {1400, 1400, 1400, 1400},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Thrill",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, tower shoots penetrating bolts that deals 105 damage to enemy units in a 5m radius around its target, up to 157 in total. Attacked units cannot use their special abilities for 15 seconds. Only affects air units.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the building will repair the building and restore its life points.",
                values = nil
            }
        }
    },
    ["Skydefender (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {80, 80, 80, 80},
        charges = 16,
        squadsize = 0,
        class = "Tower",
        damage = {1470, 1470, 1470, 1470},
        health = {1400, 1400, 1400, 1400},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Thrill",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, tower bolts penetrating arrows that deals 105 damage to enemy units in a 5m radius around its target, up to 157 in total. The damage dealt by this building cannot be warded off with the help of damage reducing abilities because it is able to circumvent every buff or protective shield. Only affects air units.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the building will repair the building and restore its life points.",
                values = nil
            }
        }
    },
    ["Skyelf Commander"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Sky Elf Crusader",
        counter = "XL",
        size = "L",
        damage = {1500, 1500, 1500, 1500},
        health = {1230, 1230, 1230, 1230},
        upgrade_locations = {
            "Defending Hope", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Celestial Blade",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit casts a lance of light that deals 105 damage to enemies in a 5m radius around its target, up to 160 in total.",
                values = nil
            }, {
                name = "High Guard",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bind to a friendly building. Cannot attack while bound.",
                values = nil
            }, {
                name = "Resilient",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The affected building will become resilient and takes 65% less damage.",
                values = nil
            }
        }
    },
    ["Skyelf Sage"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Sky Elf Crusader",
        counter = "L",
        size = "L",
        damage = {1030, 1030, 1030, 1030},
        health = {975, 975, 975, 975},
        upgrade_locations = {
            "Nightmare Shard", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Celestial Blade",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit casts a lance of light that deals 70 damage to enemies in a 5m radius around its target, up to 110 in total.",
                values = nil
            }, {
                name = "High Guard",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bind to a friendly building. Cannot attack while bound.",
                values = nil
            }, {
                name = "Surge of Strength",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The affected building gains Surge of Strength and deals 85% more damage.",
                values = nil
            }
        }
    },
    ["Skyelf Templar"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Sky Elf Crusader",
        counter = "XL",
        size = "L",
        damage = {1350, 1350, 1350, 1350},
        health = {645, 645, 645, 645},
        upgrade_locations = {
            "Siege of Hope", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Sword of the Sky",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit casts a lance of light that deals 95 damage to enemies in a 5m radius around its target, up to 140 in total. Can only attack flying units.",
                values = nil
            }, {
                name = "High Guard",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to bind to a friendly building. Cannot attack while bound.",
                values = nil
            }, {
                name = "Blessing of Light",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The affected building gains Blessing of Light and regenerates 60 every second.",
                values = nil
            }
        }
    },
    ["Skyfire Drake"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Dragonkin Soldier",
        counter = "M",
        size = "L",
        damage = {1360, 1360, 1360, 1360},
        health = {390, 390, 390, 390},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Fireball",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit hurls a ball of fire that deals 150 damage to enemies in a 5m radius around its target, up to 230 in total.",
                values = nil
            }
        }
    },
    ["Slaver (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "L",
        size = "M",
        damage = {770, 770, 770, 770},
        health = {710, 710, 710, 710},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Infused Blowout",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit dies it will trigger an explosion dealing 300 damage to units in a 15m radius, up tp 450 in total.",
                values = nil
            }
        }
    },
    ["Slaver (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "L",
        size = "M",
        damage = {770, 770, 770, 770},
        health = {710, 710, 710, 710},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Tainted Blowout",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit dies it will trigger an explosion dealing 270 damage to units in a 15m radius, up to 350 in total. Knocks back small units.",
                values = nil
            }
        }
    },
    ["Snapjaws (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Special",
        charges = 16,
        squadsize = 4,
        class = "Demon Corruptor",
        counter = "Special",
        size = "S",
        damage = {280, 280, 280, 280},
        health = {520, 520, 520, 520},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Dark Matter",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit spits chunks of dark matter that deal 5 damage to enemies in a 3m radius around their targets, up to 9 in total.",
                values = nil
            }, {
                name = "Infused Dilution",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Enemies will take 50% more damage as long as being attacked by this unit.",
                values = nil
            }
        }
    },
    ["Snapjaws (Shadow)"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Special",
        charges = 16,
        squadsize = 4,
        class = "Demon Corruptor",
        counter = "Special",
        size = "S",
        damage = {280, 280, 280, 280},
        health = {520, 520, 520, 520},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Dark Matter",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit spits chunks of dark matter that deal 5 damage to enemies in a 3m radius around their targets, up to 9 in total.",
                values = nil
            }, {
                name = "Tainted Dilution",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Enemies will deal 50% less damage as long as being attacked by this unit.",
                values = nil
            }
        }
    },
    ["Soul Splicer (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Shrine",
        health = {1250, 1250, 1250, 1250},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Soul Suction",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to place a 20m corpse collecting aura within 40m range. For the next 10 seconds all corpses in that area will be gathered and transferred to Soul Splicer. Reusable every 10 seconds",
                values = nil
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points to either store them away or heal friendly units around it.",
                values = nil
            }, {
                name = "Infused Necromancy",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every second friendly units in a 25m radius will receive a buff that allows them to deal 25% more damage. The effect will last on for another 15 seconds after leaving Soul Splicer's aura. To enable this ability corpses have to be gathered first. The stored corpses will then be used up to apply the buffs.",
                values = nil
            }, {
                name = "Corpse Sharing",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Activate this mode to make the stored corpses accessible for other entities that also gather energy from corpses. In this mode the building will no longer be able to heal nor will it collect nearby corpses automatically.",
                values = nil
            }
        }
    },
    ["Soul Splicer (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Shadow"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Shrine",
        health = {1250, 1250, 1250, 1250},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Soul Suction",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to place a 20m corpse collecting aura within 40m range. For the next 10 seconds all corpses in that area will be gathered and transferred to Soul Splicer. Reusable every 10 seconds",
                values = nil
            }, {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points to either store them away or heal friendly units around it.",
                values = nil
            }, {
                name = "Gifted Necromancy",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every second friendly units in a 25m radius regenerate 90 life points. to enable this ability corpses have to be gathered first. The stored corpses will then be used up during the healing process.",
                values = nil
            }, {
                name = "Corpse Sharing",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Activate this mode to make the stored corpses accessible for other entities that also gather energy from corpses. In this mode the building will no longer be able to heal nor will it collect nearby corpses automatically.",
                values = nil
            }
        }
    },
    ["Soulhunter (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "L",
        size = "XL",
        damage = {4500, 4500, 4500, 4500},
        health = {3590, 3590, 3590, 3590},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Minefield",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to place 4 mines within a 30m long line in front of the unit.",
                values = nil
            }, {
                name = "Blessed Birth",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "When being spawned the unit knocks back every small, medium and large enemy within a 20m radius.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Soulhunter (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Undead Dominator",
        counter = "L",
        size = "XL",
        damage = {4500, 4500, 4500, 4500},
        health = {3590, 3590, 3590, 3590},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Minefield",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to place 4 mines within a 30m long line in front of the unit.",
                values = nil
            }, {
                name = "Tainted Birth",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "When being spawned the unit stirs up a lot of dust that deals 50 damage per second to every enemy within a 20m radius for 5 seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    Soulshatter = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Shadow", "Neutral", "Neutral"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare Shard", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Soul Explosion",
                type = nil,
                upgrade_dependency = 0,
                description = "Initially deals 850 damage to hostile and friendly entities in a 25m radius, up to 2550 in total. Affected units will in turn explode as soon as they die and also deal 360 damage to hostile and friendly entities in a 15m radius, up to 540 in total. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Spearmen = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Human Soldiers",
        counter = "S",
        size = "S",
        damage = {600, 600, 600, 600},
        health = {720, 720, 720, 720},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Weapon Change",
                type = "Active",
                upgrade_dependency = 0,
                description = "Makes unit more effective against medium units instead of small ones. Lasts until deactivated.",
                values = nil
            }
        }
    },
    Spikeroot = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Forestkin Dominator",
        counter = "M",
        size = "L",
        damage = {1200, 1200, 1200, 1200},
        health = {1000, 1000, 1000, 1000},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Root",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Spikes, Linked Fire",
                values = nil
            }, {
                name = "Spikes",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 5 seconds, unit erupts a line of spikes from the ground that deal several times damage to all enemies they strike. Each eruption of spikes deals 100 damage to all enemies they strike , up to 150 in total.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 5 entities connected to the root network support each other enabling more powerful attacks.",
                values = nil
            }
        }
    },
    ["Spirit Hunters (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Special",
        charges = 20,
        squadsize = 6,
        class = "Wood Elf Archers",
        counter = "Special",
        size = "S",
        damage = {192, 192, 192, 192},
        health = {510, 510, 510, 510},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Bow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 2.5 seconds, unit fires arrows at enemies that deal 4 damage. The arrows are embittered with a strong toxic substance that severely poisons a targeted unit and slowly decreases its life points by 30 per second. Lasts for 10 seconds.",
                values = nil
            }
        }
    },
    ["Spirit Hunters (Shadow)"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Nature", "Neutral"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Special",
        charges = 20,
        squadsize = 6,
        class = "Wood Elf Archers",
        counter = "Special",
        size = "S",
        damage = {192, 192, 192, 192},
        health = {510, 510, 510, 510},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Bow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 2.5 seconds, unit fires arrows at enemies that deal 4 damage. The arrows are embittered with a strong toxic substance that severely poisons a targeted unit and slowly decreases its life points by 20 per second. The damage dealt by this substance cannot be warded off with the help of damage reducing abilities because it is able to circumvent every buff or protective shield. Lasts for 10 seconds.",
                values = nil
            }
        }
    },
    Spitfire = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Fire"},
        power_cost = {300, 300, 300, 300},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Artifact Dominator",
        counter = "Special",
        size = "XL",
        damage = {3790, 3790, 3790, 3790},
        health = {1900, 1900, 1900, 1900},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ground Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit fires a magma bomb that deals 270 damage to enemies in a 10m radius around its target, up to 420 in total. Knocks back small and medium units. Affects ground targets only.",
                values = nil
            }, {
                name = "Air Defense",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, 8 turrets shoot independently dealing 60 damage to enemies in a 5m radius around its target, up to 85 in total. Affects air targets only.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 100% more damage against structures.",
                values = nil
            }
        }
    },
    ["Spore Launcher"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Neutral", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Forestkin Destroyer",
        counter = "Special",
        size = "XL",
        damage = {1200, 1200, 1200, 1200},
        health = {6500, 6500, 6500, 6500},
        upgrade_locations = {"Convoy", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Root",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Explosive Spores, Linked Fire, Siege",
                values = nil
            }, {
                name = "Explosive Spores",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit fires off a giant spore that deals 150 damage to enemies in a 10m radius around its target, up to 225 in total. Has a long range of 50m. Knocks back small and medium untis. Affects ground targets only.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 5 entities connected to the root network support each other enabling more powerful attacks.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Stone Hurler (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature"},
        power_cost = {75, 75, 75, 75},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1000, 1000, 1000, 1000},
        health = {1530, 1530, 1530, 1530},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Elements",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, tower fires an elemental grenade that deals 100 damage to enemies in a 5m radius around its target, up to 150 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Adamant Alloy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Takes 15% less damage",
                values = nil
            }
        }
    },
    ["Stone Hurler (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature"},
        power_cost = {75, 75, 75, 75},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1000, 1000, 1000, 1000},
        health = {1530, 1530, 1530, 1530},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Elements",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, tower fires an elemental grenade that deals 100 damage to enemies in a 5m radius around its target, up to 150 in total. Deals 100% more damage against Humans.Knocks back small units.",
                values = nil
            }, {
                name = "Adamant Alloy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Takes 15% less damage",
                values = nil
            }
        }
    },
    ["Stone Launcher (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {2250, 2250, 2250, 2250},
        health = {1700, 1700, 1700, 1700},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Rock Shot",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every second, tower shoots bouncing rocks that deal 36 damage to enemies in a 5m radius around its target, up to 54 in total. Affects air targets only.",
                values = nil
            }, {
                name = "Blessed Gravity Surge",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 100,
                description = "Active to tear a flying enemy down to the ground. The caught flying will then be enchained to the ground for 15 seconds and can no longer move. Ground units will be able to attack it while it is bound. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Adamant Alloy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The building takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Stone Launcher (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {2250, 2250, 2250, 2250},
        health = {1700, 1700, 1700, 1700},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Rock Shot",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every second, tower shoots bouncing rocks that deal 36 damage to enemies in a 5m radius around its target, up to 54 in total. Affects air targets only.",
                values = nil
            }, {
                name = "Tainted Gravity Surge",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 100,
                description = "Activate to tear a flying enemy down to the ground. The caught flyer will then be enchained the the ground for 25 seconds and can no longer move. It will be immune against range or magical attacks but ground units will be able to attack it while it is bound. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Adamant Alloy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The building takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Stone Shards (Fire)"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost", "Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Elemental Soldiers",
        counter = "M",
        size = "S",
        damage = {660, 660, 660, 660},
        health = {840, 840, 840, 840},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }, {
                name = "Infused Fury",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Deals 50% more damage agaisnt beast creatures.",
                values = nil
            }
        }
    },
    ["Stone Shards (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost", "Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Elemental Soldiers",
        counter = "M",
        size = "S",
        damage = {660, 660, 660, 660},
        health = {840, 840, 840, 840},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }, {
                name = "Blessed Fury",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Deals 50% more damage against demons and undead creatures",
                values = nil
            }
        }
    },
    ["Stone Shell (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Shelter",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a rocky aura that grants a special armor to friendly entities within it. Every friendly entity within a 25m radius takes increasingly less damage the more friendly units are in or around the area. With only one unit in the area friendly entities take 20% less damage but this number steadily increases with the amount of nearby units. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Stone Shell (Shadow)"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Shelter",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a rocky aura that grants a special armor to friendly entities within it. Every friendly entity within a 25m radius takes increasingly less damage the more enemies are in or around the area. With only one enemy in the area friendly entities take 20% less damage but this number steadily increases with the amount of nearby enemies. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Stone Tempest (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost", "Nature"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "M",
        size = "L",
        damage = {840, 840, 840, 840},
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Stone Wrath",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enter this mode in order to get immobile and enable Stone Tempest's attack. Every second, unit will then unleash a hail of rocks that deals 30 damage to enemies in a 5m radius around its target, up tp 45 in total. Knocks back small and medium units. This option is only available when in start-up mode.",
                values = nil
            }, {
                name = "Blessed Stone Rest",
                type = "Toggle",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Enter this mode in order to get immobile and activate Stone Tempest's regenerative powers. The unit will then restore 40 life points every 2 seconds. It will additionally immediately gain an Ice Shield thats absorbs up to 500 damage but it may not exit this mode for 15 seconds. This option is only available when in start-up mode.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Stone Tempest (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Frost", "Nature"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "M",
        size = "L",
        damage = {840, 840, 840, 840},
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Stone Wrath",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enter this mode in order to get immobile and enable Stone Tempest's attack. Every second, unit will then unleash a hail of rocks that deals 30 damage to enemies in a 5m radius around its target, up tp 45 in total. Knocks back small and medium units. This option is only available when in start-up mode.",
                values = nil
            }, {
                name = "Tainted Stone Rest",
                type = "Toggle",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Enter this mode in order to get immobile and activate Stone Tempest's regenerative powers. The unit will then restore 40 life points every 2 seconds. What is more, 50% of all damage dealt to the unit in close combat will be reflected to the attacker. This option is only available when in start-up mode.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Stone Warrior (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "XL",
        size = "L",
        damage = {1700, 1700, 1700, 1700},
        health = {1950, 1950, 1950, 1950},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Shatter Lance",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 100,
                description = "Activate to release an elemental lance that deals 928 damage to enemies in a 15m radius, up to 1392 in total. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Blessed Strike",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Enemies attacked by this unit will stay frozen 25% longer as usually. Lasts for 10 seconds.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Stone Warrior (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Frost", "Nature", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Elemental Soldier",
        counter = "XL",
        size = "L",
        damage = {1700, 1700, 1700, 1700},
        health = {1950, 1950, 1950, 1950},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Shatter Lance",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 100,
                description = "Activate to release an elemental lance that deals 928 damage to enemies in a 15m radius, up to 1392 in total. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Gifted Strike",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Enemies attacked by this unit will stay paralyzed 30% longer as usually. Lasts for 10 seconds.",
                values = nil
            }, {
                name = "Adamant Skin",
                type = "Passive",
                upgrade_dependency = 0,
                description = "The unit takes 15% less damage.",
                values = nil
            }
        }
    },
    ["Stone of Torment"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow", "Neutral"},
        power_cost = {90, 90, 90, 90},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        health = {1500, 1500, 1500, 1500},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tormenting",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Evil aura that deals 40 damage to hostile and friendly units in a 20m radius every second.",
                values = nil
            }, {
                name = "Malicious Joy",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Every 6 seconds, tower teleports the enemy unit that has moved farthest away back to itself. Has a long range of 40m.",
                values = nil
            }
        }
    },
    ["Stormsinger (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Human Archer",
        counter = "M",
        size = "M",
        damage = {530, 530, 530, 530},
        health = {635, 635, 635, 635},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Frost Spear",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2.6 seconds, unit throws her spear at enemies dealing 75 damage.",
                values = nil
            }, {
                name = "Infused Gravity Surge",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to impale a flying enemy unit and pull it down to the ground. Deals additionally 170 damage to the target. The caught flier will then be enchained to the ground for 10 seconds and can no longer move. Ground units will be able to attack it while it is bound. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Stormsinger (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Frost", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Ranged",
        charges = 16,
        squadsize = 1,
        class = "Human Archer",
        counter = "M",
        size = "M",
        damage = {530, 530, 530, 530},
        health = {635, 635, 635, 635},
        upgrade_locations = {
            "The Treasure Fleet", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Frost Spear",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2.6 seconds, unit throws her spear at enemies dealing 75 damage.",
                values = nil
            }, {
                name = "Gifted Gravity Surge",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to impale a flying enemy unit and pull it down to the ground. The caught flier will then be enchained to the ground for 10 seconds and can no longer move. Ground units will be able to attack it while it is bound. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Unit moves at high speed.",
                values = nil
            }
        }
    },
    ["Stranglehold (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Tower",
        health = {1200, 1200, 1200, 1200},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Strangling",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 3 seconds, tower is able to root a target enemy to the ground for 10 seconds. Rooted units are immobile but still able to use ranged attacks. After the effect wears off, target is immune against Root for a while. Affects ground targets only.",
                values = nil
            }
        }
    },
    ["Stranglehold (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Tower",
        health = {1200, 1200, 1200, 1200},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Strangling",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 10 seconds, tower is able to root a target enemy to the ground for 10 seconds dealing 50 damage every second. Rooted units are immobile but still able to use ranged attacks. After the effect wears off, target is immune against Root for a while. Affects ground targets only.",
                values = nil
            }
        }
    },
    Strikers = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 6,
        class = "Orc Marauders",
        counter = "M",
        size = "S",
        damage = {600, 600, 600, 600},
        health = {600, 600, 600, 600},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Charge",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit charges at enemies.",
                values = nil
            }, {
                name = "Looter",
                type = "Passive",
                upgrade_dependency = 0,
                description = "As long as the unit attacks a building or a unit, a certain amount of the target's original power costs depending on its current life points are gained as power.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    Stronghold = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {150, 150, 150, 150},
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        damage = {2155, 2155, 2155, 2155},
        health = {3600, 3600, 3600, 3600},
        upgrade_locations = {"Titans", "The Guns of Lyr", "The Guns of Lyr"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Cannon Turrets",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, 8 turrets deal 52 damage each to enemies in 5m radius, up to 75 in total.",
                values = nil
            }, {
                name = "Bombardment",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, fortress fires a mortar shell that deals 180 damage to enemies in a 10m radius around its target, up to 265 in total. Knocks back small and medium units.",
                values = nil
            }
        }
    },
    ["Sun Reaver (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Forestkin Corruptor",
        counter = "Special",
        size = "L",
        damage = {1000, 1000, 1000, 1000},
        health = {1560, 1560, 1560, 1560},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Metal Spikes",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to erupt a line of sharp metal spikes from the ground that deal several times damage to all enemies they strike. Each eruption of spikes deals 216 damage to all enemies they strike, up to 325 in total. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Infused Root",
                type = "Toggle",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Enter this mode to become immobile and link the unit to a friendly root network. While connected Sun Reaver charges up his powers: if he is linked to the network for at least 10 seconds he will be able to deal 50% more damage for 20 seconds. As he is not able to generate any support for the network himself he needs to link into a network that already has members other than Sun Reaver units.",
                values = nil
            }, {
                name = "Burning Paws",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Enemies hit by the Sun Reavers' glowing paws will be set on fire and take additional damage but steadily increases the longer they burn.",
                values = nil
            }
        }
    },
    ["Sun Reaver (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Forestkin Corruptor",
        counter = "Special",
        size = "L",
        damage = {1000, 1000, 1000, 1000},
        health = {1560, 1560, 1560, 1560},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Metal Spikes",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to erupt a line of sharp metal spikes from the ground that deal several times damage to all enemies they strike. Each eruption of spikes deals 216 damage to all enemies they strike, up to 325 in total. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Gifted Root",
                type = "Toggle",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Enter this mode to become immobile and link the unit to a friendly root network. While connected Sun Reaver charges up his powers: if he is linked to the network for at least 10 seconds he will start to regenerate 45 life points every second for 15 seconds. As he is not able to generate any support for the network himself he needs to link into a network that already has members other than Sun Reaver units.",
                values = nil
            }, {
                name = "Burning Paws",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Enemies hit by the Sun Reavers' glowing paws will be set on fire and take additional damage but steadily increases the longer they burn.",
                values = nil
            }
        }
    },
    Sunderer = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Special",
        charges = 8,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "Special",
        size = "L",
        damage = {1100, 1100, 1100, 1100},
        health = {800, 800, 800, 800},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Sundering",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to crush an enemy structure dealing 775 damage. Additionally the damage bonus against structures applies aswell. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Sunken Temple (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Nature"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Shrine",
        health = {1000, 1000, 1000, 1000},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Plague",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to release a swarm of Pest Creeper. The little beasts can be controlled by the player, move at high speed and the damage they deal can not be warded off by any damage reducing abilities. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Sunken Temple (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Nature"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Shrine",
        health = {1000, 1000, 1000, 1000},
        upgrade_locations = {
            "Encounters with Twilight", "The Insane God", "The Insane God"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Plague",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 80,
                description = "Activate to release a swarm of Pest Creeper. The little beast can be controlled by the player,move at high speed and are surrounded by poisonous cloud:wherever they go they leave dangerous spores within a 6m radius infect hostile units dealing 15 damage per second. Reusable every 40s.",
                values = nil
            }
        }
    },
    Sunstriders = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Ranged",
        charges = 20,
        squadsize = 6,
        class = "Sun Elf Archers",
        counter = "M",
        size = "S",
        damage = {450, 450, 450, 450},
        health = {360, 360, 360, 360},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Bow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2,5 seconds, unit fires arrows at enemies that deal 9 damage.",
                values = nil
            }, {
                name = "Supression Fire",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to disable enemy building's attacks and special abilities for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    Suppression = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Spellblocker",
                type = nil,
                upgrade_dependency = 0,
                description = "Disables a building's attacks and special abilities for 10 seconds. Immediately reusable.",
                values = nil
            }
        }
    },
    ["Surge of Light"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Healing Light",
                type = nil,
                upgrade_dependency = 0,
                description = "Instantly heals friendly units within a 15m radius for up to 1000 life points in total. Immediately reusable.",
                values = nil
            }
        }
    },
    ["Swamp Drake"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Dragonkin Corrupter",
        counter = "XL",
        size = "L",
        damage = {1500, 1500, 1500, 1500},
        health = {1100, 1100, 1100, 1100},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Acid Breath",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, unit spits an acid cloud at enemies that deals 150 damage.",
                values = nil
            }, {
                name = "Sleep well!",
                type = "Active",
                upgrade_dependency = 0,
                description = "Makes up to 3 enemy units fall asleep for 15 seconds. Affected units may neither move nor attack. After 3 seconds they will awake if being attacked. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Swamp Drake (Promo)"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = 120,
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Dragonkin Corrupter",
        counter = "XL",
        size = "L",
        damage = 1500,
        health = 1100,
        abilities = {
            {
                name = "Acid Breath",
                type = "Autocast",
                description = "Every 3 seconds, unit spits an acid cloud at enemies that deals 168 damage to enemies in a 5m radius around its target, up to 252 in total."
            }, {
                name = "Sleep well!",
                type = "Active",
                cost = 30,
                description = "Makes up to 6 enemy units fall asleep for 15 seconds. Affected units may neither move nor attack. After 3 seconds they will awake if being attacked. Reusable every 20 seconds."
            }
        }
    },
    Swiftclaw = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Beast Soldiers",
        counter = "M",
        size = "M",
        damage = {660, 660, 660, 660},
        health = {510, 510, 510, 510},
        upgrade_locations = {
            "Encounters with Twilight", "Behind Enemy Lines",
            "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Bestial Fury",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to deal 50% more damage but unit will only be able to move slowly. Lasts until deactivated.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Sylvan Gate (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Tower",
        health = {2460, 2460, 2460, 2460},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Heal",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 11 seconds the gate heals a friendly unit for 600 life points.",
                values = nil
            }, {
                name = "Tunnel Exit",
                type = "Active",
                upgrade_dependency = 0,
                description = "The gate grants access to the tunnel network. Activate to become an exit point of the tunnel network.",
                values = nil
            }, {
                name = "Infused Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Up to 3 entities connected to the root network support each other enabling more powerful attacks. The gate will then be able to continuously heal ever faster. What is more, all entities connected to the network within a 25m radius around the gate will deal 25% more damage.",
                values = nil
            }
        }
    },
    ["Sylvan Gate (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Tower",
        health = {2460, 2460, 2460, 2460},
        upgrade_locations = {
            "The Treasure Fleet", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Heal",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 11 seconds the gate heals a friendly unit for 600 life points.",
                values = nil
            }, {
                name = "Tunnel Exit",
                type = "Active",
                upgrade_dependency = 0,
                description = "The gate grants access to the tunnel network. Activate to become an exit point of the tunnel network.",
                values = nil
            }, {
                name = "Blessed Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Up to 3 entities connected to the root network support each other enabling more powerful attacks. The gate will then be able to continuously heal ever faster. What is more, while being connected the gate takes 30% less damage.",
                values = nil
            }
        }
    },
    Tempest = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Neutral", "Neutral", "Neutral"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "M",
        size = "L",
        damage = {1720, 1720, 1720, 1720},
        health = {1850, 1850, 1850, 1850},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Frozen Warth",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Whirlwind",
                values = nil
            }, {
                name = "Whirlwind",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Twice per second unit unleashes a hail of icy shards that deal 34 damage to enemies in a 5m radius its target, up to 52 in total. Does extra damage against frozen targets.",
                values = nil
            }
        }
    },
    ["Termite Hill"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Tower",
        health = {860, 860, 860, 860},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Termite Swarm",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to send termites to enemy structures in target direction that deal 130 damage every second, lasting for 20 seconds in total. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["The Incredible Mo"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        charges = 4,
        squadsize = 1,
        class = "Statue",
        health = {2460, 2460, 2460, 2460},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "The Wrathful Mo",
                type = "Active",
                upgrade_dependency = 0,
                cost = 100,
                description = "Activate to unleash Mo's Wrath: thunderstorms will unfold all over the current map and hostile units will be struck by lightning upon entering one of them. Each bolt of lightning deals 500 damage. Lasts for 120 seconds. When choosing this power Mo be switched back again to grant yet another power!",
                values = nil
            }, {
                name = "The Insidious Mo",
                type = "Active",
                upgrade_dependency = 0,
                cost = 150,
                description = "Activate to harness Mo's perfidiousness: every hostile unit in the current game will deal 20% less damage. Lasts until statue is destroyed.",
                values = nil
            }, {
                name = "The Benevolent Mo",
                type = "Active",
                upgrade_dependency = 0,
                cost = 200,
                description = "Activate to benefit from Mo's benevolence: every friendly unit in the game will be immune against all major debuffs but may still be affected by spells like Freeze or Paralyze. Lasts until statue is destroyed.",
                values = nil
            }
        }
    },
    Thornbark = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Forestkin Dominator",
        counter = "M",
        size = "L",
        damage = {700, 700, 700, 700},
        health = {1300, 1300, 1300, 1300},
        upgrade_locations = {
            "Sunbridge", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Root",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Radial Thorns, Linked Fire",
                values = nil
            }, {
                name = "Radial Thorns",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 10 seconds, unit fires thorns in all directions that deal 400 damage to enemies, up to 600 in total.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 5 entities connected to the root network support each other enabling more powerful attacks.",
                values = nil
            }
        }
    },
    Thugs = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Orc Marauders",
        counter = "S",
        size = "S",
        damage = {660, 660, 660, 660},
        health = {450, 480, 540, 630},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Looter",
                type = "Passive",
                upgrade_dependency = 0,
                description = "As long as the unit attacks a building or a unit, a certain amount of the target's original power costs depending on its current life points are gained as power.",
                values = nil
            }
        }
    },
    ["Thunder Wagon (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Fire", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Artifact Destroyer",
        counter = "Special",
        size = "XL",
        damage = {4600, 4600, 4600, 4600},
        health = {4200, 4200, 4200, 4200},
        upgrade_locations = {
            "Raven's End", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Thunder Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, the turret on the top of the unit blasts a bomb at an enemy dealing 308 damage in a 15m radius around the target, up to 462 in toal. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Flamethrower",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "The flamethrower at the unit's front burns down enemies dealing 120 damage per second.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Deals 100% more damage against structures.",
                values = nil
            }, {
                name = "RAMPAGE",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enter this mode in order to disable both ranged attacks and boost up the unit's movement speed. It will be able to move faster and overrun enemies in its way dealing 440 damage to them. Knocks back small,   medium and large units.",
                values = nil
            }
        }
    },
    ["Thunder Wagon (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Fire", "Neutral"},
        power_cost = {260, 260, 260, 260},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Artifact Destroyer",
        counter = "Special",
        size = "XL",
        damage = {4600, 4600, 4600, 4600},
        health = {4200, 4200, 4200, 4200},
        upgrade_locations = {
            "Empire", "Behind Enemy Lines", "Behind Enemy Lines"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Thunder Bomb",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, the turret on the top of the unit blasts a bomb at an enemy dealing 308 damage in a 15m radius around the target, up to 462 in toal. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Flamethrower",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "The flamethrower at the unit's front burns down enemies dealing 120 damage per second.",
                values = nil
            }, {
                name = "Tainted Death",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "When the unit is destroyed it will explode dealing 1000 damage to enemies in a 25m radius, up to 3000 in total.",
                values = nil
            }, {
                name = "RAMPAGE",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enter this mode in order to disable both ranged attacks and boost up the unit's movement speed. It will be able to move faster and overrun enemies in its way dealing 440 damage to them. Knocks back small,   medium and large units.",
                values = nil
            }
        }
    },
    Thunderstorm = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Nature", "Neutral", "Neutral"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Storm Cloud",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a thunderstorm that tosses 4 bolts of lightning at enemy units within a 20m radius. Every bolt may jump to several targets dealing 180 damage to the first one while the following targets will receive continously less damage. Lasts for 20 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Time Vortex (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral"},
        power_cost = {100, 100, 100, 100},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1150, 1150, 1150, 1150},
        health = {2830, 2830, 2830, 2830},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Void Shock",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 8 seconds, tower fires off a backwards chargeable shot that deals 330 damage to enemies in a 5m radius around its target, up to 500 in total. The less void power has been accumulated the faster the tower will be able toshoot. If less than 1000 own void power is left it will already shot 25% faster gaining even more speed the more void power is used up. Knocks back small and medium units.",
                values = nil
            }
        }
    },
    ["Time Vortex (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral"},
        power_cost = {100, 100, 100, 100},
        charges = 16,
        squadsize = 1,
        class = "Tower",
        damage = {1150, 1150, 1150, 1150},
        health = {2830, 2830, 2830, 2830},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Void Shock",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = " Every 8 seconds, tower fires off a chargeable shot that deals 330 damage to enemies in a 5m radius around its target, up to 500 in total. The more void power has been accumulated the faster the tower will be able to shoot. If at least 150 own void power has been stored it will already shoot 25% faster gaining even more speed the more void power is available. Knocks back small and medium units.",
                values = nil
            }
        }
    },
    ["Timeless One"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {55, 55, 55, 55},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Undead Wizard",
        counter = "M",
        size = "M",
        damage = {480, 480, 480, 480},
        health = {850, 850, 850, 850},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Time Shock",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit schockfreezes time, dealing 45 damage to enemies in a 5m radius around its target, up to 70 in total. Knocks back small units.",
                values = nil
            }, {
                name = "Frozen Stasis",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to freeze up to 3 units in target area for 10 seconds. After freeze wears off, targets are immune against Freeze for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Timeshifter Spirit"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Nature", "Nature"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Spirit Supporter",
        counter = "Special",
        size = "M",
        health = {775, 775, 775, 775},
        upgrade_locations = {
            "Empire", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Rejuvinate",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 5 seconds unit triggers a heal chain that may effect several friendly units. The first one will be healed for 120 life points while the following targets will regenerate continuously less.",
                values = nil
            }, {
                name = "Countermagic Field",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to create a spellblocking zone of 30m radius where enemies can neither use special abilities nor ranged attacks. No enemies can be summoned within that zone. Spell will be interrupted if unit is knocked back. Otherwise lasts until unit is given different orders. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Tortugun (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Fire", "Fire"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = {8400, 8400, 8400, 8400},
        health = {3200, 3200, 3200, 3200},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Eruption",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 2 seconds, the volcano on unit's back erupts dealing 672 damage to enemies in a 20m radius around its target, up to 1008 in total. Has a long range of 50m. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Devour",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to sacrifice an own unit in order to feed Tortugun. The unit needs to be fed regularly otherwise it will get too hungry to be kept under control. It can eat up to 5000 life points ere it is saturated and will then digest them at a rate of 120 life points every 2 seconds thus getting hungry again. Reusable every 5 seconds.",
                values = nil
            }, {
                name = "Amok",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "If the unit digested almost all of its stored life points and doesn't get fed it will enter a murderous frenzy. While in this state it will only be able to look for feed and devour whatever own ground unit is nearby. The player can neither control nor kill it. As soon as it has eaten at least 1500 life points it will be tame again and obey the player's commands.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Tortugun (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Fire", "Fire"},
        power_cost = {240, 240, 240, 240},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Beast Dominator",
        counter = "L",
        size = "XL",
        damage = {8400, 8400, 8400, 8400},
        health = {3200, 3200, 3200, 3200},
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Eruption",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 2 seconds, the volcano on unit's back erupts dealing 672 damage to enemies in a 20m radius around its target, up to 1008 in total. Knocks back small, medium and large units.",
                values = nil
            }, {
                name = "Devour",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to sacrifice an own unit in order to feed Tortugun. The unit needs to be fed regularly otherwise it will get too hungry to be kept under control. It can eat up to 5000 life points ere it is saturated and will then digest them at a rate of 120 life points every 2 seconds thus getting hungry again. Reusable every 5 seconds.",
                values = nil
            }, {
                name = "Amok",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "If the unit digested almost all of its stored life points and doesn't get fed it will enter a murderous frenzy. While in this state it will only be able to look for feed and devour whatever own ground unit is nearby. The player can neither control nor kill it. As soon as it has eaten at least 1500 life points it will be tame again and obey the player's commands.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Tower of Flames"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {120, 120, 120, 120},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        damage = {2700, 2700, 2700, 2700},
        health = {2100, 2100, 2100, 2100},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Fire Ball",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2 seconds, tower hurls a fire ball that deals 216 damage to enemies in a 5m radius around its target, up to 324 in total.",
                values = nil
            }, {
                name = "Volcanic Ground",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to set ground on fire and unleash 3 fire waves that each deal 200 damage damage to enemies in a 25m radius around its target, up to 1000 in total. Affects ground targets only. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Treefiend (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Nature", "Fire"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Forestkin Dominator",
        counter = "L",
        size = "L",
        damage = {1200, 1200, 1200, 1200},
        health = {1230, 1230, 1230, 1230},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Root",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain:",
                values = nil
            }, {
                name = "Radial Thorns",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 10 seconds, unit fires thorns in all directions that deal 480 damage to enemies, up to 720 in total.",
                values = nil
            }, {
                name = "Gifted Acid Bath",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The unit accrues an acid substance. Once it has stored up enough, it unleashes an acid bath; every hostile unit within a 20m radius will be stunned. Affected units can move at walk speed but are unable to attack for 10 seconds.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 3 entities connected to the root network support each other enabling more powerful attacks. The fortress will then be able to continously shoot each wave of thorns ever faster. As he is not able to generate any support for the root network himself he needs to link into a network that already has members other than Treefiend units.",
                values = nil
            }
        }
    },
    ["Treefiend (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Nature", "Fire"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Forestkin Dominator",
        counter = "L",
        size = "L",
        damage = {1200, 1200, 1200, 1200},
        health = {1230, 1230, 1230, 1230},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Root",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain:",
                values = nil
            }, {
                name = "Radial Thorns",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 10 seconds, unit fires thorns in all directions that deal 480 damage to enemies, up to 720 in total.",
                values = nil
            }, {
                name = "Tainted Acid Bath",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "The unit slowly accrues an acid substance. Once it has stored up enough, it unleashes an acid bath: every enemy within a 20m radius will be etched and will then take 25 damage every second for 11 seconds.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 3 entities connected to the root network support each other enabling more powerful attacks. The fortress will then be able to continously shoot each wave of thorns ever faster. As he is not able to generate any support for the root network himself he needs to link into a network that already has members other than Treefiend units.",
                values = nil
            }
        }
    },
    ["Treespirit (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Forestkin Soldier",
        counter = "M",
        size = "M",
        damage = {400, 400, 400, 400},
        health = {510, 510, 510, 510},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Root",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Tainted Thorns and Linked Fire",
                values = nil
            }, {
                name = "Gifted Thorns",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 10 seconds, unit fires thorns in all directions that deal 120 damage to enemies within a 35m radius around it, up to 180 in total. The thorns are extremely toxic poisening every enemy they come in thouch with. The affected entity will then take 10 damage every second for 5 seconds",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 3 entities connected to the root network support each other enabling more powerful attacks",
                values = nil
            }
        }
    },
    ["Treespirit (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Nature"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Forestkin Soldier",
        counter = "M",
        size = "M",
        damage = {400, 400, 400, 400},
        health = {510, 510, 510, 510},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Root",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Enable to become immobile and gain: Tainted Thorns and Linked Fire",
                values = nil
            }, {
                name = "Tainted Thorns",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 10 seconds, unit fires thorns in all directions that deal 120 damage to enemies within a 35m radius around it, up to 180 in total. The damage dealt by this substance cannot be warded off with the help of damage reducing abilities because it is able to circumvent every buff or protective shield.",
                values = nil
            }, {
                name = "Linked Fire",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Up to 3 entities connected to the root network support each other enabling more powerful attacks",
                values = nil
            }
        }
    },
    Tremor = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Ancient Destroyer",
        counter = "Special",
        size = "L",
        damage = {1700, 1700, 1700, 1700},
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ground Slam",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to emit a shockwave, dealing 170 damage to units and 850 to structures in 15m radius, up to 1200 in total. Additionally the damage bonus against structures applies as well. Knocks back small and medium units. Only affects ground targets. Reusable every 30 seconds.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }, {
                name = "Slow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Slow movement.",
                values = nil
            }
        }
    },
    Tunnel = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature"},
        power_cost = {40, 40, 40, 40},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Device",
        health = {690, 690, 690, 690},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tunnel Exit",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to become an exit point of the tunnel network.",
                values = nil
            }
        }
    },
    ["Twilight Bombard (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {100, 100, 100, 100},
        charges = 12,
        squadsize = 1,
        class = "Device",
        damage = {2100, 2100, 2100, 2100},
        health = {2045, 2045, 2045, 2045},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Bomb Delivery",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 5 seconds, device blasts a bomb dealing 420 damage to enemies in a 10m radius, up to 630 in total. Knocks back small units. Targets need to be at least 10m away. Has an extra long range of 60m.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Siege: Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Twilight Bombard (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {100, 100, 100, 100},
        charges = 12,
        squadsize = 1,
        class = "Device",
        damage = {2100, 2100, 2100, 2100},
        health = {2045, 2045, 2045, 2045},
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Bomb Delivery",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 5 seconds, device blasts a bomb dealing 420 damage to enemies in a 10m radius, up to 630 in tota. Knock back medium and small units. Targets need to be at least 10m away. Has an extra long range of 60m.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Siege: Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Twilight Brute (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "M",
        size = "M",
        damage = {755, 755, 755, 755},
        health = {780, 780, 780, 780},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Burstout",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to infest the targeted friendly or hostile unit. If the target is then killed within 10 seconds its body will explode dealing 400 damage to hostile and friendly units within a 15m radius, up to 1600 in total. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to infect unit Twilight curse and transform it in another unit of that faction. Mutation process to select the Twilight of the deck unit, in that you want to change it. The current deck must contain at least one, another unit Twilight, which all the requirements to play it are met. Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }
        }
    },
    ["Twilight Brute (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Nature", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Ogre Soldier",
        counter = "M",
        size = "M",
        damage = {755, 755, 755, 755},
        health = {780, 780, 780, 780},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Burstout",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to infest the targeted friendly or hostile unit. If the target is then killed within 10 seconds its body will poison up to 4 hostile and friendly units within a 20m range. Affected targets lose 65 life points per second for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to infect unit Twilight curse and transform it in another unit of that faction. Mutation process to select the Twilight of the deck unit, in that you want to change it. The current deck must contain at least one, another unit Twilight, which all the requirements to play it are met. Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }
        }
    },
    ["Twilight Creeper (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Beast Corruptor",
        counter = "L",
        size = "L",
        damage = {1500, 1500, 1500, 1500},
        health = {1250, 1250, 1250, 1250},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 10 seconds, unit spits large chunks of mud dealing 180 damage to enemies in a 10m radius, up to 270 in total. Knocks back small units. Additional it releases infectious parasites into the environment that befall up to 1 hostile unit(s). Infected targets take 30% more damage for 10 seconds. The parasites may pass over to other available targets within a 15m range and spread the infection among up to 3 units.",
                values = nil
            }, {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }
        }
    },
    ["Twilight Creeper (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Beast Corruptor",
        counter = "L",
        size = "L",
        damage = {1500, 1500, 1500, 1500},
        health = {1250, 1250, 1250, 1250},
        upgrade_locations = {"Bad Harvest", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 10 seconds, unit spits large chunks of mud dealing 180 damage to enemies in a 10m radius, up to 270 in total. Knocks back small units. Additional it releases infectious parasites into the environment that befall up to 1 hostile unit(s). Infected targets take 30% more damage for 10 seconds. The parasites may pass over to other available targets within a 15m range and spread the infection among up to 3 units.",
                values = nil
            }, {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }
        }
    },
    ["Twilight Curse (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Shapeshifter",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infects the targeted friendly or hostile unit with the Twilight Curse and immediately transforms it into a Twilight Bug. Due to the transformation's boost the Bug will at first deal 30% more damage for 20 seconds. Restricted to units with a maximum requirement of 2 orbs and 200 power costs. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Twilight Curse (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Shapeshifter",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infects the targeted friendly or hostile unit with the Twilight Curse and immediately transforms it into a Twilight Bug. Due to the transformation's aftereffects the Bug will at first deal 30% less damage for 20 seconds. Restricted to units with a maximum requirement of 2 orbs and 200 power costs. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Twilight Hag (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Fire"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Spirit Wizard",
        counter = "L",
        size = "M",
        damage = {850, 850, 850, 850},
        health = {585, 585, 585, 585},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Twilight Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit fires a shady energy bolt that deals 75 damage to enemies in a 10m radius around its target, up to 153 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Infused Femme Fatale",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to create a stunning delusion: Twilight Hag will bewitch every male enemy within a 20m radius in such a way as to make him believe she was the most beautiful creature in the world. Affected enemies are forces to stare at her and are no longer able to fight nor can they be controlled by the player. Friendly male units within the area also enjoy the show and have 25% increased damage. Lasts for 15 seconds or until interrupted. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Twilight Hag (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Uncommon",
        orbs = {"Nature", "Nature", "Fire"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Spirit Wizard",
        counter = "L",
        size = "M",
        damage = {850, 850, 850, 850},
        health = {585, 585, 585, 585},
        upgrade_locations = {
            "Nightmare's End", "The Insane God", "The Insane God"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Twilight Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit fires a shady energy bolt that deals 75 damage to enemies in a 10m radius around its target, up to 153 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Gifted Femme Fatale",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to create a stunning delusion: Twilight Hag will bewitch every male enemy within a 20m radius in such a way as to make him believe she was the most beautiful creature in the world. Affected enemies are forces to stare at her and are no longer able to fight nor can they be controlled by the player. Friendly male units within the area also enjoy the show and regnerate 30 life points per second. Lasts for 15 seconds or until interrupted. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Twilight Minions (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Orc Soldiers",
        counter = "M",
        size = "S",
        damage = {900, 900, 900, 900},
        health = {780, 780, 780, 780},
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }
        }
    },
    ["Twilight Minions (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Nature", "Fire"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Orc Soldiers",
        counter = "M",
        size = "S",
        damage = {900, 900, 900, 900},
        health = {780, 780, 780, 780},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Infused Incentive",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit is transformed it will incite other friendly small units within a 20m radius to deal 30% more damage for 15 seconds.",
                values = nil
            }, {
                name = "Gifted Incentive",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit is transformed it will incite other friendly Twilight units within a 20m radius to deal 20% more damage for 15 seconds.",
                values = nil
            }
        }
    },
    ["Twilight Pestilence (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Fire", "Fire"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Toxin",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a toxic aura that has an initial radius of 20m. During its runtime the aura will considerably expand and may spread randomly into various directions. Hostile units within it will lose 35 life points per second whereas friendly twilight units actually benefit form the substance: they take 50% less damage while exposed to the substance. Lasts for 20 seconds. Reusable for every 25 seconds.",
                values = nil
            }
        }
    },
    ["Twilight Pestilence (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Lost Souls",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Fire", "Fire"},
        power_cost = {150, 150, 150, 150},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Toxin",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Creates a toxic aura that has an initial radius of 20m. During its runtime the aura will considerably expand and may spread randomly into various directions. Hostile units within it will lose 35 life points per second whereas friendly twilight units actually benefit form the substance: they regenerated 45 life points per second while exposed to the substance. Lasts for 20 seconds. Reusable for every 25 seconds.",
                values = nil
            }
        }
    },
    ["Twilight Warfare (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {55, 55, 55, 55},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Battling",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infuses an enemy unit with the art of cunning warfare: if it dies within the next 15 seconds, out of its remains a 20m summoning zone will be created. Friendly units spawned within that zone will not be dazed. Additionally, every friendly entity within it deals 25% more damage against structures. The zone lasts for 13 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Twilight Warfare (Shadow)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Ultra Rare",
        orbs = {"Nature", "Fire", "Neutral"},
        power_cost = {55, 55, 55, 55},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Battling",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Infuses an enemy unit with the art of cunning warfare: if it dies within the next 15 seconds, out of its remains a 20m summoning zone will be created. Friendly units spawned within that zone will not be dazed. Additionally, every friendly entity within it adds 25% of the damage it deals to its life points. The zone lasts for 13 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Undead Army"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow", "Shadow"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Revive",
                type = nil,
                upgrade_dependency = 0,
                description = "Gathers corpses in a 25m radius in order to summon a maximum of 3 Skeleton Warriors with their Unholy Armor enabled. For summoning a unit Skeleton Warriors 600 life points have to be gathered from corpses first. Skeleton Warriors have the same upgrade level as the spell itself. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Unholy Hero"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow", "Neutral", "Neutral", "Neutral"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "King of the Giants", "King of the Giants", "King of the Giants"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "War Cry",
                type = nil,
                upgrade_dependency = 0,
                description = "The targeted friendly unit will deal 150% more damage for 20 seconds but 150% of all damage done to it is additionally also done to friendly entities within a 15m radius. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Unholy Power"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Power-Up",
                type = nil,
                upgrade_dependency = 0,
                description = "Targeted own unit gains additional strength of 1700 that will either slowly degenerate or can be used up to improve the unit's performance. As long as the extra srength lasts unit deals 50% more damage and takes 50% less damage. Lasts for 20 seconds. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Unity (Frost)"] = {
        description = "",
        starter_card = true,
        type = "Spell",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Sharing",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Installs a magical bond between up to 5 friendly units within a 25m radius. The affected units will then mutually share their life points with each other as long as they are positioned within a 25m radius towards one another. All incoming damage will be equally spread among all members relative to each units current life points. None of the members can die as long as the group still has more than one life point left. Additionally, affected units will take 25% less damage. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Unity (Nature)"] = {
        description = "",
        type = "Spell",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {110, 110, 110, 110},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Sharing",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Installs a magical bond between up to 5 friendly units within a 25m radius. The affected units will then mutually share their life points with each other as long as they are positioned within a 25m radius towards one another. All incoming damage will be equally spread among all members relative to each units current life points. None of the members can die as long as the group still has more than one life point left.    Additionally, affected units will regenerate 40 life points every 2 seconds. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Unstable Demon"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Demon Soldier",
        counter = "M",
        size = "L",
        damage = {2000, 2000, 2000, 2000},
        health = {1800, 1800, 1800, 1800},
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Unstable Flesh",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit is summoned with only 50% of its maximum life points and loses 50 lifepoints every two seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "75% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }, {
                name = "Critical Mass",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit will explode when reaching full health dealing 560 damage to hostile and friendly units in a 15m radius, up to 2000 in total. Knocks back small and medium units.",
                values = nil
            }
        }
    },
    ["Vileblood (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Fire"},
        power_cost = {130, 130, 130, 130},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Demon Soldier",
        counter = "Special",
        size = "L",
        damage = {1430, 1430, 1430, 1430},
        health = {1480, 1480, 1480, 1480},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Infused Liquids",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit is transformed it will release vile liquids infesting the ground for 10 seconds. They will emit 4 waves each dealing 100 damage, up to 300 in total in a 15m radius.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    ["Vileblood (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Fire"},
        power_cost = {130, 130, 130, 130},
        weapon_type = "Special",
        charges = 12,
        squadsize = 1,
        class = "Demon Soldier",
        counter = "Special",
        size = "L",
        damage = {1430, 1430, 1430, 1430},
        health = {1480, 1480, 1480, 1480},
        upgrade_locations = {
            "Nightmare Shard", "Nightmare Shard", "Nightmare Shard"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Transformation",
                type = "Active",
                upgrade_dependency = 0,
                description = "The unit is infected with the Twilight Curse and can be transformed into any other Twilight creature. Activate to start the mutant process and choose a Twilight unit from the current deck to be transformed into. The current deck must contain at least one other Twilight unit whose orb requirements are met!",
                values = nil
            }, {
                name = "Gifted Liquids",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "If the unit is transformed it will release pure liquids purging the ground for 10 seconds. They will emit 4 waves each restoring up to 200 life points of friendly units in a 15m radius.",
                values = nil
            }, {
                name = "Siege",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Deals 50% more damage against structures.",
                values = nil
            }
        }
    },
    Viridya = {
        description = "The daughter of Brannoc",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Skylord of Nature",
        counter = "S",
        size = "M",
        damage = {750, 750, 750, 750},
        health = {560, 560, 560, 560},
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Power Flux",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit fires an elemental power sphere that deals 90 damage to enemies in a 5m radius around its target, up to 135 in total. Knocks back small units.",
                values = nil
            }, {
                name = "Call Treespirit",
                type = "Active",
                upgrade_dependency = 0,
                cost = 100,
                description = "Activate to call for the assistance of Viridya's servant Treespirit. She will summon 1 Treespirit unit that is endowed with the natural power to slowly regenerate its ife points and has the same upgrade level as the unit itself. Only one Treespirit may be summoned at once. Reusable every 25 seconds.",
                values = nil
            }, {
                name = "Viridya's Blessing",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Friendly units surrounding Viridya will regenerate 3% of their maximum life points every 2 seconds.",
                values = nil
            }
        }
    },
    ["Viridya (Promo)"] = {
        description = "The daughter of Brannoc",
        type = "Unit",
        edition = "Renegade",
        rarity = "Rare",
        orbs = {"Neutral", "Neutral"},
        power_cost = 90,
        weapon_type = "Ranged",
        charges = 4,
        squadsize = 1,
        class = "Skylord of Nature",
        counter = "S",
        size = "M",
        damage = 750,
        health = 640,
        abilities = {
            {
                name = "Powerflux",
                type = "Autocast",
                description = "Every 3 seconds, unit fires an elemental power sphere that deals 90 damage to enemies in a 5m radius around its target, up to 135 in total. Knocks back small units."
            }, {
                name = "Call Treespirit",
                type = "Active",
                cost = 100,
                description = "Activate to call for the assistance of Viridya's servant Treespirit. She will summon 2 Treespirit units that are endowed with the natural power to slowly regenerate its ife points and has the same upgrade level as the unit itself. Only two Treespirits may be summoned at once. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Viridya's Blessing",
                type = "Passive",
                description = "Friendly units surrounding viridya will regenerate 3% of their maximum life points every 2 seconds."
            }
        }
    },
    Virtuoso = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 8,
        squadsize = 1,
        class = "Ogre Destroyer",
        counter = "L",
        size = "L",
        damage = {1790, 1790, 1790, 1790},
        health = {1700, 1700, 1700, 1700},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Trumpet of Jelicoo",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to deal 10 damage against units and 1300 damage against structures in a cone-shaped area, up to 3400 in total. Knocks back small and medium units. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Void Maw"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow", "Neutral", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Demon Dominator",
        counter = "XL",
        size = "L",
        damage = {1900, 1900, 1900, 1900},
        health = {1640, 1640, 1640, 1640},
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Nether Strike",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 4 seconds, unit fires a blast of Nether that deals 300 damage to enemies in a 5m radius around its target, up to 450 in total. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Void Shear",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to trigger a powerful suicidal attack killing the caster and making sure the target is dead, dead, dead ...",
                values = nil
            }
        }
    },
    Voidstorm = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Shadow", "Shadow", "Shadow"},
        power_cost = {200, 200, 200, 200},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Convoy", "Convoy", "Convoy"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Total Destruction",
                type = nil,
                upgrade_dependency = 0,
                description = "Every player's void power is turned into a massive damage potential. 850% of the current own void power will be dealt as damage and split among all own existing units. Every player in the current game will be affected. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["Volcano (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Fire", "Neutral"},
        power_cost = {150, 150, 150, 150},
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        damage = {4150, 4150, 4150, 4150},
        health = {3450, 3450, 3450, 3450},
        upgrade_locations = {
            "King of the Giants", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Eruption",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 4 seconds, Volcano erupts burning boulders that crash onto the ground dealing 581 damage to enemies in a 15m radius up to 872 in total. Knocks back small and medium units. Volcano deals increasingly more damage the longer it attacks but falls back to its original damage output if it doesn't fight for 7 seconds.",
                values = nil
            }, {
                name = "Lava Sea",
                type = "Passive",
                upgrade_dependency = 0,
                description = "If Volcano deals at least 1740 it starts erupting burning liquids. The lava flows from Volcano and slowly covers a 25m area around it dealing 100 damage to every enemy within it, up to 1000 in total. Affected enemies will be set on fire and take an additional 100 damage per second while burning. After 15 seconds the lava will retract again.",
                values = nil
            }
        }
    },
    ["Volcano (Nature)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Fire", "Neutral"},
        power_cost = {150, 150, 150, 150},
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        damage = {4150, 4150, 4150, 4150},
        health = {3450, 3450, 3450, 3450},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Eruption",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 4 seconds, Volcano erupts burning boulders that crash onto the ground dealing 581 damage to enemies in a 15m radius up to 872 in total. Knocks back small and medium units. If Volcano deals at least 1740 damage it will start to regenerate 150 life points every second for 5 seconds.",
                values = nil
            }, {
                name = "Lava Sea",
                type = "Passive",
                upgrade_dependency = 0,
                description = "If Volcano deals at least 1740 it starts erupting burning liquids. The lava flows from Volcano and slowly covers a 25m area around it dealing 100 damage to every enemy within it, up to 1000 in total. Affected enemies will be set on fire and take an additional 100 damage per second while burning. After 15 seconds the lava will retract again.",
                values = nil
            }
        }
    },
    ["Voodoo Shack"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {50, 50, 50, 50},
        charges = 12,
        squadsize = 1,
        class = "Tower",
        health = {1700, 1700, 1700, 1700},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Deathcounter",
                type = "Active",
                upgrade_dependency = 0,
                description = "Weaves a curse onto an enemy structure that will make it explode after some time.    The time until the explosion occurs depends on the target's maximum health points: it takes 10 seconds per 1250 maximum health points before the targeted structure explodes. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Vulcan = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire", "Fire", "Neutral"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Ranged",
        charges = 8,
        squadsize = 1,
        class = "Elemental Archer",
        counter = "M",
        size = "L",
        damage = {2400, 2400, 2400, 2400},
        health = {950, 950, 950, 950},
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Flamethrower",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Unit casts raging flames that deal 120 damage to units every second.",
                values = nil
            }, {
                name = "Conflagrate",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to fill a cone-shaped area with devestating flames that deal 210 damage to enemies every second. Lasts for 20 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Wallbreaker = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Fire"},
        power_cost = {30, 30, 30, 30},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"The Soultree", "The Soultree", "The Soultree"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Destroy Barrier",
                type = nil,
                upgrade_dependency = 0,
                description = "Instantly destroys a wall segment. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    ["War Eagle"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Ancient Dominator",
        counter = "M",
        size = "L",
        damage = {1350, 1350, 1350, 1350},
        health = {650, 650, 650, 650},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Screech",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit can perform a piercing shriek that deals 170 damage to enemies in a 5m radius around its target, up to 250 in total. Only affects ground targets.",
                values = nil
            }, {
                name = "Sonic Scream",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to fill a target area with sonic shockwaves, doing 500 damage to enemy units, up to 900 in total. Knocks back small and medium units. Only affects ground targets. Reusable every 10 seconds.",
                values = nil
            }, {
                name = "Slow",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Slow movement.",
                values = nil
            }
        }
    },
    ["Ward of the North"] = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Neutral"},
        power_cost = {100, 100, 100, 100},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Convoy", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Protective Ice",
                type = nil,
                upgrade_dependency = 0,
                description = "Friendly units and structures in a 15m radius take 50% less damage until 7800 damage has been absorbed. Lasts for 30 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Warden's Sigil (Frost)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {30, 30, 30, 30},
        charges = 16,
        squadsize = 0,
        class = "Device",
        health = {560, 560, 560, 560},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Sigil",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to bind a Warden's Sigil to a friendly structure in a 40m range. The affected structure gains and Ice Shield that absorbs up to 1000 damage and may restore its absorption capacity by 5 seconds as long as Warden's Sigil is attached. May also be attached to buildings that are still under construction. Reusable every 25 seconds.",
                values = nil
            }
        }
    },
    ["Warden's Sigil (Nature)"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Lost Souls",
        rarity = "Common",
        orbs = {"Frost"},
        power_cost = {30, 30, 30, 30},
        charges = 16,
        squadsize = 0,
        class = "Device",
        health = {560, 560, 560, 560},
        upgrade_locations = {"Siege of Hope", "Siege of Hope", "Siege of Hope"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Gifted Sigil",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to bind a Warden's Sigil to a friendly structure in a 40m range. The affecteds tructure gains and Ice Shield that absorbs up to 500 damage and may restore its absorption capacity by 25 every second as long as Warden's Sigil is attached. Reusable every 25 seconds.",
                values = nil
            }
        }
    },
    ["Warlock (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Fire", "Fire"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Ogre Supporter",
        counter = "Special",
        size = "M",
        damage = {520, 520, 520, 520},
        health = {510, 510, 510, 510},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Witchcraft",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 5 seconds, Warlock casts a spell on a friendly unit that enables it to deal 15% more damage for 10 seconds.",
                values = nil
            }, {
                name = "Blaze Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit fires burning blaze that deals 52 damage to enemies in a 5m radius around its target, up to 78 in total.",
                values = nil
            }
        }
    },
    ["Warlock (Frost)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Fire", "Fire"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Special",
        charges = 16,
        squadsize = 1,
        class = "Ogre Supporter",
        counter = "Special",
        size = "M",
        damage = {520, 520, 520, 520},
        health = {510, 510, 510, 510},
        upgrade_locations = {"Oracle", "Oracle", "Oracle"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Witchcraft",
                type = "Autocast",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every 5 seconds, Warlock casts a spell on a friendly unit that makes it to take 15% less damage for 10 seconds.",
                values = nil
            }, {
                name = "Blaze Bolt",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit fires burning blaze that deals 52 damage to enemies in a 5m radius around its target, up to 78 in total.",
                values = nil
            }
        }
    },
    ["Warrior's Death (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Immunity",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Casts a martial spell on the targeted friendly unit that makes it immune against all major debuffs. Additionally, it deal 50% more damage against hostile units but the unit will die as soon as the effect runs out. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Warrior's Death (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Shadow", "Fire"},
        power_cost = {90, 90, 90, 90},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Raven's End", "Raven's End", "Raven's End"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Immunity",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Casts a martial spell on the targeted friendly unit that makes it immune against all major debuffs. Additionally, it takes 50% less damage from hostile units but the unit will die as soon as the effect runs out. Lasts for 15 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Waystation (Fire)"] = {
        description = "",
        starter_card = true,
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {50, 50, 50, 50},
        charges = 12,
        squadsize = 1,
        class = "Shrine",
        health = {1590, 1590, 1590, 1590},
        upgrade_locations = {"Mo", "Mo", "Mo"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points to store them away. A maximum of 2500 life points may be stored at once.",
                values = nil
            }, {
                name = "Infused Poison",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Once at least 2000 life points have been stored the building will start to convert them in order to produce an invigorating potion that boosts every friendly unit's damage output wthin a 25m radius. Affected units will deal 30% more damage for 20 seconds. For each potion 245 stored life points will be used up.The buff duration will count down after the unit leave the area. Returning to the zone won't stop duration countdown .",
                values = nil
            }
        }
    },
    ["Waystation (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Renegade",
        rarity = "Common",
        orbs = {"Shadow", "Fire", "Neutral"},
        power_cost = {50, 50, 50, 50},
        charges = 12,
        squadsize = 1,
        class = "Shrine",
        health = {1590, 1590, 1590, 1590},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Corpse Gathering",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Gathers energy from nearby corpses equal to their former maximum life points to store them away. A maximum of 2500 life points may be stored at once.",
                values = nil
            }, {
                name = "Tainted Poison",
                type = "Passive",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Once at least 2000 life points have been stored the building will start to convert them in order to produce a devitalizing poison that envenoms every enemy unit within a 25m radius. Affected units will will lose 30 life points per second for 20 seconds. For each potion 245 stored life points will be used up.",
                values = nil
            }
        }
    },
    Werebeasts = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature"},
        power_cost = {75, 75, 75, 75},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 6,
        class = "Beast Soldiers",
        counter = "S",
        size = "S",
        damage = {600, 600, 600, 600},
        health = {600, 600, 600, 600},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Regeneration",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit constantly regenerates 5 life points per second.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Wheel of Gifts"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Nature", "Nature", "Neutral"},
        power_cost = {200, 200, 200, 200},
        weapon_type = "Melee",
        charges = 4,
        squadsize = 1,
        class = "Shrine",
        health = {1810, 1810, 1810, 1810},
        upgrade_locations = {
            "Slave Master", "The Guns of Lyr", "The Guns of Lyr"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Gift of Strength",
                type = "Active",
                upgrade_dependency = 0,
                description = "Upheaval of strength. Every friendly unit in the current game will deal 20% more damage. Lasts until building is destroyed.",
                values = nil
            }, {
                name = "Gift of Resilience",
                type = "Active",
                upgrade_dependency = 0,
                description = "Growth of toughness. Every friendly unit in the current game will take 20% less damage. Lasts until building is destroyed.",
                values = nil
            }, {
                name = "Gift of Juvenescence",
                type = "Active",
                upgrade_dependency = 0,
                description = "Powerful regeneration. Every friendly unit in the current game will regenerate 3% of its maximum lifepoints every 4 seconds. Lasts until building is destroyed.",
                values = nil
            }
        }
    },
    ["White Rangers"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Ranged",
        charges = 20,
        squadsize = 6,
        class = "Winterling Elf Archers",
        counter = "M",
        size = "S",
        damage = {528, 528, 528, 528},
        health = {780, 780, 780, 780},
        upgrade_locations = {
            "Defending Hope", "Defending Hope", "Defending Hope"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Bow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit fires arrows at enemies that deal 11 damage.",
                values = nil
            }, {
                name = "Home Defense",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to fire volleys of arrows into a target area of 4m radius dealing 9 damage to enemies, up to 14 in total. Will be interrupted if unit is knocked back. Otherwise lasts until unit is given different orders. Only available near friendly structures. Reusable every 2 seconds.",
                values = nil
            }
        }
    },
    Wildfire = {
        description = "",
        type = "Spell",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Fire", "Fire"},
        power_cost = {80, 80, 80, 80},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Spell",
        upgrade_locations = {"Titans", "Titans", "Titans"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Rolling Fire",
                type = nil,
                upgrade_dependency = 0,
                description = "Creates a firewall that moves along a defined path, dealing every second 85 damage to hostile units and 40 damage to structures in its area of effect, up to 170 in total. Affects ground targets only. Reusable every 10 seconds.",
                values = nil
            }
        }
    },
    ["Willzapper (Fire)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Fire"},
        power_cost = {70, 70, 70, 70},
        charges = 4,
        squadsize = 0,
        class = "Tower",
        health = {1235, 1235, 1235, 1235},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Voidcatcher",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 80,
                description = "Activate to redirect every enemy players' power refund to Willzapper's Voidnet.The affected player's power refund will no longer flow into his void but will be gatherd in the Voidnet for 30s. In order to reobtain the redirected power enemy players must first destroy Willzapper.While the effect lasts, every friendly entity will immediately return 20% of its usual power refund into the power pool.Reusable every 60seconds.",
                values = nil
            }
        }
    },
    ["Willzapper (Shadow)"] = {
        description = "",
        type = "Building",
        edition = "Lost Souls",
        rarity = "Uncommon",
        orbs = {"Nature", "Fire"},
        power_cost = {70, 70, 70, 70},
        charges = 4,
        squadsize = 0,
        class = "Tower",
        health = {1235, 1235, 1235, 1235},
        upgrade_locations = {"Crusade", "Crusade", "Crusade"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Voidcatcher",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 80,
                description = "Activate to redirect every enemy players' power refund to Willzapper's Voidnet.The affected player's power refund will no longer flow into his void but will be gatherd in the Voidnet for 30s. In order to reobtain the redirected power enemy players must first destroy Willzapper.While the effect lasts, hostile power refund from the void to actual power pool is additionally suppressed. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    ["Windhunter (Nature)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Dragonkin Archer",
        counter = "L",
        size = "L",
        damage = {1230, 1230, 1230, 1230},
        health = {400, 400, 400, 400},
        upgrade_locations = {"Ocean", "Ocean", "Ocean"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Wafting Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit spews a slimy substance that deals 137 damage to enemies in a 5m radius around its target, up to 206 in total.",
                values = nil
            }, {
                name = "Gifted Sobering",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to immediately remove all buffs from a targeted hostile unit or all debuffs from a friendly unit but Windhunter's life points will be reduced by 300. Will also revert all status effects like Freeze or Paralyze when casted on a friendly unit. Friendly units will be immune to all major debuffs for 15 seconds. Cannot be used anymore once life points have been reduced below 300. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    ["Windhunter (Shadow)"] = {
        description = "",
        type = "Unit",
        edition = "Renegade",
        rarity = "Uncommon",
        orbs = {"Shadow", "Fire"},
        power_cost = {120, 120, 120, 120},
        weapon_type = "Ranged",
        charges = 12,
        squadsize = 1,
        class = "Dragonkin Archer",
        counter = "L",
        size = "L",
        damage = {1230, 1230, 1230, 1230},
        health = {400, 400, 400, 400},
        upgrade_locations = {"Blight", "Blight", "Blight"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Wafting Spit",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, unit spews a slimy substance that deals 137 damage to enemies in a 5m radius around its target, up to 206 in total.",
                values = nil
            }, {
                name = "Tainted Sobering",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Activate to immediately remove all buffs from a targeted hostile unit or all debuffs from a friendly unit but Windhunter's life points will be reduced by 300. Will also revert all status effects like Freeze or Paralyze when casted on a friendly unit. Hostile units will be insensitive to all major buffs for 15 seconds. Cannot be used anymore once life points have been reduced below 300. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Life Stealer",
                type = "Passive",
                upgrade_dependency = 0,
                description = "15% of the damage dealt by the unit will be added to its life points.",
                values = nil
            }
        }
    },
    Windweavers = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Nature"},
        power_cost = {70, 70, 70, 70},
        weapon_type = "Special",
        charges = 20,
        squadsize = 6,
        class = "Wood Elf Archers",
        counter = "Special",
        size = "S",
        damage = {480, 480, 480, 480},
        health = {420, 450, 480, 528},
        upgrade_locations = {
            "Encounters with Twilight", "Encounters with Twilight",
            "Encounters with Twilight"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Bow Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 2,5 seconds, unit fires arrows at enemies that deal 10 damage.",
                values = nil
            }, {
                name = "Multishot",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Unit may shoot at two targets at once.",
                values = nil
            }
        }
    },
    ["Winter Witch"] = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Uncommon",
        orbs = {"Frost", "Frost", "Frost", "Neutral"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Special",
        charges = 8,
        squadsize = 1,
        class = "Human Wizard",
        counter = "Special",
        size = "M",
        health = {1160, 1160, 1160, 1160},
        upgrade_locations = {
            "The Soultree", "The Dwarven Riddle", "The Dwarven Riddle"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Frost Beam",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Casts a frosty beam that freezes enemy unit after a short while. After freeze wears off, target is immune vs Freeze for 10 seconds.",
                values = nil
            }, {
                name = "Gift of Winter",
                type = "Active",
                upgrade_dependency = 0,
                description = "A frosty aura of 15m radius that grants 3 Ice Shields every 3 seconds to friendly units in a 15m radius, up to 12 in total. Each Ice Shield absorbs up to 850 damage for 30 seconds. Spell will be interrupted if unit is knocked back. Otherwise lasts until unit is given different orders. Reusable every 20 seconds.",
                values = nil
            }, {
                name = "Steadfast",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Cannot be knocked back.",
                values = nil
            }
        }
    },
    ["Wintertide (Fire)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Frost"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {
            "Nightmare's End", "Nightmare's End", "Nightmare's End"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Defense",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every friendly ground unit within a 20m radius will be frozen to the ground. They will then be immobile but may still attack and use special abilities. Affected targets take 20% less damage, cannot be knocked and deal 250 damage to attacker when being trampled. Last for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Wintertide (Frost)"] = {
        description = "",
        type = "Spell",
        edition = "Amii",
        rarity = "Rare",
        orbs = {"Frost"},
        power_cost = {60, 60, 60, 60},
        weapon_type = "Melee",
        charges = 12,
        squadsize = 1,
        class = "Arcane",
        upgrade_locations = {"Empire", "Empire", "Empire"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Blessed Defense",
                type = "Godspell",
                upgrade_dependency = 0,
                affinity_dependency = true,
                description = "Every friendly ground unit within a 20m radius will be frozen to the ground. They will then be immobile but may still attack and use special abilities. Affected targets take 30% less damage and cannot be knocked. Last for 10 seconds. Reusable every 20 seconds.",
                values = nil
            }
        }
    },
    ["Witchclaws (Fire)"] = {
        description = "",
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 2,
        class = "Beast Soldiers",
        counter = "S",
        size = "M",
        damage = {630, 630, 630, 630},
        health = {540, 540, 540, 540},
        upgrade_locations = {
            "The Treasure Fleet", "The Treasure Fleet", "The Treasure Fleet"
        },
        upgrade_text = nil,
        abilities = {
            {
                name = "Infused Infiltration",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 30,
                description = "Activate to teleport the unit to a hostile structure within a 50m range. Cards can no longer be played out next to it once the unit has been teleported. At its new position it will explode after 10 seconds dealing 255 damage to hostile structures in a 20m radius, up to 765 total. Knocks back small units.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Witchclaws (Shadow)"] = {
        description = "",
        starter_card = true,
        type = "Unit",
        edition = "Amii",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {65, 65, 65, 65},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 2,
        class = "Beast Soldiers",
        counter = "S",
        size = "M",
        damage = {630, 630, 630, 630},
        health = {540, 540, 540, 540},
        upgrade_locations = {"Bad Harvest", "Bad Harvest", "Bad Harvest"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Tainted Infiltration",
                type = "Active",
                upgrade_dependency = 0,
                affinity_dependency = true,
                cost = 30,
                description = "Activate to teleport the unit to a hostile structure within a 50m range. Cards can no longer be played out next to it once the unit has been teleported. At its new position it will explode after 10 seconds dealing 170 damage to hostile units in a 20m radius, up to 510 in total. Knocks back small units.",
                values = nil
            }, {
                name = "Swift",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Moves at high speed.",
                values = nil
            }
        }
    },
    ["Worldbreaker Gun"] = {
        description = "",
        type = "Building",
        edition = "Twilight",
        rarity = "Rare",
        orbs = {"Frost", "Frost", "Neutral", "Neutral"},
        power_cost = {250, 250, 250, 250},
        charges = 4,
        squadsize = 1,
        class = "Fortress",
        damage = {6900, 6900, 6900, 6900},
        health = {4500, 4500, 4500, 4500},
        upgrade_locations = {"Empire", "The Guns of Lyr", "The Guns of Lyr"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Ground Attack",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Every 3 seconds, cannon fires a shell that deals 830 damage to enemies in a 15 radius around its target, up to 1240 in total. Affects ground targets only. Knocks back small and medium units.",
                values = nil
            }, {
                name = "Heavy Snowball",
                type = "Toggle",
                upgrade_dependency = 0,
                description = "Activate to fire off a large snowball that deals 1700 damage to enemies in a 25m radius around their target, up to 10350 in total. Has an extremely long range of 200m but can only fire into an area where at least one other friendly ground entity is positioned. Knocks back small and medium units. Has a 30 seconds cool-down after the weapon was built. Reusable every 30 seconds.",
                values = nil
            }
        }
    },
    Wrathblades = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Shadow"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 20,
        squadsize = 6,
        class = "Demon Soldiers",
        counter = "S",
        size = "S",
        damage = {510, 510, 510, 510},
        health = {600, 600, 600, 600},
        upgrade_locations = {"Slave Master", "Slave Master", "Slave Master"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Burnout",
                type = "Active",
                upgrade_dependency = 0,
                description = "Unit deals 30% more damage for 20 seconds. After the effect wears off unit will be weakened and deal 30% less damage for 40 seconds. Reusable every 60 seconds.",
                values = nil
            }
        }
    },
    Wrathgazer = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Ultra Rare",
        orbs = {"Shadow", "Shadow", "Shadow"},
        power_cost = {220, 220, 220, 220},
        weapon_type = "Special",
        charges = 4,
        squadsize = 1,
        class = "Demon Dominator",
        counter = "Special",
        size = "XL",
        health = {2000, 2000, 2000, 2000},
        upgrade_locations = {"Ocean", "The Insane God", "The Insane God"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Disintegrating Gaze",
                type = "Autocast",
                upgrade_dependency = 0,
                description = "Disintegrates its target slowly over time. Target unit will be paralyzed during disintegration and cannot be attacked by other units. If the spell is interrupted prematurely the target will be released unharmed. May only disintegrate units.",
                values = nil
            }, {
                name = "Pain Link",
                type = "Passive",
                upgrade_dependency = 0,
                description = "200% of all damage done to the unit will additionally also be distributed among all friendly units within a 20m radius.",
                values = nil
            }, {
                name = "Resilient",
                type = "Passive",
                upgrade_dependency = 0,
                description = "Takes 30% less damage.",
                values = nil
            }
        }
    },
    Wrecker = {
        description = "",
        type = "Unit",
        edition = "Twilight",
        rarity = "Common",
        orbs = {"Fire"},
        power_cost = {50, 50, 50, 50},
        weapon_type = "Melee",
        charges = 16,
        squadsize = 1,
        class = "Human Crusader",
        counter = "M",
        size = "M",
        damage = {570, 570, 570, 570},
        health = {540, 540, 540, 540},
        upgrade_locations = {"Sunbridge", "Sunbridge", "Sunbridge"},
        upgrade_text = nil,
        abilities = {
            {
                name = "Rallying Cry",
                type = "Active",
                upgrade_dependency = 0,
                description = "Activate to create a summoning zone around Wrecker. Units summoned in that zone are not dazed. Lasts for 15 seconds. Reusable every 30 seconds.",
                values = nil
            }
        }
    }
}

-- </pre>
-- [[Category:Modules]]

