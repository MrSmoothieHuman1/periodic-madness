data:extend({

  {
    type = "technology",
    name = "pm-bio-laboratory",
    icon_size = 224 + 32,
    icon = "__periodic-madness__/graphics/technology/bio-laboratory.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pm-bio-lab"
      }
    },
    prerequisites = { "pm-bio-modules", "chemical-science-pack" },
    unit =
    {
      count = 174 + 1,
      ingredients =
      {
        { "automation-science-pack",                            1 },
        { "logistic-science-pack",                              1 },
        { "pm-advanced-advanced-transition-metal-science-pack", 1 },
        { "chemical-science-pack",                              1 }
      },
      time = 33 + 12
    }
  },

  {
    type = "technology",
    name = "pm-bio-module-agility-1",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    effects =
    {
      {
        type = "character-reach-distance",
        modifier = 1
      },
      {
        type = "character-running-speed",
        modifier = 0.1
      }
    },
    prerequisites = { "pm-bio-laboratory" },
    unit =
    {
      count = 100,
      ingredients =
      {
        { "pm-agility-bio-module", 1 },
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-agility-2",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-reach-distance",
        modifier = 1
      },
      {
        type = "character-running-speed",
        modifier = 0.1
      }
    },
    prerequisites = { "pm-bio-module-agility-1" },
    unit =
    {
      count = 300,
      ingredients =
      {
        { "pm-agility-bio-module", 1 },
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-agility-3",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-reach-distance",
        modifier = 2
      },
      {
        type = "character-running-speed",
        modifier = 0.2
      }
    },
    prerequisites = { "pm-bio-module-agility-2" },
    unit =
    {
      count = 700,
      ingredients =
      {
        { "pm-agility-bio-module", 1 },
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-agility-4",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/agility-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-reach-distance",
        modifier = 2
      },
      {
        type = "character-running-speed",
        modifier = 0.2
      }
    },
    prerequisites = { "pm-bio-module-agility-3" },
    unit =
    {
      count = 1400,
      ingredients =
      {
        { "pm-agility-bio-module", 1 },
      },
      time = 240
    }
  },

  {
    type = "technology",
    name = "pm-bio-module-strength-1",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.1
      },
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    prerequisites = { "pm-bio-laboratory" },
    unit =
    {
      count = 100,
      ingredients =
      {
        { "pm-strength-bio-module", 1 },
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-strength-2",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.1
      },
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    prerequisites = { "pm-bio-module-strength-1" },
    unit =
    {
      count = 300,
      ingredients =
      {
        { "pm-strength-bio-module", 1 },
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-strength-3",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.2
      },
      {
        type = "character-inventory-slots-bonus",
        modifier = 12
      }
    },
    prerequisites = { "pm-bio-module-strength-2" },
    unit =
    {
      count = 700,
      ingredients =
      {
        { "pm-strength-bio-module", 1 },
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-strength-4",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/strength-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-mining-speed",
        modifier = 0.2
      },
      {
        type = "character-inventory-slots-bonus",
        modifier = 12
      }
    },
    prerequisites = { "pm-bio-module-strength-3" },
    unit =
    {
      count = 1400,
      ingredients =
      {
        { "pm-strength-bio-module", 1 },
      },
      time = 240
    }
  },

  {
    type = "technology",
    name = "pm-bio-module-health-1",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 24 + 1
      },
    },
    prerequisites = { "pm-bio-laboratory" },
    unit =
    {
      count = 100,
      ingredients =
      {
        { "pm-health-bio-module", 1 },
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-health-2",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 24 + 1
      },
    },
    prerequisites = { "pm-bio-module-health-1" },
    unit =
    {
      count = 300,
      ingredients =
      {
        { "pm-health-bio-module", 1 },
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-health-3",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 40 + 10
      },
    },
    prerequisites = { "pm-bio-module-health-2" },
    unit =
    {
      count = 700,
      ingredients =
      {
        { "pm-health-bio-module", 1 },
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-bio-module-health-4",
    icon_size = 224 + 1 + 31,
    icon = "__periodic-madness__/graphics/technology/health-bio-upgrade.png",
    use_icon_overlay_constant = true,
    upgrade = true,
    effects =
    {
      {
        type = "character-health-bonus",
        modifier = 40 + 10
      },
    },
    prerequisites = { "pm-bio-module-health-3" },
    unit =
    {
      count = 1400,
      ingredients =
      {
        { "pm-health-bio-module", 1 },
      },
      time = 240
    }
  },
})
