
--MARK: Bonus amounts
-- this catalouges the scaluing for every single bonus technology in PM, just for other people to look at and so i cant forget

--Research productivity: starts at 0.05, increases after every 3 levels, doubles after every increase (0.05, 0.05, 0.05, 0.1, 0.1, 0.1, 0.2, 0.2)
--Research speed: starts at 0.1, doubles its current value every 2 levels. (0.1, 0.1, 0.2, 0.2, 0.4, 0.4, 0.8, 0.8, 1.6, 1.6)
--Robot storage: adds +1 every level (one per research tier)
--Robot speed: starts at 0.2, increases by 0.05 every 2 levels (0.2, 0.25, 0.25, 0.3, 0.3, 0.35, 0.35)
--Robot battery: starts at 0.1, increases by 0.05 every level and adds +0.05 every 3 levels (0.1, 0.15, 0.2, 0.3, 0.4, 0.5, 0.65, 0.8, 0.95, 1.1, 1.25)
--Mining productivity: starts at 0.05, increases after 2 levels, doubles after every increase (0.05, 0.05, 0.1, 0.1, 0.2, 0.2, 0.4, 0.4)
--Beacon distribution: starts at 0.05, adds 0.05 every level (0.05, 0.05, 0.1, 0.1, 0.15, 0.15)
--Proj. damage: starts at 0.1, increases by 0.1 every 2 levels (0.1, 0.2, 0.2, 0.3, 0.3) - shotgun slugs start at 0.1 and increases by 0.05 every 2 levels (0.1, 0.15, 0.15, 0.2, 0.2)
--Proj. speed: starts at 0.1, increases by 0.05 every 2 levels (0.1, 0.15, 0.15, 0.2, 0.2) - shotgun slugs start at 0.05 and increases by 0.05 every 2 levels
--Laser shooting: Vanilla, unchanged
--Braking force: Vanilla, unchanged
--Stronger explosives: starts at 0.2, increases by 0.05 every 2 levels (0.2, 0.25, 0.25, 0.3, 0.3) - any new type of weapon added starts at 0.2 and increases the same amount
--Refined flammables: starts at 0.15, increases by 0.05 every 2 levels (0.1, 0.15, 0.15, 0.2, 0.2) - flamethrowers start at 0.05 and increase by 0.05 every 2 levels

--This covers which science packs/trees have which bonuses:
-- Post-transition path:
  -- Research productivity
  -- Mining productivity
  -- Robot cargo capacity
  -- Laser shooting speed
  -- Laser damage
  -- Projectile damage
  -- Follower robot count
  -- Inserter bonus capacity

-- Reactive non-metal path:
  -- Research speed
  -- Stronger explosives
  -- Robot speed
  -- Projectile speed
  -- Braking force
  -- Beacon distribution
  -- Refined flammables
  -- Stronger explosives
  -- Requester chest storage

-- Both paths:
  -- Robot battery capacity
  -- belt stacking

PM.define_modifier("pm-requester-chest-inventory-size", {{icon = "__base__/graphics/icons/requester-chest.png", icon_size = 64}})
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
      PM.modify("laboratory-productivity", 0.05)
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
    name = "pm-research-productivity-5",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      PM.modify("laboratory-productivity", 0.1)
    },
    prerequisites = {"pm-research-productivity-3", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"},
    unit =
    {
      count = 1250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
      },
      time = 120
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-research-productivity-6",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      PM.modify("laboratory-productivity", 0.1)
    },
    prerequisites = {"pm-research-productivity-5"},
    unit =
    {
      count = 1550,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
      },
      time = 120
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-research-productivity-7",
    icons = util.technology_icon_constant_productivity("__base__/graphics/technology/research-speed.png"),
    effects =
    {
      PM.modify("laboratory-productivity", 0.15)
    },
    prerequisites = {"pm-research-productivity-6", "pm-noble-gas-pack-unlock"},
    unit =
    {
      count = 2250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
      },
      time = 160
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
        modifier = 0.6
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
{
  type = "technology",
  name = "pm-research-speed-9",
  icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
  effects =
  {
    {
      type = "laboratory-speed",
      modifier = 0.8
    }
  },
  prerequisites = {"pm-research-speed-8", "pm-noble-gas-pack-unlock"},
  upgrade = true,
  unit =
  {
    count = 2000,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"chemical-science-pack", 1},
      {"pm-post-transition-metal-science-pack", 1},
      {"pm-alkali-metal-science-pack", 1},
      {"pm-metalloid-science-pack", 1},
      {"pm-alkaline-earth-metal-science-pack", 1},
      {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
      {"pm-noble-gas-science-pack", 1}
    },
    time = 160
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
    prerequisites = {"worker-robots-speed-6", "pm-worker-robots-storage-4", "pm-robot-battery-capacity-6", "pm-alkaline-earth-metal-pack-unlock", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"},
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
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
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
    prerequisites = {"worker-robots-speed-6", "pm-worker-robots-storage-4", "pm-robot-battery-capacity-7"},
    upgrade = true,
    unit =
    {
      count = 1800,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-robot-battery-capacity-9",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/robot-battery-4.png",
    effects =
    {
      PM.modify("worker-robot-battery", 0.9)
    },
    prerequisites = {"pm-worker-robots-speed-9", "pm-worker-robots-storage-5", "pm-robot-battery-capacity-8"},
    upgrade = true,
    unit =
    {
      count = 2250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
      },
      time = 160
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
      modifier = 0.40 --220%
    }
  },
  prerequisites = {"worker-robots-speed-6", "pm-alkaline-earth-metal-pack-unlock"},
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
{
  type = "technology",
  name = "pm-worker-robots-speed-8",
  icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
  effects =
  {
    {
      type = "worker-robot-speed",
      modifier = 0.40 --260%
    }
  },
  prerequisites = {"pm-worker-robots-speed-7"},
  unit =
  {
    count = 1300,
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
{
  type = "technology",
  name = "pm-worker-robots-speed-9",
  icons = util.technology_icon_constant_movement_speed("__base__/graphics/technology/worker-robots-speed.png"),
  effects =
  {
    {
      type = "worker-robot-speed",
      modifier = 0.60 --320%
    }
  },
  prerequisites = {"pm-worker-robots-speed-8", "pm-noble-gas-pack-unlock"},
  unit =
  {
    count = 1800,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"chemical-science-pack", 1},
      {"pm-alkali-metal-science-pack", 1},
      {"pm-alkaline-earth-metal-science-pack", 1},
      {"pm-noble-gas-science-pack", 1}
    },
    time = 160
  },
  upgrade = true
},

--MARK: Robot storage
{
  type = "technology",
  name = "pm-worker-robots-storage-4",
  icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
  effects =
  {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"worker-robots-storage-3", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"},
  unit =
  {
    count = 600,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"pm-post-transition-metal-science-pack", 1},
      {"pm-metalloid-science-pack", 1},
      {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
    },
    time = 80
  },
  upgrade = true
},
{
  type = "technology",
  name = "pm-worker-robots-storage-5",
  icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
  effects =
  {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"pm-worker-robots-storage-4", "pm-noble-gas-pack-unlock"},
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
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
    },
    time = 160
  },
  upgrade = true
},


