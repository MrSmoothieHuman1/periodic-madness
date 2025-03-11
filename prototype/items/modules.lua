local PM = require("library")
local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    --MARK: Categories

    {
        type = "module-category",
        name = "pm-heating-coils",
        hidden = true,
        hidden_in_factoriopedia = true,
    },

    --MARK: Normal modules
    {
        type = "module",
        name = "pm-speed-module-4",
        localised_description = {"item-description.speed-module"},
        icon = "__periodic-madness__/graphics/icons/speed-module-4.png",
        icon_size = 128,
        subgroup = "pm-speed",
        category = "speed",
        tier = 4,
        order = "d",
        stack_size = 50,
        effect = { speed = 0.7, consumption = 0.9 },
        inventory_move_sound = item_sounds.module_inventory_move,
        pick_sound = item_sounds.module_inventory_pickup,
        drop_sound = item_sounds.module_inventory_move,
        beacon_tint =
        {
          primary = { r = 0.441, g = 0.514, b = 1.000, a = 1.000 },     -- #70b6ffff
          secondary = { r = 0.388, g = 0.766, b = 1.000, a = 1.000 },   -- #63f8ffff
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false,
        pictures =
        {
          layers =
          {
            {
              size = 128,
              filename = "__periodic-madness__/graphics/icons/speed-module-4.png",
              scale = 0.25,
            },
            {
              draw_as_light = true,
              flags = { "light" },
              size = 128,
              filename = "__periodic-madness__/graphics/light/speed-module-4-glow.png",
              scale = 0.25,
            }
          }
        },
      } --[[@as data.ModulePrototype]],
      {
        type = "module",
        name = "pm-efficiency-module-4",
        localised_description = { "item-description.effectivity-module" },
        icon = "__periodic-madness__/graphics/icons/effectivity-module-4.png",
        icon_size = 128,
        subgroup = "pm-efficiency",
        category = "efficiency",
        tier = 4,
        order = "d",
        stack_size = 50,
        effect = { consumption = -0.6, speed = 0.25},
        inventory_move_sound = item_sounds.module_inventory_move,
        pick_sound = item_sounds.module_inventory_pickup,
        drop_sound = item_sounds.module_inventory_move,
        beacon_tint =
        {
          primary = { 0, 1, 0 },
          secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 },   -- #5eff5eff
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false,
        pictures =
        {
          layers =
          {
            {
              size = 128,
              filename = "__periodic-madness__/graphics/icons/effectivity-module-4.png",
              scale = 0.25,
            },
            {
              draw_as_light = true,
              flags = { "light" },
              size = 128,
              filename = "__periodic-madness__/graphics/light/effectivity-module-4-glow.png",
              scale = 0.25,
            }
          }
        },
      } --[[@as data.ModulePrototype]],
      {
        type = "module",
        name = "pm-productivity-module-4",
        localised_description = { "item-description.productivity-module" },
        icon = "__periodic-madness__/graphics/icons/productivity-module-4.png",
        icon_size = 128,
        subgroup = "pm-productivity",
        category = "productivity",
        tier = 4,
        order = "d",
        stack_size = 50,
        inventory_move_sound = item_sounds.module_inventory_move,
        pick_sound = item_sounds.module_inventory_pickup,
        drop_sound = item_sounds.module_inventory_move,
        effect =
        {
          productivity = 0.14,
          consumption = 0.75,
          pollution = 0.20,
          speed = -0.25
        },
        pictures =
        {
          layers =
          {
            {
              size = 128,
              filename = "__periodic-madness__/graphics/icons/productivity-module-4.png",
              scale = 0.25,
            },
            {
              draw_as_light = true,
              flags = { "light" },
              size = 128,
              filename = "__periodic-madness__/graphics/light/productivity-module-4-glow.png",
              scale = 0.25,
            }
          }
        },
    } --[[@as data.ModulePrototype]],

    --MARK: Special modules
    {
        type = "module",
        name = "pm-copper-heating-coil",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/modules/copper-heating-coil.png",
        tier = 1,
        category = "pm-heating-coils",
        subgroup = "pm-productivity",
        order = "x",
        stack_size = 25,
        inventory_move_sound = item_sounds.metal_small_inventory_move,
        pick_sound = item_sounds.metal_small_inventory_pickup,
        drop_sound = item_sounds.metal_small_inventory_move,
        effect =
        {
            speed = 0.2,
            consumption = 0.2,
            pollution = 0,
        }
    }, --basic coil module, should be a alright starter
})

