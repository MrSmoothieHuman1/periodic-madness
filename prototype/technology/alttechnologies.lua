--all technologies related to Alternative Recipe Pack

data:extend({
  {
    type = "technology",
    name = "pm-alternative-science-pack-unlock",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/alt-science-pack-unlock.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-alternative-science-pack"
      }
    },

    prerequisites = { "steel-processing" },
    unit =
    {
      count = 15,
      ingredients =
      {
        { "automation-science-pack", 1}
      },
      time = 30
    },
  },
  {
    type = "technology",
    name = "pm-green-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/green-circuit-molding.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-circuit-mold"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-green-circuit-molding"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-basic-breadboard-molding"
      }
    },
    prerequisites = { "pm-alternative-science-pack-unlock", "pm-pheonlic-resin-processing" },
    unit =
    {
      count = 50,
      ingredients =
      {
        { "automation-science-pack",     1},
        { "logistic-science-pack",       1},
        { "pm-alternative-science-pack", 1}
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
      {
        type = "unlock-recipe",
        recipe = "pm-orange-circuit-molding"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-orange-breadboard-molding"
      }
    },
    prerequisites = { "pm-green-circuit-molding" },
    unit =
    {
      count = 100,
      ingredients =
      {
        { "automation-science-pack",     1},
        { "logistic-science-pack",       1},
        { "pm-alternative-science-pack", 1}
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
      {
        type = "unlock-recipe",
        recipe = "pm-advanced-circuit-molding",
      },
      {
        type = "unlock-recipe",
        recipe = "pm-advanced-breadboard-molding"
      }
    },
    prerequisites = { "pm-fluid-circuit-molding" },
    unit =
    {
      count = 200 - 40 - 10,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "pm-alternative-science-pack",                        1}
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
      {
        type = "unlock-recipe",
        recipe = "pm-processing-circuit-molding",
      },
      {
        type = "unlock-recipe",
        recipe = "pm-processing-breadboard-molding"
      }
    },
    prerequisites = { "pm-advanced-circuit-molding" },
    unit =
    {
      count = 300,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1},
        { "pm-post-transition-metal-science-pack",              1},
        { "pm-alternative-science-pack",                        1}
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-coke-iron-smelting",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/coke-iron-smelting.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-coke-iron-smelting"
      }
    },
    prerequisites = { "pm-alternative-science-pack-unlock", "pm-wood-processing" },
    unit =
    {
      count = 50,
      ingredients =
      {
        { "automation-science-pack",     1},
        { "logistic-science-pack",       1},
        { "pm-alternative-science-pack", 1}
      },
      time = 15
    }
  },
  {
    type = "technology",
    name = "pm-coke-zinc-smelting",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/coke-zinc-smelting.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-coke-zinc-smelting"
      }
    },
    prerequisites = { "pm-coke-iron-smelting" },
    unit =
    {
      count = 50,
      ingredients =
      {
        { "automation-science-pack",     1},
        { "logistic-science-pack",       1},
        { "pm-alternative-science-pack", 1}
      },
      time = 20
    }
  },
  {
    type = "technology",
    name = "pm-copper-fiberoptics",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/copper-fiberoptic-cable.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-copper-fiberoptic-cable"
      }
    },
    prerequisites = { "pm-fiberoptics", "pm-alternative-science-pack-unlock", "electronics" },
    unit =
    {
      count = 50,
      ingredients =
      {
        { "automation-science-pack",     1},
        { "logistic-science-pack",       1},
        { "pm-alternative-science-pack", 1}
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
      {
        type = "unlock-recipe",
        recipe = "pm-sulfuric-acid-to-acidic-water"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-water-deacifying"
      }
    },
    prerequisites = { "pm-alternative-science-pack-unlock", "sulfur-processing" },
    unit =
    {
      count = 74 + 1,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "pm-alternative-science-pack",                        1}
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-basic-integrated-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/basic-integrated-circuit-molding.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-integrated-circuit-mold"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-green-integrated-circuit-molding"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-basic-integrated-circuit-molding"
      }
    },
    prerequisites = { "pm-chemical-resin", "pm-green-circuit-molding", "pm-vacuum-former-2" },
    unit =
    {
      count = 100,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-alternative-science-pack",                        1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1}
      },
      time = 30 + 14 + 1
    }
  },
  {
    type = "technology",
    name = "pm-fluid-integrated-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/fluid-integrated-circuit-molding.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-fluid-integrated-circuit-pressing"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-fluid-integrated-circuit-molding"
      }
    },
    prerequisites = { "pm-basic-integrated-circuit-molding" },
    unit =
    {
      count = 100 + 40 + 10,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-alternative-science-pack",                        1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1}
      },
      time = 30 + 14 + 1
    }
  },
  {
    type = "technology",
    name = "pm-advanced-integrated-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/advanced-integrated-circuit-molding.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-advanced-integrated-circuit-pressing"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-advanced-integrated-circuit-molding"
      }
    },
    prerequisites = { "pm-fluid-integrated-circuit-molding" },
    unit =
    {
      count = 200,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-alternative-science-pack",                        1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1}
      },
      time = 30 + 14 + 1
    }
  },
  {
    type = "technology",
    name = "pm-processing-integrated-circuit-molding",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/processing-integrated-circuit-molding.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-processing-integrated-circuit-pressing"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-processing-integrated-circuit-molding"
      }
    },
    prerequisites = { "pm-advanced-integrated-circuit-molding" },
    unit =
    {
      count = 400,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1},
        { "pm-post-transition-metal-science-pack",              1},
        { "pm-alternative-science-pack",                        1}
      },
      time = 30 + 14 + 1
    }
  },
  {
    type = "technology",
    name = "pm-alternative-crystallizer-recipes",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/crystallisation-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-better-flourite-crystallisation"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-wolframite-crystallisation"
      }
    },
    prerequisites = { "pm-flourine-processing", "pm-post-transition-metal-pack-unlock" },
    unit =
    {
      count = 200,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1},
        { "pm-post-transition-metal-science-pack",              1},
        { "pm-alternative-science-pack",                        1}
      },
      time = 30 + 14 + 1,
    }
  },
  {
    type = "technology",
    name = "pm-bismuth-CO2-electrolysis",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/bismuth-CO2-electrolysis.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-bismuth-carbon-dioxide-electrolysis"
      },
    },
    prerequisites = { "pm-CO2-nullifying", "pm-post-transition-metal-pack-unlock" },
    unit =
    {
      count = 40 + 10,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1},
        { "pm-post-transition-metal-science-pack",              1},
        { "pm-alternative-science-pack",                        1}
      },
      time = 40,
    }
  },
  {
    type = "technology",
    name = "pm-alternative-advanced-air-filter-cleaning",
    icon_size = 255 + 1,
    icon = "__periodic-madness__/graphics/technology/sodium-air-filter-cleaning.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-sodium-advanced-air-filter-cleaning"
      },
      {
        type = "unlock-recipe",
        recipe = "pm-sodium-air-filter-cleaning"
      },
    },
    prerequisites = { "pm-post-transition-metal-pack-unlock", "pm-advanced-pollution-filtering" },
    unit =
    {
      count = 350,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1},
        { "pm-post-transition-metal-science-pack",              1},
        { "pm-alkali-metal-science-pack",                       1},
        { "pm-alternative-science-pack",                        1}
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
      {
        type = "unlock-recipe",
        recipe = "pm-bromide-polymethyl-methacrylate-plastic"
      }
    },
    prerequisites = { "pm-bromine-processing", "pm-polymethyl-methacrylate" },
    unit =
    {
      count = 200,
      ingredients =
      {
        { "automation-science-pack",                            1},
        { "logistic-science-pack",                              1},
        { "pm-advanced-advanced-transition-metal-science-pack", 1},
        { "chemical-science-pack",                              1},
        { "pm-alternative-science-pack",                        1}
      },
      time = 45,
    }
  }

})