--MARK: Mining prod
{
  type = "technology",
  name = "pm-mining-productivity-5",
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
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 120
    },
  upgrade = true
},
{
  type = "technology",
  name = "pm-mining-productivity-6",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
  effects =
  {
    {
      type = "mining-drill-productivity-bonus",
      modifier = 0.2
    }
  },
  prerequisites = {"pm-mining-productivity-5"},
  unit =
    {
      count = 1850,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 120
    },
  upgrade = true
},
{
  type = "technology",
  name = "pm-mining-productivity-7",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
  effects =
  {
    {
      type = "mining-drill-productivity-bonus",
      modifier = 0.4
    }
  },
  prerequisites = {"pm-mining-productivity-6", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"},
  unit =
    {
      count = 2300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
      },
      time = 160
    },
  upgrade = true
},
{
  type = "technology",
  name = "pm-mining-productivity-8",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
  effects =
  {
    {
      type = "mining-drill-productivity-bonus",
      modifier = 0.4
    }
  },
  prerequisites = {"pm-mining-productivity-7"},
  unit =
    {
      count = 2750,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
      },
      time = 160
    },
  upgrade = true
},
{
  type = "technology",
  name = "pm-mining-productivity-9",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
  effects =
  {
    {
      type = "mining-drill-productivity-bonus",
      modifier = 0.5
    }
  },
  prerequisites = {"pm-mining-productivity-8", "pm-noble-gas-pack-unlock"},
  unit =
    {
      count = 3500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
      },
      time = 160
    },
  upgrade = true
},
{
  type = "technology",
  name = "pm-mining-productivity-10",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/mining-productivity.png"),
  effects =
  {
    {
      type = "mining-drill-productivity-bonus",
      modifier = 0.2
    }
  },
  max_level = "infinite",
  upgrade = true,
  prerequisites = {"pm-mining-productivity-9", "space-science-pack"},
  unit =
    {
      count_formula = "3500 * (1.1^(L - 10))",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 160
    },
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
{
  type = "technology",
  name = "pm-stronger-beacon-distribution-5",
  icons = util.technology_icon_constant_productivity("__base__/graphics/technology/effect-transmission.png"),
  effects = 
  {
    PM.modify("beacon-distribution", 0.125)
  },
  prerequisites = {"pm-stronger-beacon-distribution-4", "pm-noble-gas-pack-unlock"},
  unit =
    {
      count = 2000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
      },
      time = 160
    }
},

--MARK: Shooting damage
{
  type = "technology",
  name = "pm-physical-projectile-damage-8",
  icons = util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-2.png"),
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.50
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.50
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.50
    },
    {
      type = "ammo-damage",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.2
    },
  },
  prerequisites = {"physical-projectile-damage-7"},
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
  name = "pm-physical-projectile-damage-9",
  icons = util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-2.png"),
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.50
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.50
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.50
    },
    {
      type = "ammo-damage",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.25
    },
  },
  prerequisites = {"pm-physical-projectile-damage-8", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"},
  unit =
  {
    count = 1200,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"pm-post-transition-metal-science-pack", 1},
      {"pm-metalloid-science-pack", 1},
      {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
    },
    time = 120
  },
  upgrade = true
},
{
  type = "technology",
  name = "pm-physical-projectile-damage-10",
  icons = util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-2.png"),
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.6
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.6
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.6
    },
    {
      type = "ammo-damage",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.25
    },
  },
  prerequisites = {"pm-physical-projectile-damage-9"},
  unit =
  {
    count = 1600,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"pm-post-transition-metal-science-pack", 1},
      {"pm-metalloid-science-pack", 1},
      {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
    },
    time = 120
  },
  upgrade = true
},
{
  type = "technology",
  name = "pm-physical-projectile-damage-11",
  icons = util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-2.png"),
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.75
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.75
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.75
    },
    {
      type = "ammo-damage",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.30
    },
  },
  prerequisites = {"pm-physical-projectile-damage-10", "pm-noble-gas-pack-unlock"},
  unit =
  {
    count = 2000,
    ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
    },
    time = 120
  },
  upgrade = true
},
{
  type = "technology",
  name = "pm-physical-projectile-damage-12",
  icons = util.technology_icon_constant_damage("__base__/graphics/technology/physical-projectile-damage-2.png"),
  effects =
  {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.25
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.25
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.25
    },
    {
      type = "ammo-damage",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.20
    },
  },
  prerequisites = {"pm-physical-projectile-damage-11", "space-science-pack"},
  max_level = "infinite",
  unit =
  {
    count_formula = "1.5^(L-11)*1000",
    ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
        {"space-science-pack", 1}
    },
    time = 160
  },
  upgrade = true
},

