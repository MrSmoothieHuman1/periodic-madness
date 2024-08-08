

data:extend({
{
    type = "technology",
    name = "pm-welder-1-unlock",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/welder-unlock.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-welder"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydrogen-fuel"
        }
    },
    prerequisites = {"automation"},
    unit =
    {
        count = 15,
        ingredients =
        {
            {"automation-science-pack", 1}
        },
        time = 5
    }
},
{
    type = "technology",
    name = "pm-alloying",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/alloying-tech.png",
    effects =
    {
        
        {
            type = "unlock-recipe",
            recipe = "pm-brass-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-brass-cog"
        }
    },
    prerequisites = {"pm-welder-1-unlock"},
    unit =
    {
        count = 25,
        ingredients =
        {
            {"automation-science-pack", 1}
        },
        time = 5
    }
    
},
{
    type = "technology",
    name = "pm-stainless-steel-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/stainless-steel-unlock.png",
    effects =
    {
        
        {
            type = "unlock-recipe",
            recipe = "pm-stainless-steel-alloy"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-stainless-steel-chest"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-stainless-steel-basic-framing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-stainless-steel-panelling"
        },
        
    },
    prerequisites = {"steel-processing", "pm-advanced-advanced-transition-metal-pack-unlock"},
    unit =
    {
        count = 30,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 30
    },

},
{
    type = "technology",
    name = "pm-byproduct-handling",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/byproduct-handling.png",
    effects =
    {
        
        {
            type = "unlock-recipe",
            recipe = "pm-ferrum-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-patina-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-transition-slag-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chunk-slag-decomposition"
        }
        
    },
    prerequisites = {"pm-transition-metal-refining"},
    unit =
    {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
        },
        time = 10
    },

},
{
    type = "technology",
    name = "pm-advanced-transition-metal-refining",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-transition-metal-refining.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-water-acifying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-silver-plate",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-silver-leeching",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-silver-chunk-refining",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gold-plate",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gold-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gold-chunk-refining"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-molybdenum-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-molybdenite-crushing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-molybdenum-floating"
        }
    },
    prerequisites = {"pm-transition-metal-refining", "pm-mercury-processing"},
    unit =
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1},
        },
        time = 10
    }
},
{
    type = "technology",
    name = "pm-mercury-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/mercury-processing.png",
    effects =
    {
     {
        type = "unlock-recipe",
        recipe = "pm-cinnabar-processing"
     },
     {
        type = "unlock-recipe",
        recipe = "pm-mercury-powdering"
     },
     {
        type = "unlock-recipe",
        recipe = "pm-mercury-liquifying",
     },
     {
        type = "unlock-recipe",
        recipe = "pm-mercury-vapour-condensing"
     }
    },
    prerequisites = {"automation", "pm-transition-metal-refining"},
    unit =
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1},
        },
        time = 10
    }
},
{
    type = "technology",
    name = "pm-water-distillation",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/water-distillation-tech.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-transition-metal-washing"
        },
        {
            type =  "unlock-recipe",
            recipe = "offshore-pump",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-seawater-desaltination"
        },
        {
            type = "unlock-recipe",
            recipe = "pump"
        }
    },
    

    prerequisites = {"automation-2", "pm-cleaner-power-generation"},
    unit =
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-wood-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/wood-processing.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-wood-stripping",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-wood-strip-burning"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-coal-burning"
        },

    },
    prerequisites = {"logistic-science-pack"},
    unit = 
    {
        count = 75,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-rubber-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/rubber-processing.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-resin-to-rubber-resin"
        },
       {
            type = "unlock-recipe",
            recipe = "pm-rubber-resin-cooling",
       },
       {
            type = "unlock-recipe",
            recipe = "pm-rubber-vulcanisation"
       }
    },
    prerequisites = {"pm-resin-processing"}, 
    unit = 
    {
        count = 100,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-pheonlic-resin-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/pheonlic-resin-processing.png",
    effects = 
    {   
       {
            type = "unlock-recipe",
            recipe = "pm-resin-to-pheonlic-resin"
       }
    },
    prerequisites = {"pm-resin-processing"},
    unit = 
    {
        count = 100,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 25
    }
},
{
    type = "technology",
    name = "pm-resin-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/resin-processing.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-resin-forming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-basic-fluid-circuit"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vacuum-former-1"
        }
    },
    prerequisites = {"pm-wood-processing", "pm-water-distillation", "pm-tempature-plating"},
    unit = 
    {
        count = 100 / 2,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 25
    }
},
{
    type = "technology",
    name = "pm-silver-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/silver-processing.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-silver-plating"
        },
    },
    prerequisites = {"logistic-science-pack"},
    unit =
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-gold-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/gold-processing.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-gold-wire"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gold-plating"
        },
    },
    prerequisites = {"logistic-science-pack"},
    unit =
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-cleaner-power-generation",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/clean-power-forming.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "boiler"
        }
    },
    prerequisites = {"automation"},
    unit = 
    {
        count = 20,
        ingredients = 
        {
            {"automation-science-pack", 1}
        },
        time = 10
    }
},
{
    type = "technology",
    name = "pm-fiberoptics",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/optics.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-glass-fibers"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fiberoptic-cable"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-glass-resmelting"
        }
    },
    prerequisites = {"optics", "pm-pheonlic-resin-processing", "pm-gold-processing"}, 
    unit = 
    {
        count = 75,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 20
    }

},


