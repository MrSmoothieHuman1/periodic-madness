remote.add_interface("periodic-madness", {
     milestones_presets = function()
         return {
             ["Periodic Madness"] = {
                 required_mods = {"periodic-madness"},
                 milestones = 
                 {
                    {type = "group", name = "Science"},
                    {type = "item",  name = "automation-science-pack", quantity = 1},
                    {type = "item",  name = "logistic-science-pack", quantity = 1},
                    {type = "item",  name = "pm-advanced-advanced-transition-metal-science-pack", quantity = 1},
                    {type = "item",  name = "pm-post-transition-metal-science-pack", quantity = 1},
                    {type = "item",  name = "pm-reactive-non-metals-science-pack", quantity = 1},
                    {type = "item",  name = "pm-alkali-metal-science-pack", quantity = 1},
                    {type = "item",  name = "pm-metalloid-science-pack", quantity = 1},
                    {type = "item",  name = "automation-science-pack", quantity = 1000, next = "x10"},
                    {type = "item",  name = "logistic-science-pack", quantity = 1000, next = "x10"},
                    {type = "item",  name = "pm-advanced-advanced-transition-metal-science-pack", quantity = 1000, next = "x10"},
                    {type = "item",  name = "pm-post-transition-metal-science-pack", quantity = 1000, next = "x10"},
                    {type = "item",  name = "pm-reactive-non-metals-science-pack", quantity = 1000, next = "x10"},
                    {type = "item",  name = "pm-alkali-metal-science-pack", quantity = 1000, next = "x10"},
                    {type = "item",  name = "pm-metalloid-science-pack", quantity = 1000, next = "x10"},

                    {type = "group", name = "Progresss"},
                    {type = "fluid", name = "pm-hydrochloric-acid", amount = 1},
                    {type = "item", name = "pm-transition-metal-ore", amount = 10, next = "x20"},
                    {type = "fluid", name = "pm-acidic-water", amount = 1},
                    {type = "fluid", name = "pm-naptha", amount = 1},
                    {type = "item", name = "train", amount = 1},
                    {type = "item", name = "construction-robot", amount = 1},
                    {type = "item", name = "pm-atmospheric-condensor", amount = 1},
                    {type = "item", name = "pm-crystallizer", amount = 1},
                    {type = "item", name = "pm-post-transition-metal-ore", amount = 10, next = "x20"},
                    {type = "item", name = "pm-alkali-metal-ore", amount = 10, next = "x20"},
                    {type = "item", name = "pm-lithium-construction-robot", amount = 1},
                    {type = "item", name = "pm-metalloid-ore", amount = 10, next = "x20"},
                    {type = "technology", name = "rocket-silo", quantity = 1},
                    {type = "item", name = "rocket-part", quantity = 100},

                    {type = "group", name = "Factory"},
                    {type = "item", name = "pm-acid-plant", amount = 1},
                    {type = "item", name = "assembling-machine-1", amount = 1},
                    {type = "item", name = "assembling-machine-2", amount = 1},
                    {type = "item", name = "assembling-machine-3", amount = 1},
                    {type = "item", name = "pm-molten-inator-1", amount = 1},
                    {type = "item", name = "pm-cold-inator-1", amount = 1},
                    {type = "item", name = "electric-furnace", amount = 1},
                    {type = "fluid", name = "pm-chromic-acid", amount = 100, next = "x10"},
                    {type = "item", name = "chemical-plant", amount = 1},
                    {type = "item", name = "pm-chemical-plant-2", amount = 1},
                    {type = "item", name = "pm-air-filterer", amount = 1},
                    {type = "item", name = "speed-module", amount = 1, next = "x10"},
                    {type = "item", name = "efficiency-module", amount = 1, next = "x10"},
                    {type = "item", name = "productivity-module", amount = 1, next = "x10"},
                    {type = "item", name = "speed-module-3", amount = 1, next = "x10"},
                    {type = "item", name = "efficiency-module-3", amount = 1, next = "x10"},
                    {type = "item", name = "productivity-module-3", amount = 1, next = "x10"},
                    {type = "item", name = "beacon", amount = 1},

                    {type = "group", name = "Military"},
                    {type = "item", name = "grenade", amount = 1},
                    {type = "item", name = "pm-shotgun-slug", amount = 1},
                    {type = "item", name = "piercing-magazine", amount = 1},
                    {type = "item", name = "pm-high-density-magazine", amount = 1, next = "x10"},
                    {type = "item", name = "pm-genevas-neglection-magazine", amount = 1, next = "x10"},
                    {type = "item", name = "pm-phosgene", amount = 4, next = "x10"},
                    {type = "item", name = "piercing-magazine", amount = 4, next = "x10"},

                    {type = "group", name = "Kills"},
                    {type = "kill", name = "medium-biter", quantity = 1},
                    {type = "kill", name = "big-biter", quantity = 1},
                    {type = "kill", name = "behemoth-biter", quantity = 1},
                    {type = "kill", name = "behemoth-biter", quantity = 1000, next = "x10"},
                    {type = "kill", name = "character", quantity = 1, next = "x5", hidden = true},
                    {type = "kill", name = "character", quantity = 100, hidden = true}
                 }
            }
        }
    end
})