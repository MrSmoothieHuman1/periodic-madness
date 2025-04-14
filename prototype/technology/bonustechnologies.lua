local PM = require("library")

--MARK: Bonus amounts
-- this catalouges the scaluing for every single bonus technology in PM, just for other people to look at and so i cant forget

--Research productivity: starts at 0.05, increases after every 2 levels, doubles after every increase (0.5, 0.5, 1, 1, 2, 2, 4, 4)
--Research speed: starts at 0.125, doubles its increase every 2 levels (0.125, 0.125, 0.15, 0.2, 0.3, 0.4, 0.6, 0.8, 1.2, 1.6)
--Robot storage: adds +1 every level (one per research tier)
--Robot speed: starts at 0.2, increases by 0.05 every 2 levels (0.2, 0.25, 0.25, 0.3, 0.3, 0.35, 0.35)
--Robot battery: starts at 0.1, increases by 0.05 every level and adds +0.05 every 3 levels (0.1, 0.15, 0.2, 0.3, 0.4, 0.5, 0.65, 0.8, 0.95, 1.1, 1.25)
--Mining productivity: starts at 0.05, increases after 2 levels, doubles after every increase (0.05, 0.05, 1, 1, 2, 2, 4, 4)
--Beacon distribution: starts at 0.05, adds 0.05 every level (0.05, 0.05, 0.1, 0.1, 0.15, 0.15)
--Proj. damage: starts at 0.1, increases by 0.1 every 2 levels (0.1, 0.2, 0.2, 0.3, 0.3) - shotgun slugs start at 0.1 and increases by 0.05 every 2 levels (0.1, 0.15, 0.15, 0.2, 0.2)
--Proj. speed: starts at 0.1, increases by 0.05 every 2 levels (0.1, 0.15, 0.15, 0.2, 0.2) - shotgun slugs start at 0.05 and increases by 0.05 every 2 levels
--Laser shooting: Vanilla, unchanged
--Braking force: Vanilla, unchanged
--Stronger explosives: Vanilla, unchanged

--This covers which science packs/trees have which bonuses:
-- Post-transition path:
  -- Research productivity
  -- Mining productivity
  -- Robot cargo capacity
  -- Laser shooting speed
  -- Laser damage
  -- Projectile damage

-- Reactive non-metal path:
  -- Research speed
  -- Stronger explosives
  -- Robot speed
  -- Projectile speed
  -- Braking force
  -- Beacon distribution
  -- Refined flammables
  -- Stronger explosives

-- Both paths:
  -- Robot battery capacity

data:extend({
--MARK:Lab Prod
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

--MARK:Lab speed
{
    type = "technology",
    name = "pm-research-speed-7",
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      {
        type = "laboratory-speed",
        modifier = 0.6 -- +2
      }
    },
    prerequisites = {"research-speed-6", "pm-alkaline-earth-metal-pack-unlock"},
    upgrade = true,
    unit =
    {
      count = 1250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 120
    },
},
{
  type = "technology",
  name = "pm-research-speed-8",
  icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
  effects =
  {
    {
      type = "laboratory-speed",
      modifier = 0.8
    }
  },
  prerequisites = {"pm-research-speed-7"},
  upgrade = true,
  unit =
  {
    count = 1500,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"chemical-science-pack", 1},
      {"pm-alkali-metal-science-pack", 1},
      {"pm-alkaline-earth-metal-science-pack", 1}
    },
    time = 120
  },
},