--MARK: Shooting speed
{
  type = "technology",
  name = "pm-weapon-shooting-speed-7",
  icons = util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-2.png"),
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "bullet",
      modifier = 0.25
    },
    {
      type = "gun-speed",
      ammo_category = "shotgun-shell",
      modifier = 0.25
    },
    {
      type = "gun-speed",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.15
    },
    {
      type = "gun-speed",
      ammo_category = "rocket",
      modifier = 0.25
    }
  },
  prerequisites = {"weapon-shooting-speed-6", "pm-alkali-metal-pack-unlock"},
  unit =
  {
    count = 850,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"chemical-science-pack", 1},
      {"pm-alkali-metal-science-pack", 1}
    },
    time = 80
  },
  upgrade = true
},
{
  type = "technology",
  name = "pm-weapon-shooting-speed-8",
  icons = util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-2.png"),
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "bullet",
      modifier = 0.25
    },
    {
      type = "gun-speed",
      ammo_category = "shotgun-shell",
      modifier = 0.25
    },
    {
      type = "gun-speed",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.2
    },
    {
      type = "gun-speed",
      ammo_category = "rocket",
      modifier = 0.3
    }
  },
  prerequisites = {"pm-weapon-shooting-speed-7"},
  unit =
  {
    count = 1000,
    ingredients =
    {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"pm-advanced-advanced-transition-metal-science-pack", 1},
      {"chemical-science-pack", 1},
      {"pm-alkali-metal-science-pack", 1}
    },
    time = 80
  },
  upgrade = true
},
{
  type = "technology",
  name = "pm-weapon-shooting-speed-9",
  icons = util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-2.png"),
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "bullet",
      modifier = 0.3
    },
    {
      type = "gun-speed",
      ammo_category = "shotgun-shell",
      modifier = 0.3
    },
    {
      type = "gun-speed",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.2
    },
    {
      type = "gun-speed",
      ammo_category = "rocket",
      modifier = 0.3
    }
  },
  prerequisites = {"pm-weapon-shooting-speed-8", "pm-alkaline-earth-metal-pack-unlock"},
  unit =
  {
    count = 1150,
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
  upgrade = true
},
{
  type = "technology",
  name = "pm-weapon-shooting-speed-10",
  icons = util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-2.png"),
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "bullet",
      modifier = 0.3
    },
    {
      type = "gun-speed",
      ammo_category = "shotgun-shell",
      modifier = 0.3
    },
    {
      type = "gun-speed",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.2
    },
    {
      type = "gun-speed",
      ammo_category = "rocket",
      modifier = 0.35
    }
  },
  prerequisites = {"pm-weapon-shooting-speed-9"},
  unit =
  {
    count = 1300,
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
{
  type = "technology",
  name = "pm-weapon-shooting-speed-11",
  icons = util.technology_icon_constant_speed("__base__/graphics/technology/weapon-shooting-speed-2.png"),
  effects =
  {
    {
      type = "gun-speed",
      ammo_category = "bullet",
      modifier = 0.5
    },
    {
      type = "gun-speed",
      ammo_category = "shotgun-shell",
      modifier = 0.5
    },
    {
      type = "gun-speed",
      ammo_category = "pm-shotgun-slug",
      modifier = 0.25
    },
    {
      type = "gun-speed",
      ammo_category = "rocket",
      modifier = 0.45
    }
  },
  prerequisites = {"pm-weapon-shooting-speed-10", "pm-noble-gas-pack-unlock"},
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
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
    },
    time = 160
  },
  upgrade = true
},

--MARK: Laser damage
  {
    type = "technology",
    name = "pm-laser-weapons-damage-8",
    icons = util.technology_icon_constant_damage("__base__/graphics/technology/laser-weapons-damage.png"),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.25
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.2
      }
    },
    prerequisites = {"laser-weapons-damage-7", "pm-noble-gas-pack-unlock"},
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
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
      },
      time = 60
    },
  },
  {
    type = "technology",
    name = "pm-laser-weapons-damage-9",
    icons = util.technology_icon_constant_damage("__base__/graphics/technology/laser-weapons-damage.png"),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.25
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.2
      }
    },
    prerequisites = {"pm-laser-weapons-damage-8", "space-science-pack"},
    max_level = "infinite",
    unit =
    {
      count_formula = "1.5^(L-9)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 160
    },
  },

--MARK: Laser shooting speed
  {
    type = "technology",
    name = "pm-laser-shooting-speed-8",
    icons = util.technology_icon_constant_speed("__base__/graphics/technology/laser-shooting-speed.png"),
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.8
      }
    },
    prerequisites = {"laser-shooting-speed-7", "pm-noble-gas-pack-unlock"},
    unit =
    {
      count = 1250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
      },
      time = 120
    },
    upgrade = true
  },

--MARK: Stronger explosives
{
  type = "technology",
  name = "pm-stronger-explosives-8",
  icons = util.technology_icon_constant_damage("__base__/graphics/technology/stronger-explosives-3.png"),
  effects =
  {
    PM.modify_ammo("ammo-damage", "grenade", 0.4),
    PM.modify_ammo("ammo-damage", "rocket", 0.5),
    PM.modify_ammo("ammo-damage", "landmine", 0.35)
  },
  prerequisites = {"stronger-explosives-7"},
  unit =
  {
    count = 100 * 8,
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
  {
  type = "technology",
  name = "pm-stronger-explosives-9",
  icons = util.technology_icon_constant_damage("__base__/graphics/technology/stronger-explosives-3.png"),
  effects =
  {
    PM.modify_ammo("ammo-damage", "grenade", 0.4),
    PM.modify_ammo("ammo-damage", "rocket", 0.6),
    PM.modify_ammo("ammo-damage", "landmine", 0.35)
  },
  prerequisites = {"pm-stronger-explosives-8"},
  unit =
  {
    count = 1200,
    ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1}
    },
    time = 120
  },
    upgrade = true
  },
  {
  type = "technology",
  name = "pm-stronger-explosives-10",
  icons = util.technology_icon_constant_damage("__base__/graphics/technology/stronger-explosives-3.png"),
  max_level = "infinite",
  effects =
  {
    PM.modify_ammo("ammo-damage", "grenade", 0.2),
    PM.modify_ammo("ammo-damage", "rocket", 0.25),
    PM.modify_ammo("ammo-damage", "landmine", 0.25)
  },
  prerequisites = {"pm-stronger-explosives-9", "space-science-pack"},
  unit =
  {
    count_formula = "1000 + ((L - 9) * 500)",
    ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
        {"space-science-pack", 1}
    },
    time = 180
  },
    upgrade = true
  },