{
    type = "technology",
    name = "pm-logistics-4",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__periodic-madness__/graphics/technology/logistics-4.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-high-density-transport-belt"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-high-density-underground-belt"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-high-density-splitter"
        }
    },
    prerequisites = {"logistics-3", "low-density-structure", "advanced-electronics-2", "production-science-pack"},
    unit = 
    {
        count = 350,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-transition-metal-refining",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/transition-metal-refining.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-transition-iron-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-transition-copper-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-transition-nickel-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-transition-zinc-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-transition-manganese-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-transition-aluminium-decomposition"
        },
    },
    prerequisites = {"automation", "pm-ezekiel-ore-purifying"},
    unit = 
    {
        count = 30,
        ingredients = 
        {
            {"automation-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-ezekiel-ore-purifying",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/ezekiel-purifying.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-ezekiel-iron-purifying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ezekiel-copper-purifying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ezekiel-nickel-purifying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ezekiel-zinc-purifying"
        },
    },
    prerequisites = {"automation", "pm-chlorine-processing"},
    unit = 
    {
        count = 15,
        ingredients = 
        {
            {"automation-science-pack", 1}
        },
        time = 10
    }
},
{
    type = "technology",
    name = "pm-voltatic-piles",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/voltatic-piles.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-copper-disc"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zinc-disc"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-voltatic-pile"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-voltatic-pile-charging"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-voltatic-pile-fixing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-voltatic-charger"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-voltatic-discharger"
        },
    },
    prerequisites = {"electronics"},
    unit = 
    {
        count = 80,
        ingredients =
        {
            {"automation-science-pack", 1}
        },
        time = 20
    }
},
{
    type = "technology",
    name = "pm-tempature-plating",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/tempature-plating.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-gold-heating-plating"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-copper-heating-plating"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-brass-heating-plating"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-silver-cooling-plating"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-copper-cooling-plating"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-steel-cooling-plating"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-manganese-cooling-plating"
        },
    },
    prerequisites = {"logistic-science-pack", "pm-gold-processing", "pm-silver-processing"},
    unit = 
    {
        count = 100,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-advanced-basic-tubing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-basic-multimetal-items.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-brass-basic-tubing",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-steel-basic-tubing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-steel-basic-framing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-steel-panelling"
        }

    },
    prerequisites = {"pm-alloying", "steel-processing"},
    unit = 
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-oil-residual-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/oil-residual-recipes.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-oil-residual-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-residual-chunk-refining",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bitumen-clearing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bitumen-washing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bitumen-creosote"
        }
    },
    prerequisites = {"oil-processing"},
    unit = 
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-naptha-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/naptha-recipes.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-butane-cracking"
        }
    },
    prerequisites = {"oil-processing"},
    unit = 
    {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-refinery-gases-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/refinery-gases-recipes.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe ="pm-refinery-gases-refining",
        }
    },
    prerequisites = {"oil-processing"},
    unit = 
    {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-fuel-oils-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/fuel-oils-recipes.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-catalyst-container"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cobalt-catalyst"
        },
        {
            type = "unlock-recipe",
            recipe = "solid-fuel-from-heavy-oil"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fuel-oil-hydrosulfurisation"
        }
    },
    prerequisites = {"advanced-oil-processing"},
    unit = 
    {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-lubricating-oils-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/lubricating-oils-recipes.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "lubricant"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-solid-lubricant"
        }
    },
    prerequisites = {"advanced-oil-processing"},
    unit = 
    {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-diesel-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/diesel-recipes.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-diesel-cracking"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-legendary-diesel-to-solid-fuel"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-common-diesel-to-solid-fuel"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-common-diesel-cracking"
        },
    },
    prerequisites = {"advanced-oil-processing"},
    unit = 
    {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-kerosene-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/kerosene-recipes.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-catalyst-container"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cobalt-catalyst"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-kerosene-to-solid-fuel"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-kerosene-hydrosulfurisation"
        }
    },
    prerequisites = {"advanced-oil-processing"},
    unit = 
    {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-petrol-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/petrol-recipes.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-petrol-to-solid-fuel"
        }
    },
    prerequisites = {"advanced-oil-processing"},
    unit = 
    {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-basic-polyethylene-plastic",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/basic-polyethylene-plastic.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-butene-cracking"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ethylene-polymerisation"
        },
        {
            type = "unlock-recipe",
            recipe = "plastic-bar"
        }
    },
    prerequisites = {"pm-refinery-gases-recipes", "pm-naptha-recipes", "pm-oil-residual-recipes"},
    unit = 
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-diesel-fuel-canisters",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/diesel-can-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-fuel-canister"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-diesel-canister"
        }
    },
    prerequisites = {"pm-basic-polyethylene-plastic", "pm-diesel-recipes"},
    unit = 
    {
        count = 75,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-kerosene-fuel-canisters",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/kerosene-can-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-fuel-canister"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-kerosene-canister"
        }
    },
    prerequisites = {"pm-basic-polyethylene-plastic", "pm-kerosene-recipes"},
    unit = 
    {
        count = 75,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-petrol-fuel-canisters",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/petrol-can-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-fuel-canister"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-petrol-canister"
        }
    },
    prerequisites = {"pm-basic-polyethylene-plastic", "pm-petrol-recipes"},
    unit = 
    {
        count = 75,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30 / 2
    }
},
{
    type = "technology",
    name = "pm-advanced-refinery-gas-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-refinery-gases.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-catalyst-container"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-palladium-catalyst"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-palladium-catalyst-refinery-gas-cracking"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-palladium-hydride-crushing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-butene-to-butane"
        }
    },
    prerequisites = {"pm-diesel-recipes", "pm-refinery-gases-recipes"},
    unit = 
    {
        count = 100,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-sulfuric-acid-dilution",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/sulfuric-acid-dilution",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-sulfuric-acid-to-acidic-water"
        }
    },
    prerequisites = {"pm-alternative-science-pack-unlock", "sulfur-processing"},
    unit = 
    {
        count = 100,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-alternative-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-advanced-advanced-transition-metal-pack-unlock",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-advanced-transition-metal-unlock.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-advanced-transition-metal-science-pack"
        }
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-refining", "logistic-science-pack"},
    unit =
    {
        count = 150,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-fluid-circuit",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/fluid-technology.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-fluid-circuit-breadboard"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-transistors"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fluid-integrated-circuits"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fluid-circuit"
        }
    },
    prerequisites = {"pm-rubber-processing", "pm-gold-processing"},
    unit = 
    {
        count = 150,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 15
    }
},
{
    type = "technology",
    name = "pm-advanced-advanced-transition-metal-refining",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-advanced-transition-metal-refining.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-chunk-oxidising"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-chlorination"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-chloride-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tungsten-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tungsten-crushing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-wolframite-washing"
        },
        {
            type= "unlock-recipe",
            recipe = "pm-tungsten-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tungsten-plate"
        }
    },
    prerequisites = {"pm-advanced-transition-metal-refining", "pm-washing-plant-1", "pm-silver-processing", "pm-gold-processing"},
    unit = 
    {
        count = 150,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 20
    }
},
{
    type = "technology",
    name = "pm-oil-cracking-and-reforming",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/oil-fraction-cracking.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-fluid-catalyst-cracker"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-burn-inator"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-oil-residual-cracking",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fuel-oils-cracking",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lubricating-oils-cracking",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-diesel-cracking",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-kerosene-cracking",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-naptha-cracking",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-petrol-cracking",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-petrol-reforming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-naptha-reforming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-kerosene-reforming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-diesel-reforming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lubricating-oils-reforming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fuel-oils-reforming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-oil-residuals-reforming"
        },
    },
    prerequisites = {"pm-oil-residual-recipes", "pm-fuel-oils-recipes", "pm-lubricating-oils-recipes", "pm-diesel-recipes", "pm-kerosene-recipes", "pm-naptha-recipes", "pm-petrol-recipes", "pm-refinery-gases-recipes"},
    unit = 
    {
        count = 75,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-vanadium-oxide-redox-batteries",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/vanadium-oxide-battery.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-battery-casing"
        },
        {   
            type = "unlock-recipe",
            recipe = "pm-copper-disk-anodization"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zinc-disk-cathodization"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vanadium-oxide"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vanadium-oxide-positive-solution"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vanadium-oxide-negative-solution"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vanadium-redox-battery"
        }
    },
    prerequisites = {"pm-vanadium-processing"},
    unit = 
    {   
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-plastic-science-packs",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/plastic-science-bottle.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-plaster-of-nauvis"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-science-mold"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-science-mold-filling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-science-bottle"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-transition-metal-science-pack"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-advanced-transition-metal-science-pack"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-advanced-advanced-transition-metal-science-pack"
        },
    },
    prerequisites = {"pm-flourine-processing", "pm-polymethyl-methacrylate"},
    unit = 
    {
        count = 125,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-tin-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/tin-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-tin-leeching",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cassiterite-crushing",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tin-chunk-leeching",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-coloured-tin-combining",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tin-plate",
        }
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"},
    unit = 
    {
        count = 100,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-copper-tin-solder",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/solder.png",
    effects = 
    {
        
        {
            type = "unlock-recipe",
            recipe = "pm-liquid-solder"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-solder-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-solder-wire"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-solder-case"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-solder"
        },

    },
    prerequisites = {"pm-tin-processing", "pm-platinum-processing"},
    unit = 
    {   
        count = 75,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-tempature-inators",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/temp-inators.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-molten-inator"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cold-inator"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-iron-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-copper-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-nickel-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zinc-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-manganese-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gold-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-silver-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tin-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tungsten-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-aluminium-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-palladium-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-iron-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-copper-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-nickel-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zinc-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-manganese-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gold-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-silver-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tin-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tungsten-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-aluminium-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-palladium-plate-cooling"
        },
    },
    prerequisites = {"pm-zirconium-processing"},
    unit = 
    {
        count = 150,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-circuit-megassembler",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/megassembler-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-circuit-megassembler"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-megassembler-electronic-circuit"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-megassembler-fluid-resistant-circuit"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-megassembler-advanced-circuit"
        },
    },
    prerequisites = {"lubricant"},
    unit = 
    {
        count = 350,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 100,
    }
},
{
    type = "technology",
    name = "pm-atmospheric-condensation",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/atmospheric-condensation.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-atmospheric-condenser"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-atmospheric-gathering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-oxygen-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-nitrogen-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chlorine-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-carbon-dioxide-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-trace-gas-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-oxygen-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-nitrogen-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chlorine-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-carbon-dioxide-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-trace-gas-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-oxygen-atmospheric-voiding"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-nitrogen-atmospheric-voiding"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chlorine-atmospheric-voiding"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-carbon-dioxide-atmospheric-voiding"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-trace-gas-atmospheric-voiding"
        },
    },
    prerequisites = {"advanced-electronics"},
    unit = 
    {
        count = 150,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-filter-long-handed-inserter",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/filter-long-handed-inserter.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-filter-long-handed-inserter"
        }
    },
    prerequisites = {"fast-inserter", "pm-rubber-processing"},
    unit = 
    {
        count = 50,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 15,
    }
},
{
    type = "technology",
    name = "pm-multimetal-multiproperty",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/multimetal-multiproperty-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-tungsten-heavyweight-panelling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chrominum-heavyweight-panelling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-lightweight-panelling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tin-lightweight-panelling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-aluminium-lightweight-panelling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-titanium-lightweight-framing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tin-lightweight-framing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-aluminium-lightweight-framing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tungsten-heavyweight-framing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chrominum-heavyweight-framing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-stainless-steel-corrosion-tubing",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gold-corrosion-tubing",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-silver-corrosion-tubing",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-brass-corrosion-tubing",
        },
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"},
    unit = 
    {
        count = 125,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30
    }
},