--#MARK: Vanilla modules
data.raw["module"]["productivity-module"].effect =
{
  productivity = 0.04,
  consumption = 0.4,
  pollution = 0.10,
  speed = -0.1
}
data.raw["module"]["productivity-module-2"].effect =
{
  productivity = 0.06,
  consumption =  0.5,
  pollution = 0.12,
  speed =-0.15
}
data.raw["module"]["productivity-module-3"].effect =
{
  productivity = 0.1,
  consumption = 0.6,
  pollution = 0.16,
  speed = -0.20
}
data.raw["module"]["efficiency-module"].effect =
{
  consumption = -0.3,
  speed = 0.05
}
data.raw["module"]["efficiency-module-2"].effect =
{
  consumption = -0.4,
  speed = 0.1
}
data.raw["module"]["efficiency-module-3"].effect =
{
  consumption = -0.5,
  speed = 0.15
}
data.raw["module"]["speed-module"].subgroup = "pm-speed"
data.raw["module"]["speed-module"].order = "a"
data.raw["module"]["speed-module-2"].subgroup = "pm-speed"
data.raw["module"]["speed-module-2"].order = "b"
data.raw["module"]["speed-module-3"].subgroup = "pm-speed"
data.raw["module"]["speed-module-3"].order = "c"

data.raw["module"]["efficiency-module"].subgroup = "pm-efficiency"
data.raw["module"]["efficiency-module"].order = "a"
data.raw["module"]["efficiency-module-2"].subgroup = "pm-efficiency"
data.raw["module"]["efficiency-module-2"].order = "b"
data.raw["module"]["efficiency-module-3"].subgroup = "pm-efficiency"
data.raw["module"]["efficiency-module-3"].order = "c"

data.raw["module"]["productivity-module"].subgroup = "pm-productivity"
data.raw["module"]["productivity-module"].order = "a"
data.raw["module"]["productivity-module-2"].subgroup = "pm-productivity"
data.raw["module"]["productivity-module-2"].order = "b"
data.raw["module"]["productivity-module-3"].subgroup = "pm-productivity"
data.raw["module"]["productivity-module-3"].order = "c"

local smodule1 = data.raw["module"]["speed-module"]
smodule1.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/speed-module-1.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/speed-module-1-glow.png",
      scale = 0.25,
    }
  }
}
local smodule2 = data.raw["module"]["speed-module-2"]
smodule2.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/speed-module-2.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/speed-module-2-glow.png",
      scale = 0.25,
    }
  }
}
local smodule3 = data.raw["module"]["speed-module-3"]
smodule3.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/speed-module-3.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/speed-module-3-glow.png",
      scale = 0.25,
    }
  }
}

local emodule1 = data.raw["module"]["efficiency-module"]
emodule1.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/effectivity-module-1.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/effectivity-module-1-glow.png",
      scale = 0.25,
    }
  }
}
local emodule2 = data.raw["module"]["efficiency-module-2"]
emodule2.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/effectivity-module-2.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/effectivity-module-2-glow.png",
      scale = 0.25,
    }
  }
}
local emodule3 = data.raw["module"]["efficiency-module-3"]
emodule3.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/effectivity-module-3.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/effectivity-module-3-glow.png",
      scale = 0.25,
    }
  }
}

local pmodule1 = data.raw["module"]["productivity-module"]
pmodule1.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/productivity-module-1.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/productivity-module-1-glow.png",
      scale = 0.25,
    }
  }
}
local pmodule2 = data.raw["module"]["productivity-module-2"]
pmodule2.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/productivity-module-2.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/productivity-module-2-glow.png",
      scale = 0.25,
    }
  }
}
local pmodule3 = data.raw["module"]["productivity-module-3"]
pmodule3.pictures = {
  layers =
  {
    {
      size = 128,
      filename = "__periodic-madness__/graphics/icons/productivity-module-3.png",
      scale = 0.25,
    },
    {
      draw_as_light = true,
      flags = { "light" },
      size = 128,
      filename = "__periodic-madness__/graphics/light/productivity-module-3-glow.png",
      scale = 0.25,
    }
  }
}