--MARK: Inserter bonus capacity
  {
    type = "technology",
    name = "pm-inserter-capacity-bonus-8",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    effects =
    {
      {
        type = "bulk-inserter-capacity-bonus",
        modifier = 1 -- 9 total, 10 with inserter
      }
    },
    prerequisites = {"inserter-capacity-bonus-7"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
      },
      time = 120
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-inserter-capacity-bonus-9",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    effects =
    {
      {
        type = "bulk-inserter-capacity-bonus",
        modifier = 2 -- 11 total, 12 with inserter
      },
      {
        type = "inserter-stack-size-bonus",
        modifier = 1 --4 total, 5 with inserter
      },
    },
    prerequisites = {"pm-inserter-capacity-bonus-8", "pm-noble-gas-pack-unlock"},
    unit =
    {
      count = 1200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
      },
      time = 140
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-inserter-capacity-bonus-10",
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/inserter-capacity.png"),
    effects =
    {
      {
        type = "bulk-inserter-capacity-bonus",
        modifier = 2 -- 13 total, 14 with inserter
      },
    },
    prerequisites = {"pm-inserter-capacity-bonus-9", "pm-lanthanide-science-pack"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"pm-advanced-advanced-transition-metal-science-pack", 2},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
        {"pm-lanthanide-science-pack", 1}
      },
      time = 180
    },
    upgrade = true
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
  },

  --MARK: Productivity

  --MARK: Science prod
  {
    type = "technology",
    name = "pm-transition-metal-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/transition-metal-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("automation-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-FUCK-transition-metal-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data"},
    order = "a",
    unit =
    {
      count_formula = "1.25^L*1000",
      ingredients =
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-advanced-transition-metal-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/advanced-transition-metal-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("logistic-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-advanced-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-FUCK-advanced-transition-metal-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data"},
    order = "b",
    unit =
    {
      count_formula = "1.25^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-advanced-advanced-transition-metal-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/advanced-advanced-transition-metal-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("pm-advanced-advanced-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-advanced-advanced-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-FUCK-advanced-advanced-transition-metal-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data"},
    order = "c",
    unit =
    {
      count_formula = "1.25^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-reactive-non-metal-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/reactive-non-metal-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("chemical-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-reactive-non-metals-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-FUCK-reactive-non-metals-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data", "chemical-science-pack"},
    order = "d",
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-post-transition-metal-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/post-transition-metal-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("pm-post-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-post-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-FUCK-post-transition-metal-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data"},
    order = "e",
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-alkali-metal-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/alkali-metal-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("pm-alkali-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-alkali-metal-science-pack", 0.05),
      --PM.modify_recipe_productivity("pm-FUCK-alkali-metal-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data", "pm-alkali-metal-pack-unlock"},
    order = "f",
    unit =
    {
      count_formula = "1.5^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-metalloid-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/metalloid-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("pm-metalloid-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-metalloid-science-pack", 0.05),
      --PM.modify_recipe_productivity("pm-FUCK-metalloid-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data"},
    order = "g",
    unit =
    {
      count_formula = "1.75^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-alkaline-earth-metal-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/alkaline-earth-metal-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("pm-alkaline-earth-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-alkaline-earth-metal-science-pack", 0.05),
      --PM.modify_recipe_productivity("pm-FUCK-alkaline-earth-metal-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data", "pm-alkaline-earth-metal-pack-unlock"},
    order = "h",
    unit =
    {
      count_formula = "1.75^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
  {
    type = "technology",
    name = "pm-advanced-advanced-advanced-transition-metal-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/advanced-advanced-advanced-transition-metal-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("pm-tantalum-advanced-advanced-advanced-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-niobium-advanced-advanced-advanced-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-tantalum-advanced-advanced-advanced-transition-metal-science-pack", 0.05),
      PM.modify_recipe_productivity("pm-plastic-niobium-advanced-advanced-advanced-transition-metal-science-pack", 0.05),
      --PM.modify_recipe_productivity("pm-FUCK-advanced-advanced-advanced-transition-metal-science-pack", 0.02)
    },
    prerequisites = {"pm-experimental-research-data"},
    order = "i",
    unit =
    {
      count_formula = "1.75^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },
{
    type = "technology",
    name = "pm-noble-gas-science-pack-productivity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_productivity("__periodic-madness__/graphics/technology/noble-gas-productivity.png"),
    max_level = "infinite",
    effects =
    {
      PM.modify_recipe_productivity("pm-noble-gas-science-pack", 0.05),
    },
    prerequisites = {"pm-experimental-research-data", "pm-noble-gas-pack-unlock"},
    order = "j",
    unit =
    {
      count_formula = "2^L*1000",
      ingredients = 
      {
       {"pm-experimental-research-data", 1}
      },
      time = 120
    }
  },

--MARK: Requester chest size
  {
    type = "technology",
    name = "pm-requester-chest-inventory-bonus-capacity-1",
    icon_size = 256,
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/logistic-system.png"),
    effects =
    {
        PM.custom_modifier("pm-requester-chest-inventory-size", 1) -- 2 total
    },
    prerequisites = {"logistic-system"},
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
            {"pm-metalloid-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1},
        },
        time = 80
    },
  },
  {
    type = "technology",
    name = "pm-requester-chest-inventory-bonus-capacity-2",
    icon_size = 256,
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/logistic-system.png"),
    effects =
    {
        PM.custom_modifier("pm-requester-chest-inventory-size", 1) -- 3 total
    },
    prerequisites = {"pm-requester-chest-inventory-bonus-capacity-1", "pm-alkaline-earth-metal-pack-unlock"},
    unit =
    {
        count = 750,
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
    },
  },
  {
    type = "technology",
    name = "pm-requester-chest-inventory-bonus-capacity-3",
    icon_size = 256,
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/logistic-system.png"),
    effects =
    {
        PM.custom_modifier("pm-requester-chest-inventory-size", 2) -- 5 total
    },
    prerequisites = {"pm-requester-chest-inventory-bonus-capacity-2", "pm-noble-gas-pack-unlock"},
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
            {"pm-alkaline-earth-metal-science-pack", 1},
            {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-noble-gas-science-pack", 1}
        },
        time = 160
    },
  },
  {
    type = "technology",
    name = "pm-requester-chest-inventory-bonus-capacity-4",
    icon_size = 256,
    icons = util.technology_icon_constant_stack_size("__base__/graphics/technology/logistic-system.png"),
    effects =
    {
        PM.custom_modifier("pm-requester-chest-inventory-size", 4) --9 total
    },
    prerequisites = {"pm-requester-chest-inventory-bonus-capacity-3", "pm-lanthanide-science-pack"},
    unit =
    {
        count = 1500,
        ingredients =
        {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"pm-advanced-advanced-transition-metal-science-pack", 2},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1},
            {"pm-alkaline-earth-metal-science-pack", 1},
            {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-noble-gas-science-pack", 1},
            {"pm-lanthanide-science-pack", 1}
        },
        time = 220
    },
  },
--MARK: Artillery damage
  {
    type = "technology",
    name = "pm-artillery-damage-1",
    icon_size = 256,
    icons = util.technology_icon_constant_damage("__periodic-madness__/graphics/technology/artillery-damage.png"),
    effects = 
    {
        PM.modify_ammo("ammo-damage", "artillery-shell", 0.25)
    },
    prerequisites = {"artillery"},
    unit = 
    {
        count = 500,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1},
        },
        time = 80
    }
  },
  {
    type = "technology",
    name = "pm-artillery-damage-2",
    icon_size = 256,
    icons = util.technology_icon_constant_damage("__periodic-madness__/graphics/technology/artillery-damage.png"),
    effects = 
    {
        PM.modify_ammo("ammo-damage", "artillery-shell", 0.25)
    },
    prerequisites = {"pm-artillery-damage-1", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"},
    unit = 
    {
        count = 700,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1},
            {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
        },
        time = 120
    }
  },
  {
    type = "technology",
    name = "pm-artillery-damage-3",
    icon_size = 256,
    icons = util.technology_icon_constant_damage("__periodic-madness__/graphics/technology/artillery-damage.png"),
    effects = 
    {
        PM.modify_ammo("ammo-damage", "artillery-shell", 0.5)
    },
    prerequisites = {"pm-artillery-damage-2", "pm-noble-gas-pack-unlock"},
    unit = 
    {
        count = 900,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1},
            {"pm-alkaline-earth-metal-science-pack", 1},
            {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-noble-gas-science-pack", 1}
        },
        time = 160
    }
  },
  {
    type = "technology",
    name = "pm-artillery-damage-4",
    icon_size = 256,
    icons = util.technology_icon_constant_damage("__periodic-madness__/graphics/technology/artillery-damage.png"),
    effects = 
    {
        PM.modify_ammo("ammo-damage", "artillery-shell", 0.2)
    },
    prerequisites = {"pm-artillery-damage-3", "space-science-pack"},
    max_level = "infinite",
    unit = 
    {
        count_formula = "2^(L-3)*1000",
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"chemical-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1},
            {"pm-metalloid-science-pack", 1},
            {"pm-alkali-metal-science-pack", 1},
            {"pm-alkaline-earth-metal-science-pack", 1},
            {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-noble-gas-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 160
    }
  },

--MARK: Follower robot count
  {
    type = "technology",
    name = "pm-follower-robot-count-6",
    icons = util.technology_icon_constant_followers("__base__/graphics/technology/follower-robots.png"),
    effects =
    {
      {
        type = "maximum-following-robots-count",
        modifier = 25
      }
    },
    prerequisites = {"follower-robot-count-5", "pm-noble-gas-pack-unlock"},
    unit =
    {
      count = 800,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
      },
      time = 120
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-follower-robot-count-7",
    icons = util.technology_icon_constant_followers("__base__/graphics/technology/follower-robots.png"),
    effects =
    {
      {
        type = "maximum-following-robots-count",
        modifier = 10
      }
    },
    prerequisites = {"pm-follower-robot-count-6", "space-science-pack"},
    max_level = "infinite",
    unit =
    {
      count_formula = "1.5^(L-6)*500",
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 160
    },
    upgrade = true
  },

--MARK: Refined flammables
  {
    type = "technology",
    name = "pm-refined-flammables-8",
    icons = util.technology_icon_constant_damage("__base__/graphics/technology/refined-flammables.png"),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.35
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.25
      }
    },
    prerequisites = {"refined-flammables-7", "pm-noble-gas-pack-unlock"},
    unit =
    {
      count = 1300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
      },
      time = 120
    },
    upgrade = true
  },
  {
    type = "technology",
    name = "pm-refined-flammables-9",
    icons = util.technology_icon_constant_damage("__base__/graphics/technology/refined-flammables.png"),
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "flamethrower",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "flamethrower-turret",
        modifier = 0.1
      }
    },
    prerequisites = {"pm-refined-flammables-8", "space-science-pack"},
    max_level = "infinite",
    unit =
    {
      count_formula = "2^(L-8)*1000",
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1},
        {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-noble-gas-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 160
    },
    upgrade = true
  },
})