{
    type = "technology",
    name = "pm-science-center",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/science-center-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-science-center"
        }
    },
    prerequisites = {"advanced-electronics"},
    unit = 
    {
        count = 200,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-CO2-nullifying",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/CO2-nullifying.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-CO2-nullifer"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-CO2-nullifying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zirconia-carbon-dioxide-electrolysis"
        }
    },
    prerequisites = {"chemical-science-pack"},
    unit = 
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-cadnium-processing",
    icon_size = 12*4 + 2 + 206,
    icon = "__periodic-madness__/graphics/technology/cadnium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-zinc-chunk-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zinc-tailings-condensing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cadnium-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cadnium-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cadnium-plate-cooling"
        },
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"},
    unit = 
    {
        count = 40 + 10,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 30,
    }
},
{
    type = "technology",
    name = "pm-molten-alloys",
    icon_size = 206 + 10*4 + 10,
    icon = "__periodic-madness__/graphics/technology/molten-alloys.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-liquid-steel"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-steel-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-liquid-brass"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-brass-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-liquid-stainless-steel"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-stainless-steel-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-liquid-kasethal"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-kasethal-plate-cooling"
        },
    },
    prerequisites = {"pm-tempature-inators-2", "pm-flourine-processing"},
    unit = 
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-trace-gas-refining", --you come up with a better name.
    icon_size = 206 + 20*2 + 10,
    icon = "__periodic-madness__/graphics/technology/trace-gas-refining.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-trace-gas-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-water-vapour-condensing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-argon-titanium-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-argon-tungsten-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-helium-gas-atmospheric-voiding"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-argon-gas-atmospheric-voiding"
        },
    },
    prerequisites = {"chemical-science-pack", "pm-atmospheric-condensation"},
    unit = 
    {
        count = 100,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-chemical-resin",
    icon_size = 207 + 49,
    icon = "__periodic-madness__/graphics/technology/chemical-based-resin.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-naptha-steam-cracking"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-acetone"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bisphenol-A"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chemical-resin"
        }
    },
    prerequisites = {"pm-bromine-processing"},
    unit = 
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-advanced-polyethylene-plastic",
    icon_size = 207 + 49,
    icon = "__periodic-madness__/graphics/technology/advanced-polyethylene-plastic.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-polyethylene-plastic",
        }
    },
    prerequisites = {"pm-basic-polyethylene-plastic", "pm-chemical-resin"},
    unit = 
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 44 + 1
    }
},
{
    type = "technology",
    name = "pm-pollution-filtering",
    icon_size = 208 + 48,
    icon = "__periodic-madness__/graphics/technology/air-filterer-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-air-filterer"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-air-filter-cleaning"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-air-filterering"
        },
    },
    prerequisites = {"pm-CO2-nullifying"},
    unit = 
    {
        count = 249 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 60
    }

},
{
    type = "technology",
    name = "pm-washing-plant-1",
    icon_size = 209 + 47,
    icon = "__periodic-madness__/graphics/technology/washing-plant-1-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-washing-plant-1"
        }
    },
    prerequisites = {"pm-fluid-circuit"},
    unit = 
    {
        count = 74 - 24,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-washing-plant-2",
    icon_size = 209 + 47,
    icon = "__periodic-madness__/graphics/technology/washing-plant-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-washing-plant-2"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gas-water-electroylsis"
        },
    },
    prerequisites = {"fluid-handling"},
    unit = 
    {
        count = 74 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-chrominum-processing",
    icon_size = 210 + 46,
    icon = "__periodic-madness__/graphics/technology/chromium-processing.png",
    effects = 
    {
        { 
            type = "unlock-recipe",
            recipe = "pm-chrominum-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromite-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ferrochrominum-carbon-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-acid"
        }
    },
    prerequisites = {"pm-oil-residual-recipes", "pm-tempature-inators"},
    unit = 
    {
        count = 74 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-chromic-acid-leeching",
    icon_size = 211 + 44 + 1,
    icon = "__periodic-madness__/graphics/technology/chromic-acid-leeching.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-transition-iron-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-transition-copper-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-transition-nickel-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-transition-zinc-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-transition-manganese-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-transition-aluminium-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-gold-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-silver-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-cinnabar-processing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-tin-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-titanium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-tungsten-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-molybdenum-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-chrominum-leeching"
        },
    },
    prerequisites = {"pm-chrominum-processing"},
    unit = 
    {
        count = 249 + 1,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 40 + 2 + 3
    }
},
{
    type = "technology",
    name = "pm-palladium-processing",
    icon_size = 212 + 44,
    icon = "__periodic-madness__/graphics/technology/palladium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-nickel-chunk-frothing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-palladium-nickel-froth-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-nickel-tailings-looping"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-palladium-plate"
        }
    },
    prerequisites = {"pm-diesel-recipes", "pm-advanced-refinery-gas-recipes"},
    unit = 
    {
        count = 200,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 40
    }
},
{
    type = "technology",
    name = "pm-vanadium-processing",
    icon_size = 213 + 43,
    icon = "__periodic-madness__/graphics/technology/vanadium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-magnetite-forming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ferrovanadium"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vanadate-solution"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vanadate-solution-seperation"
        }
    },
    prerequisites = {"pm-oil-residual-recipes", "sulfur-processing"},
    unit =
    {
        count = 70 + 6 - 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-greenhouse",
    icon_size = 214 + 42,
    icon = "__periodic-madness__/graphics/technology/greenhouse-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-greenhouse"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-basic-wood-growth"
        }
    },
    prerequisites = {"chemical-science-pack", "pm-anti-bacterial-multiproperty-multimetals", "pm-wood-processing"},
    unit = 
    {
        count = 70 - 20,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-vacuum-former-2",
    icon_size = 216 + 40,
    icon = "__periodic-madness__/graphics/technology/vacuum-former-2-tech.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-vacuum-former-2"
        }
    },
    prerequisites = {"pm-trace-gas-refining", "pm-chemical-resin"},
    unit = 
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 44 + 1
    }
},
{
    type = "technology",
    name = "pm-anti-bacterial-multiproperty-multimetals",
    icon_size = 217 + 39,
    icon = "__periodic-madness__/graphics/technology/anti-bacterial-mutlimetals.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-silver-anti-bacterial-tubing",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-copper-anti-bacterial-tubing",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-brass-anti-bacterial-tubing",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-silver-anti-bacterial-panelling",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-copper-anti-bacterial-panelling",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-brass-anti-bacterial-panelling",
        },
    },
    prerequisites = {"chemical-science-pack"},
    unit = 
    {
        count = 74 + 1,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 44 + 1
    }
},
{
    type = "technology",
    name = "pm-phosphor-processing",
    icon_size = 218 + 38,
    icon = "__periodic-madness__/graphics/technology/phosphorus-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-phosphorus-stone-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-phosphor-vapour"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-phosphor-vapour-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-phosphoric-acid-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-white-to-red-phosphorus"
        }
    },
    prerequisites = {"chemical-science-pack"},
    unit = 
    {
        count = 75,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-fertiliser",
    icon_size = 219 + 37,
    icon = "__periodic-madness__/graphics/technology/fertiliser-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-ammonia-trace-gas-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fertiliser"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fertilised-wood-growth",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ammonia-atmospheric-voiding"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ammonium-chloride"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ammonium-vanadate-solution"
        },

    },
    prerequisites = {"pm-phosphor-processing", "pm-greenhouse"},
    unit = 
    {
        count = 100 + 20*3 - 10,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 40 + 4 + 1
    }
},
{
    type = "technology",
    name = "pm-biomass-processing",
    icon_size = 220 + 36,
    icon = "__periodic-madness__/graphics/technology/biomass-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-wood-strip-washing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-biomass"
        }
    },
    prerequisites = {"pm-greenhouse"},
    unit = 
    {
        count = 100 + 20*2 + 10 + 14 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 40 + 4 + 1
    }
},
{
    type = "technology",
    name = "pm-agar-bacteria-filtering",
    icon_size = 221 + 34 + 1,
    icon = "__periodic-madness__/graphics/technology/agar-solution-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-factorian-bacteria-greenhouse"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-agar-solution"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-factorian-bacteria-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gene-harvesting"
        },

    },
    prerequisites = {"pm-greenhouse"},
    unit = 
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-agar-storage",
    icon_size = 222 + 34,
    icon = "__periodic-madness__/graphics/technology/agar-storage.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-empty-petri-dish"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-agar-petri-dish"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bacteriaed-petri-dish"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-agar-dish-emptying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bacteriaed-dish-emptying"
        }
    },
    prerequisites = {"pm-anti-bacterial-multiproperty-multimetals", "pm-agar-bacteria-filtering"},
    unit = 
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 33 + 12
    }
},
{
    type = "technology",
    name = "pm-bio-modules",
    icon_size = 223 + 33,
    icon = "__periodic-madness__/graphics/technology/bio-module-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-blank-bio-module"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-trace-acetonitrile"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-trace-acetonitrile-looping"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-acetonitrile-to-phosphoramidite"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-agility-bio-module"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-myostatin-structuring"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-myostatin-fixing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-myostatin-oxygenation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-myostatin-nitrogenation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-strength-bio-module"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-iron-sulfur-clustering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-CISD2"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-health-bio-module"
        },
    },
    prerequisites = {"pm-anti-bacterial-multiproperty-multimetals", "pm-agar-bacteria-filtering", "pm-phosphor-processing", "sulfur-processing", "pm-fertiliser"},
    unit = 
    {
        count = 140 + 10,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 33 + 12
    }
},
{
    type = "technology",
    name = "pm-glass-melting",
    icon_size = 224 + 32,
    icon = "__periodic-madness__/graphics/technology/glass-melting.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-glass-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-glass-cooling"
        }
    },
    prerequisites = {"pm-tempature-inators"},
    unit = 
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 30
    }

},
{
    type = "technology",
    name = "pm-post-transition-metal-pack-unlock",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/post-transition-metal-unlock.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-post-transition-metal-science-pack"
        }
    },
    prerequisites = {"pm-science-center", "pm-crystallisation"},
    unit = 
    {
        count = 150,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 80
    }
},
{
    type = "technology",
    name = "pm-tempature-inators-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/temp-inators-2.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-molten-inator-2"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cold-inator-2"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-indium-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-thallium-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-indium-plate-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-thallium-plate-cooling"
        },
    },
    prerequisites = {"pm-tempature-framing", "pm-tempature-inators"},
    unit = 
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 41 + 4
    }
},
{
    type = "technology",
    name = "pm-chlorine-processing",
    icon_size = 226 + 30,
    icon = "__periodic-madness__/graphics/technology/chlorine-processing.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-electrolysis-plant"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-seawater-evaporation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-salt-electroylsis"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sodium-looping"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydrochloric-acid"
        },
    },
    prerequisites = {},
    unit = 
    {
        count = 4 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
        },
        time = 10,
    }
},
{
    type = "technology",
    name = "pm-tempature-framing",
    icon_size = 227 + 29,
    icon = "__periodic-madness__/graphics/technology/tempature-framing.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-molten-framing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cooling-framing"
        }
    },
    prerequisites = {"pm-indium-processing"},
    unit = 
    {
        count = 124 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-flourine-processing",
    icon_size = 228 + 28,
    icon = "__periodic-madness__/graphics/technology/flourine-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-flourite-crystallisation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydrogen-flouride"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydroflouric-acid"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydroflouric-acid-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-flux-container"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-filled-flux-container"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fluxed-palladium-nickel-froth-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fluxed-platinum-nickel-froth-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fluxed-copper-froth-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-fluxed-phosphor-vapour"
        }
    },
    prerequisites = {"chemical-science-pack"},
    unit = 
    {
        count = 124 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30 + 14 + 1
    }
},
{
    type = "technology",
    name = "pm-advanced-mining-drill-1",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/technology/mining-drill-1.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-electric-mining-drill-2"
        }
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 160 - 10,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 44 + 1
    }
},
{
    type = "technology",
    name = "pm-crystallisation",
    icon_size = 229 + 27,
    icon = "__periodic-madness__/graphics/technology/crystallisation-tech.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-ethylene-glycol"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-coolant"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-crystallizer"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bismuth-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bismuth-mixing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bismuth-crystallisation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-crushing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-frothing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-froth-skimming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-purifying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-thallium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-thallium-mixing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-thallium-sulfate-electrolysis"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-thallium-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-choralkali-sodium-hydroxide"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-metal-sodium-hydroxide"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bauxite-mixing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gallium-liqouring"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-resin-ion-exchange-beads"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-gallium-filtering"
        },
    },
    prerequisites = {"advanced-electronics"},
    unit = 
    {
        count = 150,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-indium-processing",
    icon_size = 230 + 26,
    icon = "__periodic-madness__/graphics/technology/indium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-indium-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-indium-electrolysis"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-indium-plate"
        },
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 75,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 30,
    }
},
{
    type = "technology",
    name = "pm-solar-energy-2",
    icon_size = 231 + 24 + 1,
    icon = "__periodic-madness__/graphics/technology/solar-energy-2.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-solar-panel-2"
        },
    },
    prerequisites = {"advanced-electronics-2", "solar-energy"},
    unit = 
    {
        count = 400,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 60,
    }
},
{
    type = "technology",
    name = "pm-solar-panel-equipment-2",
    icon_size = 256,
    icons = util.technology_icon_constant_equipment("__periodic-madness__/graphics/technology/solar-panel-equipment-2.png"),
    prerequisites = {"solar-panel-equipment", "pm-post-transition-metal-pack-unlock"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-solar-panel-equipment-2"
      }
    },
    unit =
    {
      count = 200,
      ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
      time = 45
    },
    order = "g-k"
},
{
    type = "technology",
    name = "pm-zirconium-processing",
    icon_size = 232 + 24,
    icon = "__periodic-madness__/graphics/technology/zirconium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-zirconium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zirconium-sand-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zirconia"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-zirconium"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sand-creosote"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-crucible"
        },
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"},
    unit = 
    {
        count = 124 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 30 + 14 + 1
    }
},
{
    type = "technology",
    name = "pm-radiation-resistant-multimetals",
    icon_size = 233 + 23,
    icon = "__periodic-madness__/graphics/technology/radiation-resistant-multimetals.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-lead-radiation-resistant-tubing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lead-radiation-resistant-panelling"
        }
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-polonium-processing",
    icon_size = 234 + 22,
    icon = "__periodic-madness__/graphics/technology/polonium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-heat-pipe-1"
        },
        {
            type = "unlock-recipe",
            recipe = "heat-exchanger"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydrogen-gas-ionizing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cyclotron"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bismuth-proton-bombardment"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bismuth-210-decaying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-polonium-reactor"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-empty-reactor-cell"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-polonium-fuel-cell"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-polonium-cell-reprocessing"
        }
    },
    prerequisites = {"pm-radiation-resistant-multimetals"},
    unit = 
    {
        count = 150,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-polymethyl-methacrylate",
    icon_size = 235 + 21,
    icon = "__periodic-madness__/graphics/technology/PMMA-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-copper-zinc-aluminium-catalyst"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-methanol"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-methyl-methacrylate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-polymethyl-methacrylate-plastic"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-carbon-monoxide-atmospheric-voiding"
        },
    },
    prerequisites = {"chemical-science-pack"},
    unit = 
    {
        count = 125,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-grouped-plastic-science-tier-1",
    icon_size = 236 + 20,
    icon = "__periodic-madness__/graphics/technology/plastic-science-tier-1.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-reactive-non-metals-science-pack"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-post-transition-metal-science-pack"
        },
    },
    prerequisites = {"pm-plastic-science-packs", "pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 200,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-advanced-byproduct-handling",
    icon_size = 237 + 19,
    icon = "__periodic-madness__/graphics/technology/advanced-byproduct-handling.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-mixed-ore-slag-crushing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-mixed-ore-slag-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-ferrum-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chromic-patina-decomposition"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cobaltite-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ferrum"
        }
    },
    prerequisites = {"pm-byproduct-handling", "pm-post-transition-metal-pack-unlock"},
    unit =
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 30
    },
},
{
    type = "technology",
    name = "pm-platinum-processing",
    icon_size = 238 + 18,
    icon = "__periodic-madness__/graphics/technology/platinum-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-nickel-chunk-frothing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-platinum-nickel-froth-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-platinum-powder-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-platinum-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-better-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-platinum-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-platinum-plate-cooling"
        }
    },
    prerequisites = {"pm-tempature-inators"},
    unit =
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 30
    },
},
{
    type = "technology",
    name = "pm-crystal-seeding",
    icon_size = 239 + 17,
    icon = "__periodic-madness__/graphics/technology/crystal-seeding.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-seed-crystal"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-flourite-crystal-growing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tungsten-crystal-growing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-scheelite-crystal-growing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-calcite-crystal-growing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bismuth-crystal-growing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-molybdenite-crystal-growing"
        }
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock", "pm-fertiliser"},
    unit =
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
        },
        time = 45
    },
},
{
    type = "technology",
    name = "pm-cobalt-processing",
    icon_size = 240 + 16,
    icon = "__periodic-madness__/graphics/technology/cobalt-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-copper-chunk-frothing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-copper-froth-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cobalt-blue-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-copper-tailings-looping"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cobalt-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cobalt-melting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-cobalt-plate-cooling"
        }
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock", "pm-tempature-inators"},
    unit =
    {
        count = 75,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 30
    },
},
{
    type = "technology",
    name = "pm-burn-inators",
    icon_size = 241 + 15,
    icon = "__periodic-madness__/graphics/technology/burn-inator.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-burn-inator"
        }
    },
    prerequisites = {"pm-oil-cracking-and-reforming", "pm-tempature-inators"},
    unit =
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 60
    },
},
{
    type = "technology",
    name = "pm-alkali-metal-pack-unlock",
    icon_size = 242 + 14,
    icon = "__periodic-madness__/graphics/technology/alkali-metal-unlock.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-alkali-metal-science-pack"
        }
    },
    prerequisites = {"pm-potassium-processing", "pm-caesium-processing", "pm-lithium-processing", "pm-rubidium-processing"},
    unit = 
    {--ffr MOOD!! i just wanna play botless tf2 and factorio
        count = 300,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 120
    }
},
{
    type = "technology",
    name = "pm-francium-processing",
    icon_size = 243 + 13,
    icon = "__periodic-madness__/graphics/technology/francium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-magneto-orbital-trap"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-francium-forming"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-magneto-orbital-trap-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-francium-bombardment"
        },
    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit = 
    {
        count = 200,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-speed-module-4",
    icon_size = 244 + 12,
    icon = "__periodic-madness__/graphics/technology/speed-module-4-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-speed-module-4"
        }
    },
    prerequisites = {"speed-module-3"},
    unit = 
    {
        count = 600,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{--tbf i should ask the guy im basing my schedule around if he has a specific date, but the fear of the unknown keeps me moticated
    type = "technology",
    name = "pm-effectivity-module-4",
    icon_size = 244 + 12,
    icon = "__periodic-madness__/graphics/technology/effectivity-module-4-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-effectivity-module-4"
        }
    },
    prerequisites = {"effectivity-module-3"},
    unit = 
    {
        count = 600,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-productivity-module-4",
    icon_size = 244 + 12,
    icon = "__periodic-madness__/graphics/technology/productivity-module-4-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-productivity-module-4"
        }
    },
    prerequisites = {"productivity-module-3"},
    unit = 
    {
        count = 600,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-potassium-processing",
    icon_size = 245 + 11,
    icon = "__periodic-madness__/graphics/technology/potassium-processing.png", 
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-seawater-evaporite",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sylvite-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-anhydrite-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-potash-potassium"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-potassium-fertiliser"
        }
    },
    prerequisites = {"pm-fertiliser"},
    unit = 
    {
        count = 175,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-evaporator-2",
    icon_size = 246 + 10,
    icon = "__periodic-madness__/graphics/technology/evaporator-2.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-evaporator-2"
        }
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 150,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-better-sodium-extraction",
    icon_size = 247 + 9,
    icon = "__periodic-madness__/graphics/technology/sodium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-sodium-bicarbonate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ammonium-chloride-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sodium-bicarbonate-heating"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sodium-carbonate-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-calcium-chloride-caesium-chloride"
        }
    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit = 
    {
        count = 175,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-vacuum-tubes",
    icon_size = 248 + 8,
    icon = "__periodic-madness__/graphics/technology/vacuum-tubes.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-vacuum-tube"
        }
    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit = 
    {
        count = 200,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-caesium-processing",
    icon_size = 249 + 7,
    icon = "__periodic-madness__/graphics/technology/caesium-processing.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-pollucite-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-pollucite-crushing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-pollucite-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-caesium-iodine-to-antimony"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-caesium-antimony-to-iodine"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-caesium-hexachlorocerate-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-caesium-chloride"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-caesium-chloride-leeching",
        }
    },
    prerequisites = {"pm-flourine-processing", "pm-potassium-processing"},
    unit = 
    {
        count = 375,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-chemical-weaponry",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/geneva's-neglection-magazine.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-factorian-cyanobacteria-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-melatonin-harvesting"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-phosgene"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-geneva's-neglection-magazine"
        },
        {
            type = "unlock-recipe",
            recipe = "poison-capsule"
        },
        {
            type = "unlock-recipe",
            recipe = "slowdown-capsule"
        }
    },
    prerequisites = {"pm-agar-bacteria-filtering"},
    unit = 
    {
        count = 150,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-basic-battery-charging",
    icon_size = 250 + 6,
    icon = "__periodic-madness__/graphics/technology/battery-charging.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-battery-charger"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-battery-discharger"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vanadium-battery-charging"
        },
    },
    prerequisites = {"pm-voltatic-piles", "advanced-electronics", "pm-vanadium-oxide-redox-batteries"},
    unit = 
    {
        count = 200,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-lithium-ion-battery",
    icon_size = 251 + 5,
    icon = "__periodic-madness__/graphics/technology/lithium-ion-battery.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-lithium-ion-battery"
        }
    },
    prerequisites = {"pm-ethylene-carbonate"},
    unit = 
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-lithium-sulfur-battery",
    icon_size = 252 + 4,
    icon = "__periodic-madness__/graphics/technology/lithium-sulfur-battery.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-lithium-sulfur-battery"
        },
    },
    prerequisites = {"pm-ethylene-carbonate"},
    unit = 
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-advanced-battery-charging-1",
    icon_size = 253 + 3,
    icon = "__periodic-madness__/graphics/technology/advanced-battery-charging.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-lithium-sulfur-battery-charging"
        },
    },
    prerequisites = {"pm-basic-battery-charging", "pm-lithium-sulfur-battery"},
    unit = 
    {
        count = 400,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-ethylene-carbonate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/ethylene-carbonate.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-ethylene-carbonate"
        },
    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit = 
    {
        count = 150,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-lithium-ion-logistic-robotics",
    icon_size = 252 + 4,
    icon = "__periodic-madness__/graphics/technology/lithium-logistic-robotics.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-lithium-logistic-robot"
        }
    },
    prerequisites = {"pm-lithium-ion-battery", "advanced-electronics-2", "logistic-robotics"},
    unit = 
    {
        count = 400,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-lithium-ion-construction-robotics",
    icon_size = 253 + 3,
    icon = "__periodic-madness__/graphics/technology/lithium-construction-robotics.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-lithium-construction-robot"
        }
    },
    prerequisites = {"pm-lithium-ion-battery", "advanced-electronics-2", "construction-robotics"},
    unit = 
    {
        count = 400,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-robot-battery-capacity-1",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-1.png",
    effects = 
    {
        {
            type = "worker-robot-battery",
            modifier = 0.10
        }
    },
    prerequisites = {"logistic-robotics", "construction-robotics"},
    unit = 
    {
        count = 250,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-robot-battery-capacity-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-1.png",
    effects = 
    {
        {
            type = "worker-robot-battery",
            modifier = 0.20
        }
    },
    prerequisites = {"worker-robots-speed-2", "worker-robots-storage-2", "pm-robot-battery-capacity-1"},
    unit = 
    {
        count = 400,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-robot-battery-capacity-3",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-2.png",
    effects = 
    {
        {
            type = "worker-robot-battery",
            modifier = 0.25
        }
    },
    prerequisites = {"worker-robots-speed-3", "worker-robots-storage-3","pm-robot-battery-capacity-2"},
    unit = 
    {
        count = 600,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-robot-battery-capacity-4",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-2.png",
    effects = 
    {
        {
            type = "worker-robot-battery",
            modifier = 0.30
        }
    },
    prerequisites = {"worker-robots-speed-4", "pm-worker-robots-storage-4","pm-robot-battery-capacity-3"},
    unit = 
    {
        count = 600,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 80
    }
},
{
    type = "technology",
    name = "pm-advanced-pollution-filtering",
    icon_size = 255 + 1,
    icon = "__periodic-madness__/graphics/technology/air-filterer-2.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-lithium-hydroxide"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lithium-bromide"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-air-filter-cleaning"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-better-air-filterering"
        },
    },
    prerequisites = {"pm-alkali-metal-pack-unlock", "pm-pollution-filtering"},
    unit = 
    {
        count = 425,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-advanced-atmospheric-condensation",
    icon_size = 256 + 0,
    icon = "__periodic-madness__/graphics/technology/better-atmospheric-condensation.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-oxygen-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-nitrogen-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-chlorine-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-carbon-dioxide-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-trace-gas-air-filter"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-oxygen-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-nitrogen-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-chlorine-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-carbon-dioxide-atmosphere-filtering"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-advanced-trace-gas-atmosphere-filtering"
        },
    },
    prerequisites = {"pm-alkali-metal-pack-unlock", "pm-atmospheric-condensation"},
    unit =
    {
        count = 150 * 2.5,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-bromine-processing",
    icon_size = 257 - 1,
    icon = "__periodic-madness__/graphics/technology/bromine-processing.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-bromine-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydrogen-bromide-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bromide-ion-oxidisation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-trace-bromine-condensation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-vinyl-bromide"
        }
    },
    prerequisites = {"chemical-science-pack"},
    unit = 
    {
        count = 100,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-vanadium-chromium-alloying",
    icon_size = 258 - 2,
    icon = "__periodic-madness__/graphics/technology/vanadium-chromium-alloying.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-better-steel-plate"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-better-stainless-steel-alloy"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-kasethal-plate"
        }
    },
    prerequisites = {"pm-vanadium-processing", "pm-chrominum-processing"},
    unit = 
    {
        count = 74 + 1,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-polytetrafluoroethylene-plastic",
    icon_size = 259 - 3,
    icon = "__periodic-madness__/graphics/technology/polytetrafluoroethylene-plastic.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-methyl-chloride"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chloronated-solution"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-chloronated-solution-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-carbon-tetrachloride-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tetrafluoroethylene"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-polytetrafluoroethylene-plastic"
        },
    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit = 
    {
        count = 350,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-lithium-processing",
    icon_size = 260 - 4,
    icon = "__periodic-madness__/graphics/technology/lithium-processing.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-leaching-field"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-calcium-brine"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sodium-brine"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-low-concentration-lithium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-medium-concentration-lithium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-high-concentration-lithium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-oversaturated-concentration-lithium-leeching"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-lithium-chloride-electrolysis"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bromine-leeching"
        },
    },
    prerequisites = {"pm-flourine-processing", "pm-bromine-processing"},
    unit = 
    {
        count = 375,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-electrolysis-plant-2",
    icon_size = 261 - 5,
    icon = "__periodic-madness__/graphics/technology/electrolysis-plant-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-electrolysis-plant-2"
        }
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 200,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-better-sulfur-extraction",
    icon_size = 262 - 6,
    icon = "__periodic-madness__/graphics/technology/better-sulfur-extraction.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-sulfur-burning"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sulfur-trioxide"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-oleum"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-better-sulfuric-acid"
        },
    },
    prerequisites = {"pm-alkali-metal-pack-unlock", "pm-caesium-processing"},
    unit = 
    {
        count = 250,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-rubidium-processing",
    icon_size = 263 - 7,
    icon = "__periodic-madness__/graphics/technology/rubidium-processing.png", 
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-pollucite-mixing"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-caesium-rubidium-alum-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-70-to-100-rubidium-alum"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-50-to-70-rubidium-alum"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-30-to-50-rubidium-alum"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-rubidium-alum-seperation"
        },
    },
    prerequisites = {"pm-caesium-processing", "pm-potassium-processing"},
    unit = 
    {
        count = 375,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-tin-molten-glass-casting",
    icon_size = 264 - 8,
    icon = "__periodic-madness__/graphics/technology/tinned-glass-melting.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-tinned-glass-melting"
        }
    },
    prerequisites = {"pm-tempature-inators-2", "pm-glass-melting"},
    unit = 
    {
        count = 150,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 45
    }
},
{
    type = "technology",
    name = "pm-iodine-processing",
    icon_size = 265 - 9,
    icon = "__periodic-madness__/graphics/technology/iodine-processing.png",
    effects = 
    {   
        {
            type = "unlock-recipe",
            recipe = "pm-brine-acidifying"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-iodine-solution"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-iodine-solution-concentration"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydrogen-iodide-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-iodine-vanadate-solution-seperation"
        },
    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit = 
    {
        count = 200,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-lead-bismuth-solder",
    icon_size = 266 - 10,
    icon = "__periodic-madness__/graphics/technology/lead-bismuth-solder.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-lead-liquid-solder",
        },
        {
            type = "unlock-recipe",
            recipe = "pm-bismuth-liquid-solder",
        },
    },
    prerequisites = {"pm-copper-tin-solder", "pm-flourine-processing", "pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 250,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-metalloid-pack-unlock",
    icon_size = 267 - 11,
    icon = "__periodic-madness__/graphics/technology/metalloid-unlock.png",
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "pm-metalloid-science-pack"
        }
    },
    prerequisites = {"pm-boron-processing", "pm-tellurium-processing"},
    unit = 
    {
        count = 300,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 120
    }
},
{
    type = "technology",
    name = "pm-grouped-plastic-science-tier-2",
    icon_size = 268 - 12,
    icon = "__periodic-madness__/graphics/technology/plastic-science-tier-2.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-reactive-non-metals-science-pack"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-plastic-post-transition-metal-science-pack"
        },
    },
    prerequisites = {"pm-alkali-metal-pack-unlock", "pm-metalloid-pack-unlock"},
    unit = 
    {
        count = 500,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1}
        },
        time = 80
    }
},
{
    type = "technology",
    name = "pm-molten-potassium-glass",
    icon_size = 269 - 13, --nice
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-molten-potassium-salts"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-potassium-salt-glass"
        }
    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit = 
    {
        count = 300,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-borosillicate-glass",
    icon_size = 270 - 14,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-molten-borosillicate-glass"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-borosillicate-glass-cooling"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-borosillicate-science-bottle"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-borosillicate-glass-fibers"
        }
    },
    prerequisites = {"pm-metalloid-pack-unlock"},
    unit = 
    {
        count = 300,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-boron-processing",
    icon_size = 271 - 15,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-sassolite"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sassolite-seperation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-ethylolamine"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-boron-extraction"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-borax"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-boric-oxide"
        },
    },
    prerequisites = {"pm-indium-processing"},
    unit = 
    {
        count = 375,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-tellurium-processing",
    icon_size = 272 - 16,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-copper-tailings-sludging"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sodium-tellurite"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-sodium-bicarbonate-tellurite"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydrotellurites"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-tellurium-oxide-seperation"
        },
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 375,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-rsenic-antimony-processing",
    icon_size = 273 - 17,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects = 
    {
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit = 
    {
        count = 375,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
        },
        time = 60
    }
},

