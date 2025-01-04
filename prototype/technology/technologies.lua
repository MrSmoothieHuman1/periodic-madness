local PM = require("library")
data:extend({
  {
    type = "technology",
    name = "pm-brass-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/brass-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-welder"),
      PM.unlock_recipe("pm-hydrogen-fuel"),
      PM.unlock_recipe("pm-brass-plate"),
      PM.unlock_recipe("pm-brass-cog")
    },
    prerequisites = {"automation-science-pack"},
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
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate.png",
    effects =
    {
      PM.unlock_recipe("pm-stainless-steel-alloy"),
      PM.unlock_recipe("pm-stainless-steel-chest"),
      PM.unlock_recipe("pm-stainless-steel-basic-framing"),
      PM.unlock_recipe("pm-stainless-steel-panelling"),
    },
    prerequisites = {"steel-processing", "pm-advanced-advanced-transition-metal-pack-unlock"},
    unit =
    {
      count = 125,
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
      PM.unlock_recipe("pm-acidic-water"),
      PM.unlock_recipe("pm-ferrum-leeching"),
      PM.unlock_recipe("pm-patina-leeching"),
    },
    prerequisites = {"pm-transition-metal-refining"},
    unit =
    {
      count = 15,
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
      PM.unlock_recipe("pm-acidic-water"),
      PM.unlock_recipe("pm-silver-plate"),
      PM.unlock_recipe("pm-silver-leeching"),
      PM.unlock_recipe("pm-silver-chunk-refining"),
      PM.unlock_recipe("pm-gold-plate"),
      PM.unlock_recipe("pm-gold-leeching"),
      PM.unlock_recipe("pm-gold-chunk-refining"),
    },
    prerequisites = {"pm-mercury-processing", "pm-ezekiel-ore-purifying"},
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
      PM.unlock_recipe("pm-cinnabar-processing"),
      PM.unlock_recipe("pm-mercury-powdering"),
      PM.unlock_recipe("pm-mercury-liquifying"),
      PM.unlock_recipe("pm-mercury-vapour-condensing")
    },
    prerequisites = {"automation", "pm-ezekiel-ore-purifying"},
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
      PM.unlock_recipe("pm-transition-metal-washing"),
      PM.unlock_recipe("offshore-pump"),
      PM.unlock_recipe("pm-seawater-desaltination"),
      PM.unlock_recipe("pump")
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
      PM.unlock_recipe("pm-wood-strips"),
      PM.unlock_recipe("pm-wood-strip-burning"),
      PM.unlock_recipe("pm-coal-burning"),
      PM.unlock_recipe("pm-basic-basic-wood-growth")
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
      PM.unlock_recipe("pm-resin-to-rubber-resin"),
      PM.unlock_recipe("pm-rubber-resin-cooling"),
      PM.unlock_recipe("pm-rubber-vulcanisation")
    },
    prerequisites = {"pm-resin-processing"},
    research_trigger = 
    {
      type = "craft-fluid",
      fluid = "pm-resin",
      amount = 100
    }
  },
  {
    type = "technology",
    name = "pm-pheonlic-resin-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/pheonlic-resin-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-resin-to-pheonlic-resin")
    },
    prerequisites = {"pm-resin-processing"},
    research_trigger = 
    {
      type = "craft-fluid",
      fluid = "pm-resin",
      amount = 100
    }
  },
  {
    type = "technology",
    name = "pm-resin-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/resin-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-resin-forming"),
      PM.unlock_recipe("pm-basic-fluid-circuit"),
      PM.unlock_recipe("pm-vacuum-former-1"),
    },
    prerequisites = {"pm-wood-processing", "pm-water-distillation", "pm-tempature-plating"},
    unit =
    {
      count = 50,
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
    name = "pm-gold-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/gold-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-gold-wire"),
    },
    prerequisites = {"logistic-science-pack"},
    research_trigger =
    {
      type = "craft-item",
      item = "pm-gold-plate",
      count = 50
    }
  },
  {
    type = "technology",
    name = "pm-cleaner-power-generation",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/clean-power-forming.png",
    effects =
    {
      PM.unlock_recipe("boiler")
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
    icon = "__periodic-madness__/graphics/technology/optics.png",
    effects =
    {
      PM.unlock_recipe("pm-glass-fibers"),
      PM.unlock_recipe("pm-fiberoptic-cable"),
      PM.unlock_recipe("pm-glass-resmelting"),
      PM.unlock_recipe("pm-rubber-air-filter")
    },
    prerequisites = {"lamp", "pm-pheonlic-resin-processing", "pm-gold-processing"},
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
    icon = "__base__/graphics/technology/logistics-3.png",
    effects =
    {
      PM.unlock_recipe("express-transport-belt"),
      PM.unlock_recipe("express-underground-belt"),
      PM.unlock_recipe("express-splitter")
    },
    prerequisites = {"logistics-3", "processing-unit", "low-density-structure"},
    unit =
    {
      count = 425,
      ingredients =
      {  
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 80
    }
  },
  {
    type = "technology",
    name = "pm-transition-metal-refining",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/transition-metal-refining.png",
    effects =
    {
      PM.unlock_recipe("pm-transition-iron-leeching"),
      PM.unlock_recipe("pm-transition-copper-leeching"),
      PM.unlock_recipe("pm-transition-nickel-leeching"),
      PM.unlock_recipe("pm-transition-zinc-leeching"),
      PM.unlock_recipe("pm-transition-manganese-leeching"),
      PM.unlock_recipe("pm-transition-aluminium-leeching"),
    },
    prerequisites = {"pm-ezekiel-ore-purifying"},
    research_trigger = 
    {
      type = "craft-item",
      item = "pm-transition-metals-ore",
      count = 24
    }
  },
  {
    type = "technology",
    name = "pm-ezekiel-ore-purifying",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/ezekiel-purifying.png",
    effects =
    {
      PM.unlock_recipe("pm-ezekiel-iron-purifying"),
      PM.unlock_recipe("pm-ezekiel-copper-purifying"),
      PM.unlock_recipe("pm-ezekiel-nickel-purifying"),
      PM.unlock_recipe("pm-ezekiel-zinc-purifying"),
      PM.unlock_recipe("pm-transition-slag-leeching"),
      PM.unlock_recipe("pm-chunk-slag-leeching")
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
      PM.unlock_recipe("pm-copper-disc"),
      PM.unlock_recipe("pm-zinc-disc"),
      PM.unlock_recipe("pm-voltatic-pile"),
      PM.unlock_recipe("pm-voltatic-pile-charging"),
      PM.unlock_recipe("pm-voltatic-pile-fixing"),
      PM.unlock_recipe("pm-voltatic-charger"),
      PM.unlock_recipe("pm-voltatic-discharger"),
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
      PM.unlock_recipe("pm-gold-heating-plating"),
      PM.unlock_recipe("pm-copper-heating-plating"),
      PM.unlock_recipe("pm-brass-heating-plating"),
      PM.unlock_recipe("pm-silver-cooling-plating"),
      PM.unlock_recipe("pm-copper-cooling-plating"),
      PM.unlock_recipe("pm-steel-cooling-plating"),
      PM.unlock_recipe("pm-manganese-cooling-plating"),
    },
    prerequisites = {"logistic-science-pack", "pm-gold-processing"},
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
      PM.unlock_recipe("pm-brass-basic-tubing"),
      PM.unlock_recipe("pm-steel-basic-tubing"),
      PM.unlock_recipe("pm-steel-basic-framing"),
      PM.unlock_recipe("pm-steel-panelling")

    },
    prerequisites = {"pm-brass-processing", "steel-processing"},
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
      PM.unlock_recipe("pm-oil-residuals-splitting"),
      PM.unlock_recipe("pm-high-sulfur-residuals-filtering"),
      PM.unlock_recipe("pm-low-sulfur-residuals-filtering"),
      PM.unlock_recipe("pm-bitumen-seperation"),
      PM.unlock_recipe("pm-bitumen-creosote")
    },
    prerequisites = {"oil-processing"},
    research_trigger = 
    {
      type = "craft-fluid",
      fluid = "pm-oil-residuals",
      amount = 75
    }
  },
  {
    type = "technology",
    name = "pm-naptha-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/naptha-recipes.png",
    effects =
    {
      PM.unlock_recipe("pm-butane-cracking"),
      PM.unlock_recipe("pm-naptha-canister")
    },
    prerequisites = {"oil-processing"},
    research_trigger = 
    {
      type = "craft-fluid",
      fluid = "pm-naptha",
      amount = 75
    }
  },
  {
    type = "technology",
    name = "pm-refinery-gases-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/refinery-gases-recipes.png",
    effects =
    {
      PM.unlock_recipe("pm-refinery-gases-refining")
    },
    prerequisites = {"oil-processing"},
    research_trigger = 
    {
      type = "craft-fluid",
      fluid = "pm-refinery-gases",
      amount = 75
    }
  },
  {
    type = "technology",
    name = "pm-fuel-oils-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/fuel-oils-recipes.png",
    effects =
    {
      PM.unlock_recipe("pm-catalyst-container"),
      PM.unlock_recipe("pm-cobalt-catalyst"),
      PM.unlock_recipe("pm-fuel-oil-hydrosulfurisation"),
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-lubricating-oils-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/lubricating-oils-recipes.png",
    effects =
    {
      PM.unlock_recipe("lubricant"),
      PM.unlock_recipe("pm-solid-lubricant")
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-diesel-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/diesel-recipes.png",
    effects =
    {
      PM.unlock_recipe("pm-diesel-seperation"),
      PM.unlock_recipe("pm-legendary-diesel-to-solid-fuel"),
      PM.unlock_recipe("pm-common-diesel-to-solid-fuel"),
      PM.unlock_recipe("pm-common-diesel-cracking"),
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-kerosene-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/kerosene-recipes.png",
    effects =
    {
      PM.unlock_recipe("pm-catalyst-container"),
      PM.unlock_recipe("pm-cobalt-catalyst"),
      PM.unlock_recipe("pm-kerosene-to-solid-fuel"),
      PM.unlock_recipe("pm-kerosene-hydrosulfurisation")
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-petrol-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/petrol-recipes.png",
    effects =
    {
      PM.unlock_recipe("pm-petrol-to-solid-fuel")
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-basic-polyethylene-plastic",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/basic-polyethylene-plastic.png",
    effects =
    {
      PM.unlock_recipe("pm-butene-cracking"),
      PM.unlock_recipe("pm-ethylene-polymerisation"),
      PM.unlock_recipe("plastic-bar")
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-diesel-fuel-canisters",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/diesel-can-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-fuel-canister"),
      PM.unlock_recipe("pm-diesel-canister")
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-kerosene-fuel-canisters",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/kerosene-can-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-fuel-canister"),
      PM.unlock_recipe("pm-kerosene-canister")
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-petrol-fuel-canisters",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/petrol-can-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-fuel-canister"),
      PM.unlock_recipe("pm-petrol-canister")
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
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-advanced-refinery-gas-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-refinery-gases.png",
    effects =
    {
      PM.unlock_recipe("pm-catalyst-container"),
      PM.unlock_recipe("pm-palladium-catalyst"),
      PM.unlock_recipe("pm-palladium-catalyst-refinery-gas-cracking"),
      PM.unlock_recipe("pm-palladium-hydride-crushing"),
      PM.unlock_recipe("pm-palladium-plate"),
      PM.unlock_recipe("pm-butene-to-butane")
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
    name = "pm-advanced-advanced-transition-metal-pack-unlock",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-advanced-transition-metal-unlock.png",
    effects =
    {
      PM.unlock_recipe("pm-advanced-advanced-transition-metal-science-pack")
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
      PM.unlock_recipe("pm-fluid-circuit-breadboard"),
      PM.unlock_recipe("pm-transistors"),
      PM.unlock_recipe("pm-fluid-integrated-circuits"),
      PM.unlock_recipe("pm-fluid-circuit")
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
      PM.unlock_recipe("pm-titanium-leeching"),
      PM.unlock_recipe("pm-titanium-chunk-oxidising"),
      PM.unlock_recipe("pm-titanium-chlorination"),
      PM.unlock_recipe("pm-titanium-chloride-seperation"),
      PM.unlock_recipe("pm-titanium-plate"),
      PM.unlock_recipe("pm-tungsten-leeching"),
      PM.unlock_recipe("pm-tungsten-crushing"),
      PM.unlock_recipe("pm-wolframite-washing"),
      PM.unlock_recipe("pm-tungsten-seperation"),
      PM.unlock_recipe("pm-tungsten-plate")
    },
    prerequisites = {"pm-advanced-transition-metal-refining", "pm-washing-plant-1", "pm-gold-processing"},
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
      PM.unlock_recipe("pm-fluid-catalyst-cracker"),
      PM.unlock_recipe("pm-oil-residual-cracking"),
      PM.unlock_recipe("pm-fuel-oils-cracking"),
      PM.unlock_recipe("pm-lubricating-oils-cracking"),
      PM.unlock_recipe("pm-diesel-cracking"),
      PM.unlock_recipe("pm-kerosene-cracking"),
      PM.unlock_recipe("pm-naptha-cracking"),
      PM.unlock_recipe("pm-petrol-cracking"),
      PM.unlock_recipe("pm-petrol-reforming"),
      PM.unlock_recipe("pm-naptha-reforming"),
      PM.unlock_recipe("pm-kerosene-reforming"),
      PM.unlock_recipe("pm-diesel-reforming"),
      PM.unlock_recipe("pm-lubricating-oils-reforming"),
      PM.unlock_recipe("pm-fuel-oils-reforming"),
      PM.unlock_recipe("pm-oil-residuals-reforming"),
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
      PM.unlock_recipe("pm-battery-casing"),
      PM.unlock_recipe("pm-copper-disk-anodization"),
      PM.unlock_recipe("pm-zinc-disk-cathodization"),
      PM.unlock_recipe("pm-vanadium-oxide-positive-solution"),
      PM.unlock_recipe("pm-vanadium-oxide-negative-solution"),
      PM.unlock_recipe("pm-vanadium-redox-battery")
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
      PM.unlock_recipe("pm-plaster-of-nauvis"),
      PM.unlock_recipe("pm-plastic-science-mold"),
      PM.unlock_recipe("pm-filled-plastic-science-mold"),
      PM.unlock_recipe("pm-plastic-science-bottle"),
      PM.unlock_recipe("pm-plastic-transition-metal-science-pack"),
      PM.unlock_recipe("pm-plastic-advanced-transition-metal-science-pack"),
      PM.unlock_recipe("pm-plastic-advanced-advanced-transition-metal-science-pack"),
    },
    prerequisites = {"pm-flourine-processing", "pm-polymethyl-methacrylate"},
    unit =
    {
      count = 275,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1}
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-tin-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/tin-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-tin-leeching"),
      PM.unlock_recipe("pm-tin-chunks"),
      PM.unlock_recipe("pm-tin-chunk-leeching"),
      PM.unlock_recipe("pm-tin-ore"),
      PM.unlock_recipe("pm-tin-plate")
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
    name = "pm-copper-tin-solder",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/solder.png",
    effects =
    {

      PM.unlock_recipe("pm-liquid-solder"),
      PM.unlock_recipe("pm-solder-plate-cooling"),
      PM.unlock_recipe("pm-solder-wire"),
      PM.unlock_recipe("pm-solder-case"),
      PM.unlock_recipe("pm-solder"),

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
      PM.unlock_recipe("pm-molten-inator"),
      PM.unlock_recipe("pm-cold-inator"),
      PM.unlock_recipe("pm-iron-melting"),
      PM.unlock_recipe("pm-copper-melting"),
      PM.unlock_recipe("pm-nickel-melting"),
      PM.unlock_recipe("pm-zinc-melting"),
      PM.unlock_recipe("pm-manganese-melting"),
      PM.unlock_recipe("pm-gold-melting"),
      PM.unlock_recipe("pm-silver-melting"),
      PM.unlock_recipe("pm-tin-melting"),
      PM.unlock_recipe("pm-titanium-melting"),
      PM.unlock_recipe("pm-tungsten-melting"),
      PM.unlock_recipe("pm-aluminium-melting"),
      PM.unlock_recipe("pm-palladium-melting"),
      PM.unlock_recipe("pm-iron-plate-cooling"),
      PM.unlock_recipe("pm-copper-plate-cooling"),
      PM.unlock_recipe("pm-nickel-plate-cooling"),
      PM.unlock_recipe("pm-zinc-plate-cooling"),
      PM.unlock_recipe("pm-manganese-plate-cooling"),
      PM.unlock_recipe("pm-gold-plate-cooling"),
      PM.unlock_recipe("pm-silver-plate-cooling"),
      PM.unlock_recipe("pm-tin-plate-cooling"),
      PM.unlock_recipe("pm-titanium-plate-cooling"),
      PM.unlock_recipe("pm-tungsten-plate-cooling"),
      PM.unlock_recipe("pm-aluminium-plate-cooling"),
      PM.unlock_recipe("pm-palladium-plate-cooling"),
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
      PM.unlock_recipe("pm-circuit-megassembler"),
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
      time = 80,
    }
  },
  {
    type = "technology",
    name = "pm-atmospheric-condensation",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/atmospheric-condensation.png",
    effects =
    {
      PM.unlock_recipe("pm-atmospheric-condenser"),
      PM.unlock_recipe("pm-atmosphere"),
      PM.unlock_recipe("pm-oxygen-atmosphere-filtering"),
      PM.unlock_recipe("pm-nitrogen-atmosphere-filtering"),
      PM.unlock_recipe("pm-chlorine-atmosphere-filtering"),
      PM.unlock_recipe("pm-carbon-dioxide-atmosphere-filtering"),
      PM.unlock_recipe("pm-trace-gas-atmosphere-filtering"),
      PM.unlock_recipe("pm-oxygen-air-filter"),
      PM.unlock_recipe("pm-nitrogen-air-filter"),
      PM.unlock_recipe("pm-chlorine-air-filter"),
      PM.unlock_recipe("pm-carbon-dioxide-air-filter"),
      PM.unlock_recipe("pm-trace-gas-air-filter"),
      PM.unlock_recipe("pm-oxygen-atmospheric-voiding"),
      PM.unlock_recipe("pm-nitrogen-atmospheric-voiding"),
      PM.unlock_recipe("pm-chlorine-atmospheric-voiding"),
      PM.unlock_recipe("pm-carbon-dioxide-atmospheric-voiding"),
      PM.unlock_recipe("pm-trace-gas-atmospheric-voiding"),
    },
    prerequisites = {"advanced-circuit"},
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
    name = "pm-multimetal-multiproperty",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/multimetal-multiproperty-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-tungsten-heavyweight-panelling"),
      PM.unlock_recipe("pm-chrominum-heavyweight-panelling"),
      PM.unlock_recipe("pm-titanium-lightweight-panelling"),
      PM.unlock_recipe("pm-tin-lightweight-panelling"),
      PM.unlock_recipe("pm-aluminium-lightweight-panelling"),
      PM.unlock_recipe("pm-titanium-lightweight-framing"),
      PM.unlock_recipe("pm-tin-lightweight-framing"),
      PM.unlock_recipe("pm-aluminium-lightweight-framing"),
      PM.unlock_recipe("pm-tungsten-heavyweight-framing"),
      PM.unlock_recipe("pm-chrominum-heavyweight-framing"),
      PM.unlock_recipe("pm-stainless-steel-corrosion-tubing"),
      PM.unlock_recipe("pm-gold-corrosion-tubing"),
      PM.unlock_recipe("pm-silver-corrosion-tubing"),
      PM.unlock_recipe("pm-brass-corrosion-tubing"),
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"},
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
    name = "pm-science-center",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/science-center-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-science-center")
    },
    prerequisites = {"advanced-circuit"},
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
      PM.unlock_recipe("pm-CO2-nullifer"),
      PM.unlock_recipe("pm-CO2-nullifying"),
      PM.unlock_recipe("pm-CO3-nullifying"),
      PM.unlock_recipe("pm-zirconia-carbon-dioxide-electrolysis")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/cadnium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-zinc-chunk-seperation"),
      PM.unlock_recipe("pm-zinc-tailings-condensing"),
      PM.unlock_recipe("pm-cadnium-plate"),
      PM.unlock_recipe("pm-cadnium-melting"),
      PM.unlock_recipe("pm-cadnium-plate-cooling"),
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"},
    unit =
    {
      count = 100,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/molten-alloys.png",
    effects =
    {
      PM.unlock_recipe("pm-liquid-steel"),
      PM.unlock_recipe("pm-steel-plate-cooling"),
      PM.unlock_recipe("pm-liquid-brass"),
      PM.unlock_recipe("pm-brass-plate-cooling"),
      PM.unlock_recipe("pm-liquid-stainless-steel"),
      PM.unlock_recipe("pm-stainless-steel-plate-cooling"),
      PM.unlock_recipe("pm-liquid-kasethal"),
      PM.unlock_recipe("pm-kasethal-plate-cooling"),
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/trace-gas-refining.png",
    effects =
    {
      PM.unlock_recipe("pm-trace-gas-seperation"),
      PM.unlock_recipe("pm-water-vapour-condensing"),
      PM.unlock_recipe("pm-argon-titanium-melting"),
      PM.unlock_recipe("pm-argon-tungsten-melting"),
      PM.unlock_recipe("pm-helium-gas-atmospheric-voiding"),
      PM.unlock_recipe("pm-argon-gas-atmospheric-voiding"),
    },
    prerequisites = {"chemical-science-pack", "pm-atmospheric-condensation"},
    unit =
    {
      count = 150,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/chemical-based-resin.png",
    effects =
    {
      PM.unlock_recipe("pm-naptha-steam-cracking"),
      PM.unlock_recipe("pm-acetone"),
      PM.unlock_recipe("pm-bisphenol-A"),
      PM.unlock_recipe("pm-chemical-resin")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-polyethylene-plastic.png",
    effects =
    {
      PM.unlock_recipe("pm-advanced-polyethylene-plastic")
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
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-pollution-filtering",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/air-filterer-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-air-filterer"),
      PM.unlock_recipe("pm-air-filter-cleaning"),
      PM.unlock_recipe("pm-air-filterering"),
    },
    prerequisites = {"pm-CO2-nullifying"},
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
      time = 60
    }

  },
  {
    type = "technology",
    name = "pm-washing-plant-1",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/washing-plant-1-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-washing-plant-1")
    },
    prerequisites = {"pm-fluid-circuit"},
    unit =
    {
      count = 50,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/washing-plant-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-washing-plant-2"),
      PM.unlock_recipe("pm-gas-water-electroylsis"),
    },
    prerequisites = {"fluid-handling"},
    unit =
    {
      count = 75,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/chromium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-chrominum-leeching"),
      PM.unlock_recipe("pm-chromite-seperation"),
      PM.unlock_recipe("pm-ferrochrominum-carbon-seperation"),
      PM.unlock_recipe("pm-chromic-acid")
    },
    prerequisites = {"pm-oil-residual-recipes", "pm-tempature-inators"},
    unit =
    {
      count = 75,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/chromic-acid-leeching.png",
    effects =
    {
      PM.unlock_recipe("pm-chromic-transition-iron-leeching"),
      PM.unlock_recipe("pm-chromic-transition-copper-leeching"),
      PM.unlock_recipe("pm-chromic-transition-nickel-leeching"),
      PM.unlock_recipe("pm-chromic-transition-zinc-leeching"),
      PM.unlock_recipe("pm-chromic-transition-manganese-leeching"),
      PM.unlock_recipe("pm-chromic-transition-aluminium-leeching"),
      PM.unlock_recipe("pm-chromic-gold-leeching"),
      PM.unlock_recipe("pm-chromic-silver-leeching"),
      PM.unlock_recipe("pm-chromic-cinnabar-processing"),
      PM.unlock_recipe("pm-chromic-tin-leeching"),
      PM.unlock_recipe("pm-chromic-titanium-leeching"),
      PM.unlock_recipe("pm-chromic-tungsten-leeching"),
      PM.unlock_recipe("pm-chromic-molybdenum-leeching"),
      PM.unlock_recipe("pm-chromic-chrominum-leeching"),
    },
    prerequisites = {"pm-chrominum-processing"},
    unit =
    {
      count = 250,
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
    name = "pm-palladium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/palladium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-nickel-chunk-frothing"),
      PM.unlock_recipe("pm-palladium-nickel-froth-seperation"),
      PM.unlock_recipe("pm-nickel-tailings-looping")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/vanadium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-magnetite-forming"),
      PM.unlock_recipe("pm-ferrovanadium"),
      PM.unlock_recipe("pm-vanadate-solution"),
      PM.unlock_recipe("pm-vanadate-solution-seperation")
    },
    prerequisites = {"pm-oil-residual-recipes", "sulfur-processing"},
    unit =
    {
      count = 75,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/greenhouse-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-greenhouse"),
      PM.unlock_recipe("pm-basic-wood-growth")
    },
    prerequisites = {"chemical-science-pack", "pm-anti-bacterial-multiproperty-multimetals", "pm-wood-processing"},
    unit =
    {
      count = 50,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/vacuum-former-2-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-vacuum-former-2")
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
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-anti-bacterial-multiproperty-multimetals",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/anti-bacterial-multimetals.png",
    effects =
    {
      PM.unlock_recipe("pm-silver-anti-bacterial-tubing"),
      PM.unlock_recipe("pm-copper-anti-bacterial-tubing"),
      PM.unlock_recipe("pm-brass-anti-bacterial-tubing"),
      PM.unlock_recipe("pm-silver-anti-bacterial-panelling"),
      PM.unlock_recipe("pm-copper-anti-bacterial-panelling"),
      PM.unlock_recipe("pm-brass-anti-bacterial-panelling"),
    },
    prerequisites = {"chemical-science-pack"},
    unit =
    {
      count = 175,
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
    name = "pm-phosphor-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/phosphorus-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-phosphate-rock"),
      PM.unlock_recipe("pm-phosphor-vapour"),
      PM.unlock_recipe("pm-phosphor-vapour-cooling"),
      PM.unlock_recipe("pm-phosphoric-acid-filtering"),
      PM.unlock_recipe("pm-white-to-red-phosphorus")
    },
    prerequisites = {"chemical-science-pack"},
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
    name = "pm-fertiliser",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/fertiliser-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-ammonia-trace-gas-seperation"),
      PM.unlock_recipe("pm-fertiliser"),
      PM.unlock_recipe("pm-fertilised-wood-growth"),
      PM.unlock_recipe("pm-ammonia-atmospheric-voiding"),
      PM.unlock_recipe("pm-ammonium-chloride"),
      PM.unlock_recipe("pm-ammonium-vanadate-solution"),

    },
    prerequisites = {"pm-phosphor-processing", "pm-greenhouse"},
    unit =
    {
      count = 150,
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
    name = "pm-biomass-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/biomass-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-cellouse-pulp"),
      PM.unlock_recipe("pm-biomass")
    },
    prerequisites = {"pm-greenhouse"},
    unit =
    {
      count = 165,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 45    }
  },
  {
    type = "technology",
    name = "pm-agar-bacteria-filtering",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/agar-solution-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-factorian-bacteria-greenhouse"),
      PM.unlock_recipe("pm-agar-solution"),
      PM.unlock_recipe("pm-bacteriaed-agar-solution"),
      PM.unlock_recipe("pm-gene-harvesting"),

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
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-agar-storage",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/agar-storage.png",
    effects =
    {
      PM.unlock_recipe("pm-empty-petri-dish"),
      PM.unlock_recipe("pm-agar-petri-dish"),
      PM.unlock_recipe("pm-bacteriaed-petri-dish"),
      PM.unlock_recipe("pm-cyanobacteriaed-petri-dish"),
      PM.unlock_recipe("pm-agar-dish-emptying"),
      PM.unlock_recipe("pm-bacteriaed-dish-emptying"),
      PM.unlock_recipe("pm-cyanobacteriaed-dish-emptying")
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
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-bio-modules",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/bio-module-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-blank-bio-module"),
      PM.unlock_recipe("pm-trace-acetonitrile"),
      PM.unlock_recipe("pm-trace-acetonitrile-looping"),
      PM.unlock_recipe("pm-acetonitrile-to-phosphoramidite"),
      PM.unlock_recipe("pm-agility-bio-module"),
      PM.unlock_recipe("pm-myostatin-structuring"),
      PM.unlock_recipe("pm-myostatin-fixing"),
      PM.unlock_recipe("pm-myostatin-oxygenation"),
      PM.unlock_recipe("pm-myostatin-nitrogenation"),
      PM.unlock_recipe("pm-strength-bio-module"),
      PM.unlock_recipe("pm-iron-sulfur-cluster"),
      PM.unlock_recipe("pm-CISD2"),
      PM.unlock_recipe("pm-health-bio-module"),
    },
    prerequisites = {"pm-anti-bacterial-multiproperty-multimetals", "pm-agar-bacteria-filtering", "pm-phosphor-processing", "sulfur-processing", "pm-fertiliser"},
    research_trigger = 
    {
      type = "craft-fluid",
      fluid = "pm-gene-base",
      amount = 50
    }
  },
  {
    type = "technology",
    name = "pm-glass-melting",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/glass-melting.png",
    effects =
    {
      PM.unlock_recipe("pm-glass-melting"),
      PM.unlock_recipe("pm-glass-cooling")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/post-transition-metal-unlock.png",
    effects =
    {
      PM.unlock_recipe("pm-post-transition-metal-science-pack")
    },
    prerequisites = {"pm-science-center", "pm-crystallisation"},
    unit =
    {
      count = 200,
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
      PM.unlock_recipe("pm-molten-inator-2"),
      PM.unlock_recipe("pm-cold-inator-2"),
      PM.unlock_recipe("pm-lead-melting"),
      PM.unlock_recipe("pm-indium-melting"),
      PM.unlock_recipe("pm-thallium-melting"),
      PM.unlock_recipe("pm-lead-plate-cooling"),
      PM.unlock_recipe("pm-indium-plate-cooling"),
      PM.unlock_recipe("pm-thallium-plate-cooling"),
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
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-chlorine-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/chlorine-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-electrolysis-plant"),
      PM.unlock_recipe("pm-water-electroylsis"),
      PM.unlock_recipe("pm-seawater-evaporation"),
      PM.unlock_recipe("pm-salt-electroylsis"),
      PM.unlock_recipe("pm-sodium-looping"),
      PM.unlock_recipe("pm-hydrochloric-acid"),
    },
    prerequisites = {},
    research_trigger = 
    {
      type = "build-entity",
      entity = "pm-evaporator"
    }
  },
  {
    type = "technology",
    name = "pm-tempature-framing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/tempature-framing.png",
    effects =
    {
      PM.unlock_recipe("pm-molten-framing"),
      PM.unlock_recipe("pm-cooling-framing")
    },
    prerequisites = {"pm-indium-processing"},
    unit =
    {
      count = 125,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/fluorite-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-flourite-crystallisation"),
      PM.unlock_recipe("pm-hydrogen-flouride"),
      PM.unlock_recipe("pm-hydroflouric-acid"),
      PM.unlock_recipe("pm-hydroflouric-acid-filtering"),
      PM.unlock_recipe("pm-flux-container"),
      PM.unlock_recipe("pm-filled-flux-container"),
      PM.unlock_recipe("pm-fluxed-palladium-nickel-froth-seperation"),
      PM.unlock_recipe("pm-fluxed-platinum-nickel-froth-seperation"),
      PM.unlock_recipe("pm-fluxed-copper-froth-seperation"),
      PM.unlock_recipe("pm-fluxed-phosphor-vapour")
    },
    prerequisites = {"chemical-science-pack"},
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
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-advanced-mining-drill-1",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/technology/mining-drill-1.png",
    effects =
    {
      PM.unlock_recipe("pm-electric-mining-drill-2")
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock", "electric-mining-drill"},
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
    name = "pm-crystallisation",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/crystallisation-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-ethylene-glycol"),
      PM.unlock_recipe("pm-coolant"),
      PM.unlock_recipe("pm-crystallizer"),
      PM.unlock_recipe("pm-bismuth-leeching"),
      PM.unlock_recipe("pm-bismite"),
      PM.unlock_recipe("pm-bismuth-crystallisation"),
      PM.unlock_recipe("pm-lead-leeching"),
      PM.unlock_recipe("pm-lead-powder"),
      PM.unlock_recipe("pm-lead-froth"),
      PM.unlock_recipe("pm-lead-froth-skimming"),
      PM.unlock_recipe("pm-lead-purifying"),
      PM.unlock_recipe("pm-lead-plate"),
      PM.unlock_recipe("pm-thallium-leeching"),
      PM.unlock_recipe("pm-thallium-mixing"),
      PM.unlock_recipe("pm-thallium-sulfate-electrolysis"),
      PM.unlock_recipe("pm-thallium-plate"),
      PM.unlock_recipe("pm-choralkali-sodium-hydroxide"),
      PM.unlock_recipe("pm-metal-sodium-hydroxide"),
      PM.unlock_recipe("pm-bauxite-mixing"),
      PM.unlock_recipe("pm-gallium-liqouring"),
      PM.unlock_recipe("pm-ion-exchange-beads"),
      PM.unlock_recipe("pm-gallium-filtering"),
    },
    prerequisites = {"advanced-circuit"},
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/indium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-indium-filtering"),
      PM.unlock_recipe("pm-indium-electrolysis"),
      PM.unlock_recipe("pm-indium-plate"),
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
        {"pm-post-transition-metal-science-pack", 1}
      },
      time = 30,
    }
  },
  {
    type = "technology",
    name = "pm-solar-energy-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/solar-energy-2.png",
    effects =
    {
      PM.unlock_recipe("pm-solar-panel-2"),
    },
    prerequisites = {"processing-unit", "solar-energy"},
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
    icons = util.technology_icon_constant_equipment(
    "__periodic-madness__/graphics/technology/solar-panel-equipment-2.png"),
    prerequisites = {"solar-panel-equipment", "pm-post-transition-metal-pack-unlock"},
    effects =
    {
      PM.unlock_recipe("pm-solar-panel-equipment-2")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/zirconium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-zirconium-leeching"),
      PM.unlock_recipe("pm-zirconium-sand-filtering"),
      PM.unlock_recipe("pm-zirconia"),
      PM.unlock_recipe("pm-sand-creosote"),
      PM.unlock_recipe("pm-crucible"),
    },
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"},
    unit =
    {
      count = 125,
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
    name = "pm-radiation-resistant-multimetals",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/radiation-resistant-multimetals.png",
    effects =
    {
      PM.unlock_recipe("pm-lead-radiation-resistant-tubing"),
      PM.unlock_recipe("pm-lead-radiation-resistant-panelling")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/polonium-processing.png",
    effects =
    {
      PM.unlock_recipe("heat-pipe"),
      PM.unlock_recipe("pm-heat-exchanger-2"),
      PM.unlock_recipe("pm-proton-beam"),
      PM.unlock_recipe("pm-cyclotron"),
      PM.unlock_recipe("pm-bismuth-210"),
      PM.unlock_recipe("pm-polonium-210"),
      PM.unlock_recipe("pm-polonium-reactor"),
      PM.unlock_recipe("pm-empty-reactor-cell"),
      PM.unlock_recipe("pm-polonium-fuel-cell"),
      PM.unlock_recipe("pm-polonium-cell-reprocessing")
    },
    prerequisites = {"pm-radiation-resistant-multimetals", "pm-oil-fractions-burning"},
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/PMMA-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-copper-zinc-aluminium-catalyst"),
      PM.unlock_recipe("pm-methanol"),
      PM.unlock_recipe("pm-methyl-methacrylate"),
      PM.unlock_recipe("pm-polymethyl-methacrylate"),
      PM.unlock_recipe("pm-carbon-monoxide-atmospheric-voiding"),
    },
    prerequisites = {"chemical-science-pack"},
    unit =
    {
      count = 225,
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
    name = "pm-grouped-plastic-science-tier-1",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/plastic-science-tier-1.png",
    effects =
    {
      PM.unlock_recipe("pm-plastic-reactive-non-metals-science-pack"),
      PM.unlock_recipe("pm-plastic-post-transition-metal-science-pack"),
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-byproduct-handling.png",
    effects =
    {
      PM.unlock_recipe("pm-mixed-ore-slag-crushing"),
      PM.unlock_recipe("pm-mixed-ore-slag-leeching"),
      PM.unlock_recipe("pm-chromic-ferrum-leeching"),
      PM.unlock_recipe("pm-chromic-patina-leeching"),
      PM.unlock_recipe("pm-cobaltite-seperation"),
      PM.unlock_recipe("pm-ferrum")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/platinum-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-nickel-chunk-frothing"),
      PM.unlock_recipe("pm-platinum-nickel-froth-seperation"),
      PM.unlock_recipe("pm-platinum-powder-seperation"),
      PM.unlock_recipe("pm-platinum-plate"),
      PM.unlock_recipe("pm-better-air-filter"),
      PM.unlock_recipe("pm-platinum-melting"),
      PM.unlock_recipe("pm-platinum-plate-cooling")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/crystal-seeding.png",
    effects =
    {
      PM.unlock_recipe("pm-sodium-sulfite"),
      PM.unlock_recipe("pm-seed-crystal"),
      PM.unlock_recipe("pm-ruby-crystal-slurry"),
      PM.unlock_recipe("pm-citrine-crystal-slurry"),
      PM.unlock_recipe("pm-emerald-crystal-slurry"),
      PM.unlock_recipe("pm-sapphire-crystal-slurry"),
      PM.unlock_recipe("pm-lapis-lazuli-crystal-slurry"),
      PM.unlock_recipe("pm-garnet-crystal-slurry"),
      PM.unlock_recipe("pm-flourite-crystal-growing"),
      PM.unlock_recipe("pm-tungsten-crystal-growing"),
      PM.unlock_recipe("pm-scheelite-crystal-growing"),
      PM.unlock_recipe("pm-calcite-crystal-growing"),
      PM.unlock_recipe("pm-bismuth-crystal-growing"),
      PM.unlock_recipe("pm-molybdenite-crystal-growing")
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock", "pm-fertiliser"},
    unit =
    {
      count = 275,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "pm-cobalt-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/cobalt-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-copper-chunk-frothing"),
      PM.unlock_recipe("pm-copper-froth-seperation"),
      PM.unlock_recipe("pm-cobalt-blue-seperation"),
      PM.unlock_recipe("pm-copper-tailings-looping"),
      PM.unlock_recipe("pm-cobalt-plate"),
      PM.unlock_recipe("pm-cobalt-melting"),
      PM.unlock_recipe("pm-cobalt-plate-cooling")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/burn-inator.png",
    effects =
    {
      PM.unlock_recipe("pm-burn-inator")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/alkali-metal-unlock.png",
    effects =
    {
      PM.unlock_recipe("pm-alkali-metal-science-pack")
    },
    prerequisites = {"pm-potassium-processing", "pm-caesium-processing", "pm-lithium-processing", "pm-rubidium-processing"},
    unit =
    { --ffr MOOD!! i just wanna play botless tf2 and factorio
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/francium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-magneto-orbital-trap"),
      PM.unlock_recipe("pm-francium-forming"),
      PM.unlock_recipe("pm-magneto-orbital-trap-seperation"),
      PM.unlock_recipe("pm-francium"),
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-speed-module-4",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/speed-module-4-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-speed-module-4")
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
        {"pm-alkali-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 60
    }
  },
  { --tbf i should ask the guy im basing my schedule around if he has a specific date, but the fear of the unknown keeps me moticated
    type = "technology",
    name = "pm-efficiency-module-4",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/effectivity-module-4-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-efficiency-module-4")
    },
    prerequisites = {"efficiency-module-3"},
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
        {"pm-alkali-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-productivity-module-4",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/productivity-module-4-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-productivity-module-4")
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
        {"pm-alkali-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-potassium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/potassium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-seawater-evaporite"),
      PM.unlock_recipe("pm-sylvite-seperation"),
      PM.unlock_recipe("pm-anhydrite-seperation"),
      PM.unlock_recipe("pm-potash-potassium"),
      PM.unlock_recipe("pm-potassium-fertiliser")
    },
    prerequisites = {"pm-fertiliser"},
    unit =
    {
      count = 200,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/evaporator-2.png",
    effects =
    {
      PM.unlock_recipe("pm-evaporator-2")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/sodium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-sodium-bicarbonate"),
      PM.unlock_recipe("pm-ammonium-chloride-seperation"),
      PM.unlock_recipe("pm-sodium-bicarbonate-heating"),
      PM.unlock_recipe("pm-sodium-carbonate-seperation"),
      PM.unlock_recipe("pm-calcium-chloride-caesium-chloride")
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-vacuum-tubes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/vacuum-tubes.png",
    effects =
    {
      PM.unlock_recipe("pm-vacuum-tube")
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-caesium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/caesium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-pollucite-leeching"),
      PM.unlock_recipe("pm-pollucite-crushing"),
      PM.unlock_recipe("pm-pollucite-seperation"),
      PM.unlock_recipe("pm-caesium-iodine-to-antimony"),
      PM.unlock_recipe("pm-caesium-antimony-to-iodine"),
      PM.unlock_recipe("pm-caesium-hexachlorocerate-seperation"),
      PM.unlock_recipe("pm-caesium-chloride"),
      PM.unlock_recipe("pm-caesium")
    },
    prerequisites = {"pm-flourine-processing", "pm-potassium-processing"},
    unit =
    {
      count = 250,
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
      PM.unlock_recipe("pm-cyanobacteriaed-agar-solution"),
      PM.unlock_recipe("pm-melatonin-harvesting"),
      PM.unlock_recipe("pm-phosgene"),
      PM.unlock_recipe("pm-genevas-neglection-magazine"),
      PM.unlock_recipe("pm-genevas-neglection-shotgun-shell"),
      PM.unlock_recipe("pm-genevas-neglection-shotgun-slug"),
      PM.unlock_recipe("poison-capsule"),
      PM.unlock_recipe("slowdown-capsule")
    },
    prerequisites = {"pm-agar-bacteria-filtering"},
    unit =
    {
      count = 300,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/battery-charging.png",
    effects =
    {
      PM.unlock_recipe("pm-battery-charger"),
      PM.unlock_recipe("pm-battery-discharger"),
      PM.unlock_recipe("pm-vanadium-battery-charging"),
    },
    prerequisites = {"pm-voltatic-piles", "advanced-circuit", "pm-vanadium-oxide-redox-batteries"},
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/lithium-ion-battery.png",
    effects =
    {
      PM.unlock_recipe("pm-lithium-ion-battery")
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-lithium-sulfur-battery",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/lithium-sulfur-battery.png",
    effects =
    {
      PM.unlock_recipe("pm-lithium-sulfur-battery"),
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-advanced-battery-charging-1",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-battery-charging.png",
    effects =
    {
      PM.unlock_recipe("pm-lithium-sulfur-battery-charging"),
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
        {"pm-alkali-metal-science-pack", 1},
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
      PM.unlock_recipe("pm-ethylene-carbonate"),
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-lithium-ion-logistic-robotics",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/lithium-logistic-robotics.png",
    effects =
    {
      PM.unlock_recipe("pm-lithium-logistic-robot")
    },
    prerequisites = {"pm-lithium-ion-battery", "processing-unit", "logistic-robotics"},
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-lithium-ion-construction-robotics",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/lithium-construction-robotics.png",
    effects =
    {
      PM.unlock_recipe("pm-lithium-construction-robot")
    },
    prerequisites = {"pm-lithium-ion-battery", "processing-unit", "construction-robotics"},
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
        {"pm-alkali-metal-science-pack", 1},
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
      PM.modify("worker-robot-battery", 0.10)
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
      PM.modify("worker-robot-battery", 0.20)
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
      PM.modify("worker-robot-battery", 0.25)
    },
    prerequisites = {"worker-robots-speed-3", "worker-robots-storage-3", "pm-robot-battery-capacity-2"},
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
      PM.modify("worker-robot-battery", 0.30)
    },
    prerequisites = {"worker-robots-speed-4", "pm-worker-robots-storage-4", "pm-robot-battery-capacity-3"},
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/air-filterer-2.png",
    effects =
    {
      PM.unlock_recipe("pm-lithium-hydroxide"),
      PM.unlock_recipe("pm-lithium-bromide"),
      PM.unlock_recipe("pm-advanced-air-filter"),
      PM.unlock_recipe("pm-advanced-air-filter-cleaning"),
      PM.unlock_recipe("pm-better-air-filterering"),
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-advanced-atmospheric-condensation",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/better-atmospheric-condensation.png",
    effects =
    {
      PM.unlock_recipe("pm-advanced-oxygen-air-filter"),
      PM.unlock_recipe("pm-advanced-nitrogen-air-filter"),
      PM.unlock_recipe("pm-advanced-chlorine-air-filter"),
      PM.unlock_recipe("pm-advanced-carbon-dioxide-air-filter"),
      PM.unlock_recipe("pm-advanced-trace-gas-air-filter"),
      PM.unlock_recipe("pm-advanced-oxygen-atmosphere-filtering"),
      PM.unlock_recipe("pm-advanced-nitrogen-atmosphere-filtering"),
      PM.unlock_recipe("pm-advanced-chlorine-atmosphere-filtering"),
      PM.unlock_recipe("pm-advanced-carbon-dioxide-atmosphere-filtering"),
      PM.unlock_recipe("pm-advanced-trace-gas-atmosphere-filtering"),
    },
    prerequisites = {"pm-alkali-metal-pack-unlock", "pm-atmospheric-condensation"},
    unit =
    {
      count = 375,
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
    name = "pm-bromine-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/bromine-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-hydrogen-bromine-leeching"),
      PM.unlock_recipe("pm-hydrogen-bromide-seperation"),
      PM.unlock_recipe("pm-trace-bromine"),
      PM.unlock_recipe("pm-bromine"),
      PM.unlock_recipe("pm-vinyl-bromide")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/vanadium-chromium-alloying.png",
    effects =
    {
      PM.unlock_recipe("pm-better-steel-plate"),
      PM.unlock_recipe("pm-better-stainless-steel-alloy"),
      PM.unlock_recipe("pm-kasethal-plate")
    },
    prerequisites = {"pm-vanadium-processing", "pm-chrominum-processing"},
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
    name = "pm-polytetrafluoroethylene-plastic",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/polytetrafluoroethylene-plastic.png",
    effects =
    {
      PM.unlock_recipe("pm-methyl-chloride"),
      PM.unlock_recipe("pm-chloronated-solution"),
      PM.unlock_recipe("pm-chloronated-solution-seperation"),
      PM.unlock_recipe("pm-carbon-tetrachloride-seperation"),
      PM.unlock_recipe("pm-tetrafluoroethylene"),
      PM.unlock_recipe("pm-polytetrafluoroethylene"),
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-lithium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/lithium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-leaching-field"),
      PM.unlock_recipe("pm-calcium-brine"),
      PM.unlock_recipe("pm-sodium-brine"),
      PM.unlock_recipe("pm-low-concentration-lithium-leeching"),
      PM.unlock_recipe("pm-medium-concentration-lithium-leeching"),
      PM.unlock_recipe("pm-high-concentration-lithium-leeching"),
      PM.unlock_recipe("pm-oversaturated-concentration-lithium-leeching"),
      PM.unlock_recipe("pm-lithium-chloride-electrolysis"),
      PM.unlock_recipe("pm-bromine-leeching"),
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/electrolysis-plant-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-electrolysis-plant-2")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/better-sulfur-extraction.png",
    effects =
    {
      PM.unlock_recipe("pm-sulfur-burning"),
      PM.unlock_recipe("pm-sulfur-trioxide"),
      PM.unlock_recipe("pm-oleum"),
      PM.unlock_recipe("pm-better-sulfuric-acid"),
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-rubidium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/rubidium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-caesium-rubidium-alum"),
      PM.unlock_recipe("pm-caesium-rubidium-alum-seperation"),
      PM.unlock_recipe("pm-70-to-100-rubidium-alum"),
      PM.unlock_recipe("pm-50-to-70-rubidium-alum"),
      PM.unlock_recipe("pm-30-to-50-rubidium-alum"),
      PM.unlock_recipe("pm-rubidium-alum-seperation"),
    },
    prerequisites = {"pm-caesium-processing", "pm-potassium-processing"},
    unit =
    {
      count = 250,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/tinned-glass-melting.png",
    effects =
    {
      PM.unlock_recipe("pm-tinned-glass-melting")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/iodine-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-acidic-brine"),
      PM.unlock_recipe("pm-iodine-solution"),
      PM.unlock_recipe("pm-hydrogen-iodide"),
      PM.unlock_recipe("pm-hydrogen-iodide-seperation"),
      PM.unlock_recipe("pm-iodine-vanadate-solution-seperation"),
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-lead-bismuth-solder",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/lead-bismuth-solder.png",
    effects =
    {
      PM.unlock_recipe("pm-lead-liquid-solder"),
      PM.unlock_recipe("pm-bismuth-liquid-solder"),
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/metalloid-unlock.png",
    effects =
    {
      PM.unlock_recipe("pm-metalloid-science-pack")
    },
    prerequisites = {"pm-boron-processing", "pm-tellurium-processing", "pm-arsenic-antimony-processing", "pm-silicon-processing"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-grouped-plastic-science-tier-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/plastic-science-tier-2.png",
    effects =
    {
      PM.unlock_recipe("pm-plastic-alkali-metal-science-pack"),
      PM.unlock_recipe("pm-plastic-metalloid-science-pack"),
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-molten-potassium-salts"),
      PM.unlock_recipe("pm-potassium-salt-glass")
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
    name = "pm-borosilicate-glass",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/borosilicate-glass.png",
    effects =
    {
      PM.unlock_recipe("pm-molten-borosilicate-glass"),
      PM.unlock_recipe("pm-borosilicate-glass-cooling"),
      PM.unlock_recipe("pm-borosilicate-science-bottle"),
      PM.unlock_recipe("pm-borosilicate-glass-fibers")
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/boron-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-sassolite"),
      PM.unlock_recipe("pm-diluted-boric-acid"),
      PM.unlock_recipe("pm-ethylolamine"),
      PM.unlock_recipe("pm-boron"),
      PM.unlock_recipe("pm-borax"),
      PM.unlock_recipe("pm-boric-oxide"),
    },
    prerequisites = {"pm-indium-processing"},
    unit =
    {
      count = 350,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/tellurium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-copper-sludge"),
      PM.unlock_recipe("pm-sodium-tellurite"),
      PM.unlock_recipe("pm-sodium-bicarbonate-tellurite"),
      PM.unlock_recipe("pm-tellurium-oxide"),
      PM.unlock_recipe("pm-tellurium-oxide-seperation"),
      PM.unlock_recipe("pm-tellurium-plate")
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit =
    {
      count = 250,
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
    name = "pm-arsenic-antimony-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/arsenic-antimony-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-arsenopyrite-leeching"),
      PM.unlock_recipe("pm-impure-arsenic"),
      PM.unlock_recipe("pm-arsenic-oxide"),
      PM.unlock_recipe("pm-arsine"),
      PM.unlock_recipe("pm-arsine-seperation"),
      PM.unlock_recipe("pm-crude-antimony-sulfide"),
      PM.unlock_recipe("pm-low-quality-antimony-sulfide-filtering"),
      PM.unlock_recipe("pm-high-quality-antimony-sulfide-filtering"),
      PM.unlock_recipe("pm-crude-antimony-sulfide-mixing"),
      PM.unlock_recipe("pm-antimony-sulfide-seperation"),
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit =
    {
      count = 250,
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
    name = "pm-yttrium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/yttrium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-mixed-bastnasite"),
      PM.unlock_recipe("pm-mixed-bastnasite-seperation"),
      PM.unlock_recipe("pm-bastnasite-Y-seperation"),
      PM.unlock_recipe("pm-bastnasite-C-seperation"),
      PM.unlock_recipe("pm-yttrium-fluoride"),
      PM.unlock_recipe("pm-yttrium-ore"),
      PM.unlock_recipe("pm-yttrium-catalyst"),
      PM.unlock_recipe("pm-yttrium-ethylene-polymerisation"),
    },
    prerequisites = {"pm-metalloid-pack-unlock"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 80
    }
  },
  {
    type = "technology",
    name = "pm-germanium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/germanium-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-germanium-ore-concentrate"),
      PM.unlock_recipe("pm-germanium-concentrate-seperation"),
      PM.unlock_recipe("pm-germanium-sulfide-to-oxide"),
      PM.unlock_recipe("pm-germanium-oxide-to-tetrachloride"),
      PM.unlock_recipe("pm-germanium-ore")
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit =
    {
      count = 250,
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
    name = "pm-silicon-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/silicon-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-quartzite-leeching"),
      PM.unlock_recipe("pm-high-quality-quartzite-seperation"),
      PM.unlock_recipe("pm-low-quality-quartzite-seperation"),
      PM.unlock_recipe("pm-trichlorosilane"),
      PM.unlock_recipe("pm-silicon-tetrachloride-handling"),
      PM.unlock_recipe("pm-silane"),
      PM.unlock_recipe("pm-industrial-grade-silicon-ore"),
      PM.unlock_recipe("pm-low-quality-polysilicon"),
      PM.unlock_recipe("pm-low-to-med-quality-polysilicon"),
      PM.unlock_recipe("pm-med-to-high-quality-polysilicon"),
      PM.unlock_recipe("pm-polysilicon-rod"),
      PM.unlock_recipe("pm-silicon-based-magnesium-ore")
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit =
    {
      count = 250,
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
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/FUCK-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-francium-ultracool-centrifugal-kabbalism"),
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
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-molybdenum-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/molybdenum-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-molybdenum-leeching"),
      PM.unlock_recipe("pm-molybdenite-crushing"),
      PM.unlock_recipe("pm-molybdenum-floating")
    },
    prerequisites = {"pm-washing-plant-1"},
    unit =
    {
      count = 50,
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
    name = "pm-lithium-battery-equipment",
    icon_size = 256,
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/technology/lithium-battery-equipment.png",
        icon_size = 256
      },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
        icon_size = 128,
        shift = {
          100,
          100
        }
      }
    },
    effects = 
    {
      PM.unlock_recipe("pm-lithium-sulfur-battery-equipment")
    },
    prerequisites = {"pm-lithium-sulfur-battery"},
    unit =
    {
      count = 250,
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
    name = "pm-lithium-battery-mk2-equipment",
    icon_size = 256,
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/technology/lithium-battery-mk2-equipment.png",
        icon_size = 256
      },
      {
        icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
        icon_size = 128,
        shift = {
          100,
          100
        }
      }
    },
    effects = 
    {
      PM.unlock_recipe("pm-lithium-sulfur-battery-mk2-equipment")
    },
    prerequisites = {"pm-lithium-battery-equipment", "low-density-structure"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
      },
      time = 80
    }
  },
  {
    type = "technology",
    name = "pm-rocket-control-unit",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/rocket-control-unit.png",
    effects = 
    {
      PM.unlock_recipe("pm-CRT"),
      PM.unlock_recipe("pm-oscilloscope"),
      PM.unlock_recipe("pm-rocket-control-unit")
    },
    prerequisites = {"pm-vacuum-tubes", "pm-alkaline-earth-metal-pack-unlock"},
    unit =
      {
        count = 375,
        ingredients = 
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"pm-advanced-advanced-transition-metal-science-pack", 1},
          {"chemical-science-pack", 1},
          {"pm-alkali-metal-science-pack", 1},
          {"pm-alkaline-earth-metal-science-pack", 1}
        },
        time = 80,
      }
  },
  {
    type = "technology",
    name = "pm-advanced-electronic-components",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-electronic-components.png",
    effects = 
    {
      PM.unlock_recipe("pm-garnet-saw"),
      PM.unlock_recipe("pm-silicon-wafer"),
      PM.unlock_recipe("pm-barely-etched-silicon-wafer"),
      PM.unlock_recipe("pm-etched-silicon-wafer"),
      PM.unlock_recipe("pm-advanced-electronic-circuit-breadboard"),
      PM.unlock_recipe("pm-advanced-electronic-integrated-circuits"),
      PM.unlock_recipe("pm-advanced-fluid-circuit-breadboard"),
      PM.unlock_recipe("pm-advanced-fluid-integrated-circuits"),
      PM.unlock_recipe("pm-advanced-advanced-circuit-breadboard"),
      PM.unlock_recipe("pm-advanced-advanced-integrated-circuits"),
      PM.unlock_recipe("pm-advanced-processing-circuit-breadboard"),
      PM.unlock_recipe("pm-advanced-processing-integrated-circuits"),
      PM.unlock_recipe("pm-advanced-semiconductor"),
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
          {"chemical-science-pack", 1},
          {"pm-alkali-metal-science-pack", 1},
          {"pm-metalloid-science-pack", 1},
        },
        time = 80,
      }
  },
  {
    type = "technology",
    name = "pm-gemstone-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/gemstone-processing.png",
    effects = 
    {
      PM.unlock_recipe("pm-gem-sorting"),
      PM.unlock_recipe("pm-ruby-dust"),
      PM.unlock_recipe("pm-citrine-dust"),
      PM.unlock_recipe("pm-emerald-dust"),
      PM.unlock_recipe("pm-sapphire-dust"),
      PM.unlock_recipe("pm-lapis-lazuli-dust"),
      PM.unlock_recipe("pm-garnet-dust"),
      PM.unlock_recipe("pm-ruby-leeching"),
      PM.unlock_recipe("pm-citrine-leeching"),
      PM.unlock_recipe("pm-emerald-leeching"),
      PM.unlock_recipe("pm-sapphire-leeching"),
      PM.unlock_recipe("pm-lapis-lazuli-leeching"),
      PM.unlock_recipe("pm-ruby-voiding"),
      PM.unlock_recipe("pm-citrine-voiding"),
      PM.unlock_recipe("pm-emerald-voiding"),
      PM.unlock_recipe("pm-sapphire-voiding"),
      PM.unlock_recipe("pm-lapis-lazuli-voiding"),
      PM.unlock_recipe("pm-garnet-voiding"),
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit =
      {
        count = 250,
        ingredients = 
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"pm-advanced-advanced-transition-metal-science-pack", 1},
          {"pm-post-transition-metal-science-pack", 1},
        },
        time = 60,
      }
  },
  {
    type = "technology",
    name = "pm-intermediate-casting",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/intermediate-casting.png",
    effects = 
    {
      PM.unlock_recipe("pm-copper-wire-casting"),
      PM.unlock_recipe("pm-gold-wire-casting"),
      PM.unlock_recipe("pm-indium-wire-casting"),
      PM.unlock_recipe("pm-iron-gear-casting"),
      PM.unlock_recipe("pm-brass-gear-casting"),
    },
    prerequisites = {"pm-tempature-inators-2", "pm-metalloid-pack-unlock"},
    unit =
      {
        count = 275,
        ingredients = 
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"pm-advanced-advanced-transition-metal-science-pack", 1},
          {"pm-post-transition-metal-science-pack", 1},
          {"pm-metalloid-science-pack", 1},
        },
        time = 60,
      }
  },
  {
    type = "technology",
    name = "pm-laboratory",
    icon_size = 256,
    icon = "__base__/graphics/technology/electricity-consumers.png",
    effects = 
    {
      PM.unlock_recipe("lab"),
    },
    prerequisites = {},
    research_trigger = 
    {
      type = "craft-item",
      item = "pm-glass-pane",
      count = 8
    }
  },
  {
    type = "technology",
    name = "pm-advanced-material-processing-3",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-material-processing-3.png",
    effects = 
    {
      PM.unlock_recipe("pm-heat-furnace"),
      PM.unlock_recipe("pm-electric-furnace-2"),
      PM.unlock_recipe("heat-pipe"),
      PM.unlock_recipe("pm-heat-pipe-3"),
    },
    prerequisites = {"pm-silicone-processing", "advanced-material-processing-2", "pm-oil-fractions-burning"},
    unit =
      {
        count = 275,
        ingredients = 
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"pm-advanced-advanced-transition-metal-science-pack", 1},
          {"pm-post-transition-metal-science-pack", 1},
          {"pm-metalloid-science-pack", 1},
        },
        time = 60,
      }
  },
  {
    type = "technology",
    name = "pm-oil-fractions-burning",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/oil-fractions-burning.png",
    effects = 
    {
      PM.unlock_recipe("pm-heat-pipe-1"),
      PM.unlock_recipe("heat-exchanger"),
      PM.unlock_recipe("steam-turbine")
    },
    prerequisites = {"advanced-oil-processing"},
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
    name = "pm-silicone-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/silicone-processing.png",
    effects =
    {
      PM.unlock_recipe("pm-methyl-chloride"),
      PM.unlock_recipe("pm-tri-to-dichlorosilane"),
      PM.unlock_recipe("pm-di-to-trichlorosilane"),
      PM.unlock_recipe("pm-dimethyldichlorosilane"),
      PM.unlock_recipe("pm-liquid-silicone")
    },
    prerequisites = {"pm-metalloid-pack-unlock"},
    unit =
      {
        count = 350,
        ingredients = 
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"pm-advanced-advanced-transition-metal-science-pack", 1},
          {"pm-post-transition-metal-science-pack", 1},
          {"pm-metalloid-science-pack", 1},
        },
        time = 80,
      }
  },
  {
    type = "technology",
    name = "pm-astatine-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/astatine-processing.png",
    effects = 
    {
      PM.unlock_recipe("centrifuge"),
      PM.unlock_recipe("pm-mixed-trace-astatine"),
      PM.unlock_recipe("pm-mixed-astatine-magneto-orbital-trap"),
      PM.unlock_recipe("pm-mixed-astatine-MOT-emptying"),
      PM.unlock_recipe("pm-astatine-isotope-rearranging"),
      PM.unlock_recipe("pm-polonium-sassxolotl-enrichment")
    },
    prerequisites = {"pm-polonium-processing", "pm-metalloid-pack-unlock", "pm-francium-processing"},
    unit =
      {
        count = 425,
        ingredients = 
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"pm-advanced-advanced-transition-metal-science-pack", 1},
          {"pm-post-transition-metal-science-pack", 1},
          {"pm-metalloid-science-pack", 1},
        },
        time = 80,
      }
  },
  {
    type = "technology",
    name = "pm-concrete-walls",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/concrete-wall.png",
    effects = 
    {
      PM.unlock_recipe("pm-concrete-wall"),
    },
    prerequisites = {"pm-tempature-inators-2"},
    unit =
    {
      count = 175,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1}
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-bio-walls",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/bio-wall.png",
    effects = 
    {
      PM.unlock_recipe("pm-bio-wall"),
    },
    prerequisites = {"pm-agar-bacteria-filtering"},
    unit =
    {
      count = 175,
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
    name = "pm-alkaline-earth-metal-pack-unlock",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/alkaline-earth-metal-unlock.png",
    effects = 
    {
      PM.unlock_recipe("pm-alkaline-earth-metal-science-pack")
    },
    prerequisites = {"pm-alkali-metal-pack-unlock", "pm-magnesium-processing", "pm-strontium-processing", "pm-barium-processing", "pm-radium-processing"},
    unit = 
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-solar-energy-3",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/solar-energy-3.png",
    effects =
    {
      PM.unlock_recipe("pm-solar-panel-2"),
    },
    prerequisites = {"pm-alkaline-earth-metal-pack-unlock", "pm-solar-energy-2"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 80,
    }
  },
  {
    type = "technology",
    name = "pm-solar-panel-equipment-3",
    icon_size = 256,
    icons = util.technology_icon_constant_equipment(
    "__periodic-madness__/graphics/technology/solar-panel-equipment-2.png"),
    prerequisites = {"pm-solar-panel-equipment-2", "pm-alkaline-earth-metal-pack-unlock", "low-density-structure"},
    effects =
    {
      PM.unlock_recipe("pm-solar-panel-equipment-3")
    },
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "pm-better-calcium-extraction",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/calcium-processing.png",
    effects = 
    {
      PM.unlock_recipe("pm-mixed-calcium-rock"),
      PM.unlock_recipe("pm-calcium-hydroxide-slurry"),
      PM.unlock_recipe("pm-calcite"),
      PM.unlock_recipe("pm-calcium-oxide"),
      PM.unlock_recipe("pm-alumnotheric-calcium")
    },
    prerequisites = {"pm-alkaline-earth-metal-pack-unlock"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 80
    },
  },
  {
    type = "technology",
    name = "pm-calcium-sulfate-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects = 
    {
      PM.unlock_recipe("pm-calcium-sulfate-slurry"),
      PM.unlock_recipe("pm-calcium-sulfate-chunks"),
      PM.unlock_recipe("pm-calcium-sulfate"),
    },
    prerequisites = {"pm-better-calcium-extraction", "pm-better-sulfur-extraction"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 80
    },
  },
  {
    type = "technology",
    name = "pm-tempature-inators-3",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/temp-inators-3.png",
    effects =
    {
      PM.unlock_recipe("pm-molten-inator-3"),
      PM.unlock_recipe("pm-cold-inator-3"),
    },
    prerequisites = {"pm-silicone-processing", "pm-tempature-inators-2"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 80
    }
  },
  {
    type = "technology",
    name = "pm-magnesium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-dolomite"),
      PM.unlock_recipe("pm-magnesium-hydroxide"),
      PM.unlock_recipe("pm-magnesium-oxide"),
      PM.unlock_recipe("pm-magnesium-ore"),
      PM.unlock_recipe("pm-calcium-silicate-seperation")
    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit =
    {
      count = 250,
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
    name = "pm-strontium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects =
    {

    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit =
    {
      count = 250,
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
    name = "pm-barium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects =
    {

    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit =
    {
      count = 250,
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
    name = "pm-radium-processing",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects =
    {

    },
    prerequisites = {"pm-alkali-metal-pack-unlock"},
    unit =
    {
      count = 250,
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
    name = "pm-RTG",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects = 
    {

    },
    prerequisites = {"pm-alkaline-earth-metal-pack-unlock"},
    unit =
    {
      count = 475,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 80
    },
  },
  {
    type = "technology",
    name = "pm-effect-transmission-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/icons/placeholder-tech.png",
    effects = {},
    prerequisites = {"pm-alkaline-earth-metal-pack-unlock", "effect-transmission"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 80
    },
  },
  {
    type = "technology",
    name = "pm-mixing-material-processing-1",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/mixing-tank-1.png",
    effects =
    {
      PM.unlock_recipe("pm-mixing-tank-1")
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
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-mixing-material-processing-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/mixing-tank-2.png",
    effects =
    {
      PM.unlock_recipe("pm-mixing-tank-2")
    },
    prerequisites = {"pm-mixing-material-processing-1", "processing-unit"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1}
      },
      time = 60
    }
  },

  {
    type = "technology",
    name = "pm-research-productivity-1",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      PM.modify("laboratory-productivity", 0.05)
    },
    prerequisites = {"pm-post-transition-metal-pack-unlock"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
      },
      time = 45
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-research-productivity-2",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      PM.modify("laboratory-productivity", 0.05)
    },
    prerequisites = {"pm-research-productivity-1"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-research-productivity-3",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      PM.modify("laboratory-productivity", 0.1)
    },
    prerequisites = {"pm-research-productivity-2", "pm-metalloid-pack-unlock"},
    unit =
    {
      count = 750,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 60
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-research-productivity-4",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      PM.modify("laboratory-productivity", 0.1)
    },
    prerequisites = {"pm-research-productivity-3"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 80
    },
    upgrade = true
  },
  

  {
    type = "technology",
    name = "pm-FUCK-transition-metal-science-pack",
    icon_size = 256,
    icon = "__base__/graphics/technology/automation-science-pack.png",
    effects =
    {
      PM.unlock_recipe("pm-FUCK-transition-metal-science-pack")
    },
    prerequisites = {"pm-FUCK"},
    upgrade = true,
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
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
      PM.unlock_recipe("pm-FUCK-advanced-transition-metal-science-pack")
    },
    prerequisites = {"pm-FUCK-transition-metal-science-pack"},
    upgrade = true,
    unit =
    {
      count = 350,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
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
      PM.unlock_recipe("pm-FUCK-advanced-advanced-transition-metal-science-pack")
    },
    prerequisites = {"pm-FUCK-advanced-transition-metal-science-pack"},
    upgrade = true,
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
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
      PM.unlock_recipe("pm-FUCK-post-transition-metal-science-pack")
    },
    prerequisites = {"pm-FUCK-advanced-advanced-transition-metal-science-pack"},
    upgrade = true,
    unit =
    {
      count = 650,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"pm-advanced-advanced-transition-metal-science-pack", 2},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
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
      PM.unlock_recipe("pm-FUCK-reactive-non-metals-science-pack")
    },
    prerequisites = {"pm-FUCK-advanced-advanced-transition-metal-science-pack"},
    upgrade = true,
    unit =
    {
      count = 650,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"pm-advanced-advanced-transition-metal-science-pack", 2},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "toolbelt-2",
    icon_size = 256,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/toolbelt.png"),
    prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock", "toolbelt"},
    effects =
    {
      PM.modify("character-inventory-slots-bonus", 10)
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
    icon_size = 256,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      PM.modify("worker-robot-storage", 1),
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
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 100
    },
    upgrade = true,
    order = "c-k-g-a"
  },
  {
    type = "technology",
    name = "pm-worker-robots-storage-5",
    icon_size = 256,
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects =
    {
      PM.modify("worker-robot-storage", 1)
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
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 100
    },
    upgrade = true,
    order = "c-k-g-a"
  },
  {
    type = "technology",
    name = "pm-mining-productivity-5",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        PM.modify("mining-drill-productivity-bonus", 0.1)
    },
    prerequisites = {"mining-productivity-4", "pm-metalloid-pack-unlock"},
    unit =
    {
      count = 1600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 80
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "pm-mining-productivity-6",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
    effects =
    {
        PM.modify("mining-drill-productivity-bonus", 0.15)
    },
    prerequisites = {"pm-mining-productivity-5"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 80
    },
    upgrade = true,
  },

  -- {
  --    type = "technology",
  --    name = "pm-metharicephentine",
  --    icon_size = 128,
  --    icon = "__periodic-madness__/graphics/technology/metharicephentine.png",
  --    visible_when_disabled = false,
  --    effects =
  --    {
  --        PM.unlock_recipe("pm-metharicephentine")
  --    },
  --    prerequisites = {"advanced-oil-processing"},
  --    unit =
  --    {
  --        count = 250,
  --        ingredients =
  --        {
  --   {"automation-science-pack", 1},
  --   {"logistic-science-pack", 1},
  --   {"pm-advanced-advanced-transition-metal-science-pack", 1}
  --       },
  --       time = 60
  --    }
  --  }
})
