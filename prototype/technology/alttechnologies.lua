local PM = require("library")
--all technologies related to Alternative Recipe Pack

data:extend({
  {
    type = "technology",
    name = "pm-electronic-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/green-circuit-molding.png",
    effects =
    {
      PM.unlock_recipe("pm-circuit-mold"),
      PM.unlock_recipe("pm-electronic-circuit-molding"),
      PM.unlock_recipe("pm-electronic-breadboard-molding")
    },
    prerequisites = {"pm-pheonlic-resin-processing"},
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
    name = "pm-fluid-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/orange-circuit-molding.png",
    effects =
    {
      PM.unlock_recipe("pm-orange-circuit-molding"),
      PM.unlock_recipe("pm-orange-breadboard-molding")
    },
    prerequisites = {"pm-electronic-circuit-molding"},
    unit =
    {
      count = 100,
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
    name = "pm-advanced-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-circuit-molding.png",
    effects =
    {
      PM.unlock_recipe("pm-advanced-circuit-molding"),
      PM.unlock_recipe("pm-advanced-breadboard-molding")
    },
    prerequisites = { "pm-fluid-circuit-molding"},
    unit =
    {
      count = 150,
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
    name = "pm-processing-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/processing-circuit-molding.png",
    effects =
    {
      PM.unlock_recipe("pm-processing-circuit-molding"),
      PM.unlock_recipe("pm-processing-breadboard-molding")
    },
    prerequisites = { "pm-advanced-circuit-molding"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-aluminium-fiberoptics",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/copper-fiberoptic-cable.png",
    effects =
    {
      PM.unlock_recipe("pm-aluminium-fiberoptic-cable")
    },
    prerequisites = {"pm-fiberoptics", "electronics"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 20
    }
  },
  {
    type = "technology",
    name = "pm-sulfuric-acid-dilution",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/sulfuric-acid-dilution.png",
    effects =
    {
      PM.unlock_recipe("pm-sulfuric-acid-to-acidic-water"),
      PM.unlock_recipe("pm-water-deacifying"),
      PM.unlock_recipe("pm-hydrochloric-acid-neutralisation"),
      PM.unlock_recipe("pm-chromic-acid-neutralisation"),
    },
    prerequisites = {"sulfur-processing"},
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
    }
  },
  {
    type = "technology",
    name = "pm-electronic-integrated-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/basic-integrated-circuit-molding.png",
    effects =
    {
      PM.unlock_recipe("pm-integrated-circuit-mold"),
      PM.unlock_recipe("pm-green-integrated-circuit-molding"),
      PM.unlock_recipe("pm-electronic-integrated-circuit-molding")
    },
    prerequisites = { "pm-chemical-resin", "pm-electronic-circuit-molding", "pm-vacuum-former-2"},
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
    name = "pm-fluid-integrated-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/fluid-integrated-circuit-molding.png",
    effects =
    {
      PM.unlock_recipe("pm-fluid-integrated-circuit-pressing"),
      PM.unlock_recipe("pm-fluid-integrated-circuit-molding")
    },
    prerequisites = { "pm-electronic-integrated-circuit-molding"},
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
    name = "pm-advanced-integrated-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-integrated-circuit-molding.png",
    effects =
    {
      PM.unlock_recipe("pm-advanced-integrated-circuit-pressing"),
      PM.unlock_recipe("pm-advanced-integrated-circuit-molding")
    },
    prerequisites = { "pm-fluid-integrated-circuit-molding"},
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
    name = "pm-processing-integrated-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/processing-integrated-circuit-molding.png",
    effects =
    {
      PM.unlock_recipe("pm-processing-integrated-circuit-pressing"),
      PM.unlock_recipe("pm-processing-integrated-circuit-molding")
    },
    prerequisites = { "pm-advanced-integrated-circuit-molding"},
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
        
      },
      time = 45
    }
  },
  {
    type = "technology",
    name = "pm-alternative-crystallizer-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/crystallisation-tech.png",
    effects =
    {
      PM.unlock_recipe("pm-better-flourite-crystallisation"),
      PM.unlock_recipe("pm-wolframite-crystallisation")
    },
    prerequisites = { "pm-flourine-processing", "pm-post-transition-metal-pack-unlock"},
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
      time = 45,
    }
  },
  {
    type = "technology",
    name = "pm-bismuth-CO2-electrolysis",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/bismuth-CO2-electrolysis.png",
    effects =
    {
      PM.unlock_recipe("pm-bismuth-carbon-dioxide-electrolysis"),
    },
    prerequisites = { "pm-CO2-nullifying", "pm-post-transition-metal-pack-unlock"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        
      },
      time = 40,
    }
  },
  {
    type = "technology",
    name = "pm-alternative-advanced-air-filter-cleaning",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/sodium-air-filter-cleaning.png",
    effects =
    {
      PM.unlock_recipe("pm-sodium-advanced-air-filter-cleaning"),
      PM.unlock_recipe("pm-sodium-air-filter-cleaning"),
    },
    prerequisites = { "pm-post-transition-metal-pack-unlock", "pm-advanced-pollution-filtering"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-bromide-PMMA",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/bromide-PMMA.png",
    effects =
    {
      PM.unlock_recipe("pm-bromide-polymethyl-methacrylate-plastic")
    },
    prerequisites = { "pm-bromine-processing", "pm-polymethyl-methacrylate"},
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
      time = 45,
    }
  }

})