{
    type = "technology",
    name = "pm-FUCK",
    icon_size = 266 - 10,
    icon = "__periodic-madness__/graphics/technology/FUCK-tech.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-francium-ultracool-centrifugal-kabbalism"
        },
    },
    prerequisites = {"pm-francium-processing"},
    unit =
    {
        count = 300,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1}
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-FUCK-transition-metal-science-pack",
    icon_size = 256,
    icon = "__base__/graphics/technology/automation-science-pack.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-FUCK-transition-metal-science-pack"
        }
    },
    prerequisites = {"pm-FUCK"},
    upgrade = true,
    unit =
    {
        count = 200,
        ingredients = 
        {
            {"automation-science-pack", 1},
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-FUCK-advanced-transition-metal-science-pack",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/francium-ATM-science-pack.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-FUCK-advanced-transition-metal-science-pack"
        }
    },
    prerequisites = {"pm-FUCK-transition-metal-science-pack"},
    upgrade = true,
    unit =
    {
        count = 400,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
        },
        time = 30
    }
},
{
    type = "technology",
    name = "pm-FUCK-advanced-advanced-transition-metal-science-pack",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/francium-AATM-science-pack.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-FUCK-advanced-advanced-transition-metal-science-pack"
        }
    },
    prerequisites = {"pm-FUCK-advanced-transition-metal-science-pack"},
    upgrade = true,
    unit =
    {
        count = 400,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-FUCK-post-transition-metal-science-pack",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/francium-PTM-science-pack.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-FUCK-post-transition-metal-science-pack"
        }
    },
    prerequisites = {"pm-FUCK-advanced-advanced-transition-metal-science-pack"},
    upgrade = true,
    unit =
    {
        count = 800,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
        },
        time = 60
    }
},
{
    type = "technology",
    name = "pm-FUCK-reactive-non-metals-science-pack",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/francium-RNM-science-pack.png",
    effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-FUCK-reactive-non-metals-science-pack"
        }
    },
    prerequisites = {"pm-FUCK-advanced-advanced-transition-metal-science-pack"},
    upgrade = true,
    unit =
    {
        count = 800,
        ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 60
    }
},

