local PM = require("library")

--MARK: Total bonus
--Agility: Reach distance +10, Running speed +100%
--Strength: Mining speed +100%, Inventory size +80
-- Health: Health +250, crafting speed +100%
data:extend({

  {
    type = "technology",
    name = "pm-bio-laboratory",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/bio-laboratory.png",
    effects =
    {
      PM.unlock_recipe("pm-bio-lab")
    },
    prerequisites = { "pm-bio-modules", "chemical-science-pack"},
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
    name = "pm-bio-module-agility-1",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    effects =
    {
      PM.modify("character-reach-distance", 1),
      PM.modify("character-running-speed", 0.1)
    },
    prerequisites = { "pm-bio-laboratory"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"pm-agility-bio-module", 1},
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-agility-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-reach-distance", 1),
      PM.modify("character-running-speed", 0.1)
    },
    prerequisites = { "pm-bio-module-agility-1"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"pm-agility-bio-module", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-agility-3",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-reach-distance", 2),
      PM.modify("character-running-speed", 0.2)
    },
    prerequisites = { "pm-bio-module-agility-2"},
    unit =
    {
      count = 700,
      ingredients =
      {
        {"pm-agility-bio-module", 1},
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-agility-4",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-reach-distance", 2),
      PM.modify("character-running-speed", 0.2)
    },
    prerequisites = { "pm-bio-module-agility-3"},
    unit =
    {
      count = 1400,
      ingredients =
      {
        {"pm-agility-bio-module", 1},
      },
      time = 240
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-agility-5",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-reach-distance", 2),
      PM.modify("character-running-speed", 0.2)
    },
    prerequisites = { "pm-bio-module-agility-4"},
    unit =
    {
      count = 2800,
      ingredients =
      {
        {"pm-agility-bio-module", 1},
      },
      time = 240
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-agility-6",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-reach-distance", 2),
      PM.modify("character-running-speed", 0.2)
    },
    prerequisites = { "pm-bio-module-agility-5"},
    unit =
    {
      count = 4200,
      ingredients =
      {
        {"pm-agility-bio-module", 1},
      },
      time = 360
    }
  },

  {
    type = "technology",
    name = "pm-bio-module-strength-1",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    effects =
    {
      PM.modify("character-mining-speed", 0.1),
      PM.modify("character-inventory-slots-bonus", 10)
    },
    prerequisites = { "pm-bio-laboratory"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"pm-strength-bio-module", 1},
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-strength-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-mining-speed", 0.1),
      PM.modify("character-inventory-slots-bonus", 10)
    },
    prerequisites = { "pm-bio-module-strength-1"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"pm-strength-bio-module", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-strength-3",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-mining-speed", 0.2),
      PM.modify("character-inventory-slots-bonus", 15)
    },
    prerequisites = { "pm-bio-module-strength-2"},
    unit =
    {
      count = 700,
      ingredients =
      {
        {"pm-strength-bio-module", 1},
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-strength-4",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-mining-speed", 0.2),
      PM.modify("character-inventory-slots-bonus", 15)
    },
    prerequisites = { "pm-bio-module-strength-3"},
    unit =
    {
      count = 1400,
      ingredients =
      {
        {"pm-strength-bio-module", 1},
      },
      time = 240
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-strength-5",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-mining-speed", 0.2),
      PM.modify("character-inventory-slots-bonus", 15)
    },
    prerequisites = { "pm-bio-module-strength-4"},
    unit =
    {
      count = 2800,
      ingredients =
      {
        {"pm-strength-bio-module", 1},
      },
      time = 240
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-strength-6",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-mining-speed", 0.2),
      PM.modify("character-inventory-slots-bonus", 15)
    },
    prerequisites = { "pm-bio-module-strength-5"},
    unit =
    {
      count = 4200,
      ingredients =
      {
        {"pm-strength-bio-module", 1},
      },
      time = 360
    }
  },

  {
    type = "technology",
    name = "pm-bio-module-health-1",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    effects =
    {
      PM.modify("character-health-bonus", 25),
      PM.modify("character-crafting-speed", 0.10)
    },
    prerequisites = { "pm-bio-laboratory"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"pm-health-bio-module", 1},
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-health-2",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-health-bonus", 25),
      PM.modify("character-crafting-speed", 0.10)
    },
    prerequisites = { "pm-bio-module-health-1"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"pm-health-bio-module", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-health-3",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-health-bonus", 50),
      PM.modify("character-crafting-speed", 0.20)
    },
    prerequisites = { "pm-bio-module-health-2"},
    unit =
    {
      count = 700,
      ingredients =
      {
        {"pm-health-bio-module", 1},
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-health-4",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-health-bonus", 50),
      PM.modify("character-crafting-speed", 0.20)
    },
    prerequisites = { "pm-bio-module-health-3"},
    unit =
    {
      count = 1400,
      ingredients =
      {
        {"pm-health-bio-module", 1},
      },
      time = 240
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-health-5",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-health-bonus", 50),
      PM.modify("character-crafting-speed", 0.20)
    },
    prerequisites = { "pm-bio-module-health-4"},
    unit =
    {
      count = 2800,
      ingredients =
      {
        {"pm-health-bio-module", 1},
      },
      time = 240
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-health-6",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      PM.modify("character-health-bonus", 50),
      PM.modify("character-crafting-speed", 0.20)
    },
    prerequisites = { "pm-bio-module-health-5"},
    unit =
    {
      count = 4200,
      ingredients =
      {
        {"pm-health-bio-module", 1},
      },
      time = 360
    }
  },
})
