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
                    {type = "fluid", name = "pm-hydrochloric-acid", quantity = 1},
                    {type = "item", name = "pm-transition-metal-ore", quantity = 10, next = "x20"},
                    {type = "fluid", name = "pm-acidic-water", quantity = 1},
                    {type = "fluid", name = "pm-naptha", quantity = 1},
                    {type = "item", name = "train", quantity = 1},
                    {type = "item", name = "construction-robot", quantity = 1},
                    {type = "item", name = "pm-atmospheric-condensor", quantity = 1},
                    {type = "item", name = "pm-crystallizer", quantity = 1},
                    {type = "item", name = "pm-post-transition-metal-ore", quantity = 10, next = "x20"},
                    {type = "item", name = "pm-alkali-metal-ore", quantity = 10, next = "x20"},
                    {type = "item", name = "pm-lithium-construction-robot", quantity = 1},
                    {type = "item", name = "pm-metalloid-ore", quantity = 10, next = "x20"},
                    {type = "technology", name = "rocket-silo", quantity = 1},
                    {type = "item", name = "rocket-part", quantity = 100},

                    {type = "group", name = "Factory"},
                    {type = "item", name = "pm-acid-plant", quantity = 1},
                    {type = "item", name = "assembling-machine-1", quantity = 1},
                    {type = "item", name = "assembling-machine-2", quantity = 1},
                    {type = "item", name = "assembling-machine-3", quantity = 1},
                    {type = "item", name = "pm-molten-inator-1", quantity = 1},
                    {type = "item", name = "pm-cold-inator-1", quantity = 1},
                    {type = "item", name = "electric-furnace", quantity = 1},
                    {type = "fluid", name = "pm-chromic-acid", quantity = 100, next = "x10"},
                    {type = "item", name = "chemical-plant", quantity = 1},
                    {type = "item", name = "pm-chemical-plant-2", quantity = 1},
                    {type = "item", name = "pm-air-filterer", quantity = 1},
                    {type = "item", name = "speed-module", quantity = 1, next = "x10"},
                    {type = "item", name = "efficiency-module", quantity = 1, next = "x10"},
                    {type = "item", name = "productivity-module", quantity = 1, next = "x10"},
                    {type = "item", name = "speed-module-3", quantity = 1, next = "x10"},
                    {type = "item", name = "efficiency-module-3", quantity = 1, next = "x10"},
                    {type = "item", name = "productivity-module-3", quantity = 1, next = "x10"},
                    {type = "item", name = "beacon", quantity = 1},

                    {type = "group", name = "Military"},
                    {type = "item", name = "grenade", quantity = 1},
                    {type = "item", name = "pm-shotgun-slug", quantity = 1},
                    {type = "item", name = "piercing-magazine", quantity = 1},
                    {type = "item", name = "pm-high-density-magazine", quantity = 1, next = "x10"},
                    {type = "item", name = "pm-genevas-neglection-magazine", quantity = 1, next = "x10"},
                    {type = "item", name = "pm-phosgene", quantity = 4, next = "x10"},
                    {type = "item", name = "piercing-magazine", quantity = 4, next = "x10"},

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