{
    type = "technology",
    name = "toolbelt-2",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/toolbelt.png"),
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock", "toolbelt"},
    effects =
    {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-m"
  },
  {
    type = "technology",
    name = "pm-worker-robots-storage-4",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"worker-robots-storage-3"},
    unit =
    {
        count = 450,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 100
    },
    upgrade = true,
    order = "c-k-g-a"
  },
  {
    type = "technology",
    name = "pm-worker-robots-storage-5",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    prerequisites = {"pm-worker-robots-storage-4"},
    unit =
    {
        count = 650,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        },
        time = 100
    },
    upgrade = true,
    order = "c-k-g-a"
  },
-- {
--    type = "technology",
--    name = "pm-metharicephentine",
--    icon_size = 128,
--    icon = "__periodic-madness__/graphics/technology/metharicephentine.png",
--    visible_when_disabled = false,
--    effects = 
--    {
--        {
--            type = "unlock-recipe",
--            recipe = "pm-metharicephentine"
--        }
--    },
--    prerequisites = {"advanced-oil-processing"},
--    unit = 
--    {
--        count = 250,
--        ingredients = 
--        {
--            {"automation-science-pack", 1},
--            {"logistic-science-pack", 1},
--            {"pm-advanced-advanced-transition-metal-science-pack", 1}
--       },
--       time = 60
--    }
--  }
})