--MARK: Robot battery
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
    upgrade = true,
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
      PM.modify("worker-robot-battery", 0.15)
    },
    prerequisites = {"worker-robots-speed-2", "worker-robots-storage-2", "pm-robot-battery-capacity-1", "pm-post-transition-metal-pack-unlock"},
    upgrade = true,
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
    icon = "__periodic-madness__/graphics/technology/robot-battery-1.png",
    effects =
    {
      PM.modify("worker-robot-battery", 0.2)
    },
    prerequisites = {"worker-robots-speed-3", "worker-robots-storage-2", "pm-robot-battery-capacity-2"},
    upgrade = true,
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
      PM.modify("worker-robot-battery", 0.3)
    },
    prerequisites = {"worker-robots-speed-4", "worker-robots-storage-2", "pm-robot-battery-capacity-3"},
    upgrade = true,
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
    name = "pm-robot-battery-capacity-5",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-2.png",
    effects =
    {
      PM.modify("worker-robot-battery", 0.4)
    },
    prerequisites = {"worker-robots-speed-4", "worker-robots-storage-3", "pm-robot-battery-capacity-4"},
    upgrade = true,
    unit =
    {
      count = 850,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1}
      },
      time = 80
    }
  },
  {
    type = "technology",
    name = "pm-robot-battery-capacity-6",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-2.png",
    effects =
    {
      PM.modify("worker-robot-battery", 0.5)
    },
    prerequisites = {"worker-robots-speed-5", "worker-robots-storage-3", "pm-robot-battery-capacity-5"},
    upgrade = true,
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-robot-battery-capacity-7",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-3.png",
    effects =
    {
      PM.modify("worker-robot-battery", 0.65)
    },
    prerequisites = {"worker-robots-speed-6", "worker-robots-storage-3", "pm-robot-battery-capacity-6", "pm-alkaline-earth-metal-pack-unlock"},
    upgrade = true,
    unit =
    {
      count = 1350,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-robot-battery-capacity-8",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-3.png",
    effects =
    {
      PM.modify("worker-robot-battery", 0.8)
    },
    prerequisites = {"worker-robots-speed-6", "worker-robots-storage-3", "pm-robot-battery-capacity-7"},
    upgrade = true,
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 120
    }
  },

--MARK: Robot speed
{
  type = "technology",
  name = "pm-worker-robots-speed-7",
  icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
  effects =
  {
    {
      type = "worker-robot-speed",
      modifier = 0.35
    }
  },
  prerequisites = {"worker-robots-speed-6"},
  unit =
  {
    count = 1000,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"chemical-science-pack", 1},
      {"pm-alkali-metal-science-pack", 1},
      {"pm-alkaline-earth-metal-science-pack", 1}
    },
    time = 120
  },
  upgrade = true
},


--MARK: Mining prod
{
  type = "technology",
  name = "mining-productivity-5",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
  effects =
  {
    {
      type = "mining-drill-productivity-bonus",
      modifier = 0.2
    }
  },
  prerequisites = {"mining-productivity-4", "pm-metalloid-pack-unlock"},
  unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 120
    },
  upgrade = true
},
{
  type = "technology",
  name = "mining-productivity-6",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
  effects =
  {
    {
      type = "mining-drill-productivity-bonus",
      modifier = 0.2
    }
  },
  prerequisites = {"mining-productivity-5"},
  unit =
    {
      count = 1850,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 120
    },
  upgrade = true
},

--MARK: Beacon distribution
{
  type = "technology",
  name = "pm-stronger-beacon-distribution-1",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/effect-transmission.png"),
  effects = 
  {
    PM.modify("beacon-distribution", 0.05)
  },
  prerequisites = {"effect-transmission"},
  unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1}
      },
      time = 80
    }
},
{
  type = "technology",
  name = "pm-stronger-beacon-distribution-2",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/effect-transmission.png"),
  effects = 
  {
    PM.modify("beacon-distribution", 0.05)
  },
  prerequisites = {"pm-stronger-beacon-distribution-1"},
  unit =
    {
      count = 900,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1}
      },
      time = 80
    }
},
{
  type = "technology",
  name = "pm-stronger-beacon-distribution-3",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/effect-transmission.png"),
  effects = 
  {
    PM.modify("beacon-distribution", 0.1)
  },
  prerequisites = {"pm-stronger-beacon-distribution-2", "pm-alkaline-earth-metal-pack-unlock"},
  unit =
    {
      count = 1200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 120
    }
},
{
  type = "technology",
  name = "pm-stronger-beacon-distribution-4",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/effect-transmission.png"),
  effects = 
  {
    PM.modify("beacon-distribution", 0.1)
  },
  prerequisites = {"pm-stronger-beacon-distribution-3"},
  unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
      },
      time = 120
    }
},

--MARK: Toolbelt
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
  }


})

--MARK: V.Robot speed