--MARK: V.Robot speed

data.raw["technology"]["worker-robots-speed-1"].effects =
{
  PM.modify("worker-robot-speed", 0.25) --25%
}
data.raw["technology"]["worker-robots-speed-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["worker-robots-speed-2"].effects =
{
  PM.modify("worker-robot-speed", 0.25) --50%
}
data.raw["technology"]["worker-robots-speed-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["worker-robots-speed-3"].prerequisites = {"worker-robots-speed-2", "chemical-science-pack"}
data.raw["technology"]["worker-robots-speed-3"].effects =
{
  PM.modify("worker-robot-speed", 0.30) --80%
}
data.raw["technology"]["worker-robots-speed-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["worker-robots-speed-4"].prerequisites = {"worker-robots-speed-3"}
data.raw["technology"]["worker-robots-speed-4"].effects =
{
  PM.modify("worker-robot-speed", 0.30) --110%
}
data.raw["technology"]["worker-robots-speed-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["worker-robots-speed-5"].prerequisites = {"worker-robots-speed-4", "pm-alkali-metal-pack-unlock"}
data.raw["technology"]["worker-robots-speed-5"].effects =
{
  PM.modify("worker-robot-speed", 0.35) --145%
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
data.raw["technology"]["worker-robots-speed-6"].max_level = 6
data.raw["technology"]["worker-robots-speed-6"].unit.count_formula = "700"
data.raw["technology"]["worker-robots-speed-6"].unit.time = 120
data.raw["technology"]["worker-robots-speed-6"].effects =
{
  PM.modify("worker-robot-speed", 0.35) --180%
}
data.raw["technology"]["worker-robots-speed-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
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
data.raw["technology"]["worker-robots-storage-3"].prerequisites = {"worker-robots-storage-2", "pm-metalloid-pack-unlock"}
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
    PM.modify("laboratory-speed", 0.1)
}
table.insert(data.raw["technology"]["research-speed-2"].prerequisites, "pm-advanced-advanced-transition-metal-pack-unlock")
data.raw["technology"]["research-speed-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["research-speed-2"].effects =
{
    PM.modify("laboratory-speed", 0.1)
}
data.raw["technology"]["research-speed-3"].unit.time = 60
data.raw["technology"]["research-speed-3"].effects =
{
    PM.modify("laboratory-speed", 0.2)
}
data.raw["technology"]["research-speed-4"].unit.time = 60
data.raw["technology"]["research-speed-4"].effects =
{
    PM.modify("laboratory-speed", 0.2)
}
data.raw["technology"]["research-speed-5"].prerequisites = {"research-speed-4", "pm-alkali-metal-pack-unlock"}
data.raw["technology"]["research-speed-5"].effects =
{
    PM.modify("laboratory-speed", 0.4)
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
    PM.modify("laboratory-speed", 0.4)
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
    PM.modify("laboratory-speed", 0.6)
}

--MARK: V.Mining prod
data.raw["technology"]["mining-productivity-1"].prerequisites = {"pm-advanced-advanced-transition-metal-pack-unlock"}
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
data.raw["technology"]["physical-projectile-damage-4"].prerequisites = {"physical-projectile-damage-3", "rocketry"}
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
data.raw["technology"]["physical-projectile-damage-5"].unit.count = 550
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
data.raw["technology"]["physical-projectile-damage-6"].unit.count = 700
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
data.raw["technology"]["physical-projectile-damage-7"].unit.count_formula = "850"
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
data.raw["technology"]["physical-projectile-damage-7"].max_level = 7

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
data.raw["technology"]["weapon-shooting-speed-4"].prerequisites = {"weapon-shooting-speed-3", "rocketry"}
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
  {
    type = "gun-speed",
    ammo_category = "rocket",
    modifier = 0.2
  }
}
data.raw["technology"]["weapon-shooting-speed-5"].unit.count = 550
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
  {
    type = "gun-speed",
    ammo_category = "rocket",
    modifier = 0.2
  }
}
data.raw["technology"]["weapon-shooting-speed-6"].unit.count = 700
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
  {
    type = "gun-speed",
    ammo_category = "rocket",
    modifier = 0.25
  }
}

--MARK: V.Laser shooting
data.raw["technology"]["laser-shooting-speed-1"].prerequisites = {"laser"}
data.raw["technology"]["laser-shooting-speed-1"].unit.count = 150
data.raw["technology"]["laser-shooting-speed-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
}
data.raw["technology"]["laser-shooting-speed-2"].unit.count = 300
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
data.raw["technology"]["laser-shooting-speed-4"].unit.count = 450
data.raw["technology"]["laser-shooting-speed-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["laser-shooting-speed-5"].unit.count = 600
data.raw["technology"]["laser-shooting-speed-5"].prerequisites = {"laser-shooting-speed-4"}
data.raw["technology"]["laser-shooting-speed-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["laser-shooting-speed-6"].unit.count = 750
data.raw["technology"]["laser-shooting-speed-6"].prerequisites = {"laser-shooting-speed-5", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"}
data.raw["technology"]["laser-shooting-speed-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1},
  {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["laser-shooting-speed-1"].unit.count = 1000
data.raw["technology"]["laser-shooting-speed-7"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1},
  {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["laser-shooting-speed-7"].prerequisites = {"laser-shooting-speed-6"}

--MARK:V.Laser damage
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
data.raw["technology"]["laser-weapons-damage-3"].effects = 
{
    {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.3
    },
    {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.2
    },
    {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.2
    }
}
data.raw["technology"]["laser-weapons-damage-6"].prerequisites = {"laser-weapons-damage-5", "pm-metalloid-pack-unlock"}
data.raw["technology"]["laser-weapons-damage-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["laser-weapons-damage-4"].effects = 
{
    {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.3
    },
    {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.2
    },
    {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.2
    }
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
data.raw["technology"]["laser-weapons-damage-5"].effects = 
{
    {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.4
    },
    {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.3
    },
    {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.3
    }
}
data.raw["technology"]["laser-weapons-damage-6"].prerequisites = {"laser-weapons-damage-5", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"}
data.raw["technology"]["laser-weapons-damage-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1},
  {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["laser-weapons-damage-6"].effects =
{
    {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.4
    },
    {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.3
    },
    {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.3
    }
}
data.raw["technology"]["laser-weapons-damage-7"].max_level = 7
data.raw["technology"]["laser-weapons-damage-7"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1},
  {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["laser-weapons-damage-7"].prerequisites = {"laser-weapons-damage-6"}
data.raw["technology"]["laser-weapons-damage-7"].effects =
{
    {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.5
    },
    {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.4
    },
    {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.4
    }
}

--MARK: V.Braking force
data.raw["technology"]["braking-force-1"].prerequisites = {"railway"}
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
data.raw["technology"]["stronger-explosives-1"].effects =
{
  PM.modify_ammo("ammo-damage", "grenade", 0.2)
}
data.raw["technology"]["stronger-explosives-2"].prerequisites = {"stronger-explosives-1", "rocketry"}
data.raw["technology"]["stronger-explosives-2"].icon = "__base__/graphics/technology/stronger-explosives-2.png"
data.raw["technology"]["stronger-explosives-2"].effects =
{
  PM.modify_ammo("ammo-damage", "grenade", 0.25),
  PM.modify_ammo("ammo-damage", "rocket", 0.25),
  PM.modify_ammo("ammo-damage", "landmine", 0.2)
}
data.raw["technology"]["stronger-explosives-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["stronger-explosives-3"].effects =
{
  PM.modify_ammo("ammo-damage", "grenade", 0.25),
  PM.modify_ammo("ammo-damage", "rocket", 0.25),
  PM.modify_ammo("ammo-damage", "landmine", 0.25)
}
data.raw["technology"]["stronger-explosives-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["stronger-explosives-4"].effects =
{
  PM.modify_ammo("ammo-damage", "grenade", 0.3),
  PM.modify_ammo("ammo-damage", "rocket", 0.3),
  PM.modify_ammo("ammo-damage", "landmine", 0.25)
}
data.raw["technology"]["stronger-explosives-4"].prerequisites = {"stronger-explosives-3"}
data.raw["technology"]["stronger-explosives-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["stronger-explosives-5"].effects =
{
  PM.modify_ammo("ammo-damage", "grenade", 0.3),
  PM.modify_ammo("ammo-damage", "rocket", 0.3),
  PM.modify_ammo("ammo-damage", "landmine", 0.3)
}
data.raw["technology"]["stronger-explosives-5"].unit.time = 80
data.raw["technology"]["stronger-explosives-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["stronger-explosives-6"].effects =
{
  PM.modify_ammo("ammo-damage", "grenade", 0.35),
  PM.modify_ammo("ammo-damage", "rocket", 0.4),
  PM.modify_ammo("ammo-damage", "landmine", 0.3)
}
data.raw["technology"]["stronger-explosives-6"].unit.time = 80
data.raw["technology"]["stronger-explosives-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1}
}
data.raw["technology"]["stronger-explosives-7"].effects =
{
  PM.modify_ammo("ammo-damage", "grenade", 0.35),
  PM.modify_ammo("ammo-damage", "rocket", 0.4),
  PM.modify_ammo("ammo-damage", "landmine", 0.35)
}
data.raw["technology"]["stronger-explosives-7"].max_level = 7
data.raw["technology"]["stronger-explosives-7"].unit.count_formula = "700"
data.raw["technology"]["stronger-explosives-7"].unit.time = 120
data.raw["technology"]["stronger-explosives-7"].prerequisites = {"stronger-explosives-6", "pm-alkaline-earth-metal-pack-unlock"}
data.raw["technology"]["stronger-explosives-7"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
  {"pm-alkaline-earth-metal-science-pack", 1}
}

--MARK: V.Refined flammables
data.raw["technology"]["refined-flammables-1"].unit.count = 150
data.raw["technology"]["refined-flammables-1"].effects =
{
  PM.modify_ammo("ammo-damage", "flamethrower", 0.15),
  PM.modify_turret("flamethrower-turret", 0.05),
}
data.raw["technology"]["refined-flammables-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["refined-flammables-2"].unit.count = 250
data.raw["technology"]["refined-flammables-2"].effects =
{
  PM.modify_ammo("ammo-damage", "flamethrower", 0.2),
  PM.modify_turret("flamethrower-turret", 0.1),
}
data.raw["technology"]["refined-flammables-2"].prerequisites = {"chemical-science-pack", "refined-flammables-1"}
data.raw["technology"]["refined-flammables-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["refined-flammables-3"].unit.count = 350
data.raw["technology"]["refined-flammables-3"].effects =
{
  PM.modify_ammo("ammo-damage", "flamethrower", 0.2),
  PM.modify_turret("flamethrower-turret", 0.1),
}
data.raw["technology"]["refined-flammables-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
}
data.raw["technology"]["refined-flammables-4"].unit.count = 500
data.raw["technology"]["refined-flammables-4"].effects =
{
  PM.modify_ammo("ammo-damage", "flamethrower", 0.25),
  PM.modify_turret("flamethrower-turret", 0.15),
}
data.raw["technology"]["refined-flammables-4"].prerequisites = {"refined-flammables-3", "pm-alkali-metal-pack-unlock"}
data.raw["technology"]["refined-flammables-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
}
data.raw["technology"]["refined-flammables-5"].unit.count = 650
data.raw["technology"]["refined-flammables-5"].effects =
{
  PM.modify_ammo("ammo-damage", "flamethrower", 0.25),
  PM.modify_turret("flamethrower-turret", 0.15),
}
data.raw["technology"]["refined-flammables-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
}
data.raw["technology"]["refined-flammables-6"].unit.count = 800
data.raw["technology"]["refined-flammables-6"].effects =
{
  PM.modify_ammo("ammo-damage", "flamethrower", 0.3),
  PM.modify_turret("flamethrower-turret", 0.2),
}
data.raw["technology"]["refined-flammables-6"].prerequisites = {"pm-alkaline-earth-metal-pack-unlock", "refined-flammables-5"}
data.raw["technology"]["refined-flammables-6"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
  {"pm-alkaline-earth-metal-science-pack", 1}
}
data.raw["technology"]["refined-flammables-7"].prerequisites = {"refined-flammables-6"}
data.raw["technology"]["refined-flammables-7"].unit.count_formula = "950"
data.raw["technology"]["refined-flammables-7"].effects =
{
  PM.modify_ammo("ammo-damage", "flamethrower", 0.3),
  PM.modify_turret("flamethrower-turret", 0.2),
}
data.raw["technology"]["refined-flammables-7"].max_level = 7
data.raw["technology"]["refined-flammables-7"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1},
  {"pm-alkali-metal-science-pack", 1},
  {"pm-alkaline-earth-metal-science-pack", 1}
}

--MARK: V.Inserter capacity
data.raw["technology"]["inserter-capacity-bonus-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["inserter-capacity-bonus-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
}
data.raw["technology"]["inserter-capacity-bonus-2"].effects =
{
    {
        type = "bulk-inserter-capacity-bonus",
        modifier = 1
    }
}
data.raw["technology"]["inserter-capacity-bonus-3"].prerequisites = {"inserter-capacity-bonus-2", "pm-post-transition-metal-pack-unlock"}
data.raw["technology"]["inserter-capacity-bonus-3"].unit =
{
  count = 350,
  ingredients = 
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"pm-advanced-advanced-transition-metal-science-pack", 1},
    {"pm-post-transition-metal-science-pack", 1}
  },
  time = 45
}

data.raw["technology"]["inserter-capacity-bonus-3"].effects =
{
    {
        type = "inserter-stack-size-bonus",
        modifier = 1
    },
    {
        type = "bulk-inserter-capacity-bonus",
        modifier = 1
    }
}
data.raw["technology"]["inserter-capacity-bonus-4"].prerequisites = {"inserter-capacity-bonus-3"}
data.raw["technology"]["inserter-capacity-bonus-4"].unit =
{
  count = 450,
  ingredients = 
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"pm-advanced-advanced-transition-metal-science-pack", 1},
    {"pm-post-transition-metal-science-pack", 1}
  },
  time = 60
}
data.raw["technology"]["inserter-capacity-bonus-4"].effects =
{
    {
        type = "bulk-inserter-capacity-bonus",
        modifier = 1
    }
}
data.raw["technology"]["inserter-capacity-bonus-5"].prerequisites = {"inserter-capacity-bonus-4", "pm-metalloid-pack-unlock"}
data.raw["technology"]["inserter-capacity-bonus-5"].unit =
{
  count = 500,
  ingredients = 
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"pm-advanced-advanced-transition-metal-science-pack", 1},
    {"pm-post-transition-metal-science-pack", 1},
    {"pm-metalloid-science-pack", 1}
  },
  time = 60
}
data.raw["technology"]["inserter-capacity-bonus-5"].effects =
{
    {
        type = "inserter-stack-size-bonus",
        modifier = 1
    },
    {
        type = "bulk-inserter-capacity-bonus",
        modifier = 1
    },
}
data.raw["technology"]["inserter-capacity-bonus-6"].unit =
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
  time = 80
}
data.raw["technology"]["inserter-capacity-bonus-6"].effects =
{
    {
        type = "bulk-inserter-capacity-bonus",
        modifier = 1
    }
}
data.raw["technology"]["inserter-capacity-bonus-7"].prerequisites = {"inserter-capacity-bonus-6", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"}
data.raw["technology"]["inserter-capacity-bonus-7"].unit =
{
  count = 800,
  ingredients = 
  {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"pm-advanced-advanced-transition-metal-science-pack", 1},
    {"pm-post-transition-metal-science-pack", 1},
    {"pm-metalloid-science-pack", 1},
    {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
  },
  time = 80
}
data.raw["technology"]["inserter-capacity-bonus-7"].effects =
{
    {
        type = "inserter-stack-size-bonus",
        modifier = 1 --3 total
    },
    {
        type = "bulk-inserter-capacity-bonus",
        modifier = 1 --8 total
    },
}

--MARK: V.Follower robot couont
data.raw["technology"]["follower-robot-count-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-2"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-3"].prerequisites = {"follower-robot-count-2", "pm-post-transition-metal-pack-unlock"}
data.raw["technology"]["follower-robot-count-3"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-3"].effects =
{
    {
        type = "maximum-following-robots-count",
        modifier = 10
    },
    {
        type = "follower-robot-lifetime",
        modifier = 0.25
    }
}
data.raw["technology"]["follower-robot-count-4"].prerequisites = {"follower-robot-count-3", "pm-metalloid-pack-unlock"}
data.raw["technology"]["follower-robot-count-4"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-4"].effects =
{
    {
        type = "maximum-following-robots-count",
        modifier = 15
    }
}
data.raw["technology"]["follower-robot-count-5"].prerequisites = {"follower-robot-count-4", "pm-advanced-advanced-advanced-transition-metal-pack-unlock"}
data.raw["technology"]["follower-robot-count-5"].max_level = 5
data.raw["technology"]["follower-robot-count-5"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"pm-metalloid-science-pack", 1},
  {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1}
}
data.raw["technology"]["follower-robot-count-5"].effects =
{
    {
        type = "maximum-following-robots-count",
        modifier = 15
    },
    {
        type = "follower-robot-lifetime",
        modifier = 0.25
    }
}

--MARK: V. Artillery speed
data.raw["technology"]["artillery-shell-speed-1"].unit.time = 160
data.raw["technology"]["artillery-shell-speed-1"].unit.ingredients =
{
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"pm-advanced-advanced-transition-metal-science-pack", 1},
    {"chemical-science-pack", 1},
    {"pm-post-transition-metal-science-pack", 1},
    {"pm-metalloid-science-pack", 1},
    {"pm-alkali-metal-science-pack", 1},
    {"pm-alkaline-earth-metal-science-pack", 1},
    {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
    {"pm-noble-gas-science-pack", 1},
    {"space-science-pack", 1}
}

--MARK: V. Artillery range
data.raw["technology"]["artillery-shell-range-1"].unit.time = 160
data.raw["technology"]["artillery-shell-range-1"].unit.ingredients =
{
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"pm-advanced-advanced-transition-metal-science-pack", 1},
    {"chemical-science-pack", 1},
    {"pm-post-transition-metal-science-pack", 1},
    {"pm-metalloid-science-pack", 1},
    {"pm-alkali-metal-science-pack", 1},
    {"pm-alkaline-earth-metal-science-pack", 1},
    {"pm-advanced-advanced-advanced-transition-metal-science-pack", 1},
    {"pm-noble-gas-science-pack", 1},
    {"space-science-pack", 1}
}