data.raw["technology"]["worker-robots-speed-1"].effects =
{
  PM.modify("worker-robot-speed", 0.20)
}
data.raw["technology"]["worker-robots-speed-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["worker-robots-speed-2"].effects =
{
  PM.modify("worker-robot-speed", 0.25)
}
data.raw["technology"]["worker-robots-speed-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["worker-robots-speed-3"].prerequisites = {"worker-robots-speed-2"}
data.raw["technology"]["worker-robots-speed-3"].effects =
{
  PM.modify("worker-robot-speed", 0.25)
}
data.raw["technology"]["worker-robots-speed-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["worker-robots-speed-4"].prerequisites = {"worker-robots-speed-3", "pm-alkali-metal-pack-unlock"}
data.raw["technology"]["worker-robots-speed-4"].effects =
{
  PM.modify("worker-robot-speed", 0.30)
}
data.raw["technology"]["worker-robots-speed-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["worker-robots-speed-5"].prerequisites = {"worker-robots-speed-4"}
data.raw["technology"]["worker-robots-speed-5"].effects =
{
  PM.modify("worker-robot-speed", 0.30)
}
data.raw["technology"]["worker-robots-speed-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["worker-robots-speed-5"].unit.count = 450
data.raw["technology"]["worker-robots-speed-6"].infinite = false
data.raw["technology"]["worker-robots-speed-6"].max_level = 6
data.raw["technology"]["worker-robots-speed-6"].unit.count_formula = "700"
data.raw["technology"]["worker-robots-speed-6"].unit.time = 120
data.raw["technology"]["worker-robots-speed-6"].effects =
{
  PM.modify("worker-robot-speed", 0.35)
}
data.raw["technology"]["worker-robots-speed-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
  {"pm-alkaline-earth-metal-science-pack", 1}
}
data.raw["technology"]["worker-robots-speed-6"].prerequisites = {"worker-robots-speed-5"}


--MARK: V.Robot storage
data.raw["technology"]["worker-robots-storage-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["worker-robots-storage-2"].prerequisites = {"worker-robots-storage-1", "pm-post-transition-metal-pack-unlock"}
data.raw["technology"]["worker-robots-storage-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["worker-robots-storage-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}

--MARK: V.Lab speed
data.raw["technology"]["research-speed-1"].effects =
{
    PM.modify("laboratory-speed", 0.125)
}
data.raw["technology"]["research-speed-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["research-speed-2"].effects =
{
    PM.modify("laboratory-speed", 0.125) -- +0.25
}
data.raw["technology"]["research-speed-3"].unit.time = 60
data.raw["technology"]["research-speed-3"].effects =
{
    PM.modify("laboratory-speed", 0.15)
}
data.raw["technology"]["research-speed-4"].unit.time = 60
data.raw["technology"]["research-speed-4"].effects =
{
    PM.modify("laboratory-speed", 0.2) -- +0.5
}
data.raw["technology"]["research-speed-5"].prerequisites = {"research-speed-4", "pm-alkali-metal-pack-unlock"}
data.raw["technology"]["research-speed-5"].effects =
{
    PM.modify("laboratory-speed", 0.25)
}
data.raw["technology"]["research-speed-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["research-speed-5"].effects =
{
    PM.modify("laboratory-speed", 0.3) -- +1
}
data.raw["technology"]["research-speed-5"].unit.time = 80
data.raw["technology"]["research-speed-5"].unit.count = 750
data.raw["technology"]["research-speed-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["research-speed-6"].prerequisites = {"research-speed-5"}
data.raw["technology"]["research-speed-6"].unit.count = 1000
data.raw["technology"]["research-speed-6"].unit.time = 80
data.raw["technology"]["research-speed-6"].effects =
{
    PM.modify("laboratory-speed", 0.4)
}

--MARK: V.Mining prod
data.raw["technology"]["mining-productivity-1"].effects =
{
  PM.modify("mining-drill-productivity-bonus", 0.05)
}
data.raw["technology"]["mining-productivity-1"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["mining-productivity-2"].effects =
{
  PM.modify("mining-drill-productivity-bonus", 0.05)
}
data.raw["technology"]["mining-productivity-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["mining-productivity-2"].prerequisites = {"mining-productivity-1"}
data.raw["technology"]["mining-productivity-3"].effects =
{
  PM.modify("mining-drill-productivity-bonus", 0.1)
}
data.raw["technology"]["mining-productivity-3"].unit.count = 800
data.raw["technology"]["mining-productivity-3"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["mining-productivity-3"].prerequisites = {"mining-productivity-2", "pm-post-transition-metal-pack-unlock"}
data.raw["technology"]["mining-productivity-4"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["mining-productivity-4"].max_level = 4
data.raw["technology"]["mining-productivity-4"].unit.time = 80
data.raw["technology"]["mining-productivity-4"].unit.count_formula = "1200"
data.raw["technology"]["mining-productivity-4"].prerequisites = {"mining-productivity-3"}
data.raw["technology"]["mining-productivity-4"].effects =
{
    PM.modify("mining-drill-productivity-bonus", 0.1)
}

--MARK: V.Shooting damage
data.raw["technology"]["physical-projectile-damage-1"].effects =
{
  {
    type = "ammo-damage",
    ammo_category = "bullet",
    modifier = 0.1
  },
  {
    type = "turret-attack",
    turret_id = "gun-turret",
    modifier = 0.1
  },
  {
    type = "ammo-damage",
    ammo_category = "shotgun-shell",
    modifier = 0.1
  },
}
data.raw["technology"]["physical-projectile-damage-2"].effects =
{
  {
    type = "ammo-damage",
    ammo_category = "bullet",
    modifier = 0.2
  },
  {
    type = "turret-attack",
    turret_id = "gun-turret",
    modifier = 0.2
  },
  {
    type = "ammo-damage",
    ammo_category = "shotgun-shell",
    modifier = 0.2
  },
}
data.raw["technology"]["physical-projectile-damage-3"].prerequisites = {"physical-projectile-damage-2"}
data.raw["technology"]["physical-projectile-damage-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["physical-projectile-damage-3"].effects =
{
  {
    type = "ammo-damage",
    ammo_category = "bullet",
    modifier = 0.2
  },
  {
    type = "turret-attack",
    turret_id = "gun-turret",
    modifier = 0.2
  },
  {
    type = "ammo-damage",
    ammo_category = "shotgun-shell",
    modifier = 0.2
  },
  {
    type = "ammo-damage",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.1
  },
}
data.raw["technology"]["physical-projectile-damage-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["physical-projectile-damage-4"].effects =
{
  {
    type = "ammo-damage",
    ammo_category = "bullet",
    modifier = 0.3
  },
  {
    type = "turret-attack",
    turret_id = "gun-turret",
    modifier = 0.3
  },
  {
    type = "ammo-damage",
    ammo_category = "shotgun-shell",
    modifier = 0.3
  },
  {
    type = "ammo-damage",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.1
  },
}
data.raw["technology"]["physical-projectile-damage-5"].prerequisites = {"physical-projectile-damage-4", "pm-post-transition-metal-pack-unlock"}
data.raw["technology"]["physical-projectile-damage-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["physical-projectile-damage-5"].effects =
{
  {
    type = "ammo-damage",
    ammo_category = "bullet",
    modifier = 0.3
  },
  {
    type = "turret-attack",
    turret_id = "gun-turret",
    modifier = 0.3
  },
  {
    type = "ammo-damage",
    ammo_category = "shotgun-shell",
    modifier = 0.3
  },
  {
    type = "ammo-damage",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.15
  },
}
data.raw["technology"]["physical-projectile-damage-6"].prerequisites = {"physical-projectile-damage-5"}
data.raw["technology"]["physical-projectile-damage-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["physical-projectile-damage-6"].effects =
{
  {
    type = "ammo-damage",
    ammo_category = "bullet",
    modifier = 0.4
  },
  {
    type = "turret-attack",
    turret_id = "gun-turret",
    modifier = 0.4
  },
  {
    type = "ammo-damage",
    ammo_category = "shotgun-shell",
    modifier = 0.4
  },
  {
    type = "ammo-damage",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.15
  },
}
data.raw["technology"]["physical-projectile-damage-7"].prerequisites = {"physical-projectile-damage-6", "pm-metalloid-pack-unlock"}
data.raw["technology"]["physical-projectile-damage-7"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["physical-projectile-damage-7"].effects =
{
  {
    type = "ammo-damage",
    ammo_category = "bullet",
    modifier = 0.4
  },
  {
    type = "turret-attack",
    turret_id = "gun-turret",
    modifier = 0.4
  },
  {
    type = "ammo-damage",
    ammo_category = "shotgun-shell",
    modifier = 0.4
  },
  {
    type = "ammo-damage",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.2
  },
}


--MARK:V.Shooting speed
data.raw["technology"]["weapon-shooting-speed-1"].effects = 
{
  {
    type = "gun-speed",
    ammo_category = "bullet",
    modifier = 0.1
  },
  {
    type = "gun-speed",
    ammo_category = "shotgun-shell",
    modifier = 0.1
  },
}
data.raw["technology"]["weapon-shooting-speed-2"].effects = 
{
  {
    type = "gun-speed",
    ammo_category = "bullet",
    modifier = 0.1
  },
  {
    type = "gun-speed",
    ammo_category = "shotgun-shell",
    modifier = 0.1
  },
}
data.raw["technology"]["weapon-shooting-speed-3"].prerequisites = {"weapon-shooting-speed-2"}
data.raw["technology"]["weapon-shooting-speed-3"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["weapon-shooting-speed-3"].effects = 
{
  {
    type = "gun-speed",
    ammo_category = "bullet",
    modifier = 0.15
  },
  {
    type = "gun-speed",
    ammo_category = "shotgun-shell",
    modifier = 0.15
  },
  {
    type = "gun-speed",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.05
  },
}
data.raw["technology"]["weapon-shooting-speed-4"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["weapon-shooting-speed-4"].effects = 
{
  {
    type = "gun-speed",
    ammo_category = "bullet",
    modifier = 0.15
  },
  {
    type = "gun-speed",
    ammo_category = "shotgun-shell",
    modifier = 0.15
  },
  {
    type = "gun-speed",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.1
  },
}
data.raw["technology"]["weapon-shooting-speed-5"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["weapon-shooting-speed-5"].effects = 
{
  {
    type = "gun-speed",
    ammo_category = "bullet",
    modifier = 0.2
  },
  {
    type = "gun-speed",
    ammo_category = "shotgun-shell",
    modifier = 0.2
  },
  {
    type = "gun-speed",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.1
  },
}
data.raw["technology"]["weapon-shooting-speed-6"].prerequisites = {"weapon-shooting-speed-5"}
data.raw["technology"]["weapon-shooting-speed-6"].unit.ingredients = 
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["weapon-shooting-speed-6"].effects = 
{
  {
    type = "gun-speed",
    ammo_category = "bullet",
    modifier = 0.2
  },
  {
    type = "gun-speed",
    ammo_category = "shotgun-shell",
    modifier = 0.2
  },
  {
    type = "gun-speed",
    ammo_category = "pm-shotgun-slug",
    modifier = 0.15
  },
}

--MARK: V.Laser shooting
data.raw["technology"]["laser-shooting-speed-1"].prerequisites = {"laser"}
data.raw["technology"]["laser-shooting-speed-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["laser-shooting-speed-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["laser-shooting-speed-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["laser-shooting-speed-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["laser-shooting-speed-5"].prerequisites = {"laser-shooting-speed-4"}
data.raw["technology"]["laser-shooting-speed-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["laser-weapons-damage-1"].prerequisites = {"laser"}
data.raw["technology"]["laser-weapons-damage-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["laser-weapons-damage-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["laser-weapons-damage-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["laser-weapons-damage-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["laser-weapons-damage-5"].prerequisites = {"laser-weapons-damage-4"}
data.raw["technology"]["laser-weapons-damage-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}

--MARK: V.Braking force
data.raw["technology"]["braking-force-1"].prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"}
data.raw["technology"]["braking-force-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["braking-force-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1}
}

--MARK: V.Stronger explosives
data.raw["technology"]["stronger-explosives-2"].prerequisites = {"stronger-explosives-1"}
data.raw["technology"]["stronger-explosives-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["stronger-explosives-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["stronger-explosives-4"].prerequisites = {"stronger-explosives-3"}
data.raw["technology"]["stronger-explosives-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["stronger-explosives-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["stronger-explosives-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}