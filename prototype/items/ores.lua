--ores.

data:extend({

  {
    type = "item",
    name = "pm-transition-metals-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/transition-metals-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/transition-metals-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/transition-metals-icon-1.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/transition-metals-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/transition-metals-icon-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-tm-tm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-bitumen",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bitumen.png",
    subgroup = "pm-oil",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-post-transition-metals-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/post-transition-metals-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/post-transition-metals-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/post-transition-metals-icon-1.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/post-transition-metals-icon-2.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/post-transition-metals-icon-3.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-ptm-ptm",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-alkali-metals-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/alkali-metals-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/alkali-metals-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/alkali-metals-icon-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-am-am",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-metalloid-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/metalloid-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/metalloid-ore-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/metalloid-ore-icon-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-mt-mt",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-alkaline-earth-metals-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/alkaline-earth-metal-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/alkaline-earth-metal-icon.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/ores/alkaline-earth-metal-icon-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-aem-aem",
    order = "a",
    stack_size = 200
  },
})

data.raw["item"]["iron-ore"].stack_size = 200
data.raw["item"]["iron-ore"].subgroup = "pm-iron-tm"
data.raw["item"]["iron-ore"].order = "b"
data.raw["item"]["copper-ore"].stack_size = 200
data.raw["item"]["copper-ore"].subgroup = "pm-copper-tm"
data.raw["item"]["copper-ore"].order = "b"
data.raw["item"]["coal"].stack_size = 200
data.raw["item"]["stone"].stack_size = 200
data.raw["item"]["uranium-ore"].stack_size = 200

--hello hello, i can get my microphone if you want but i dont mind
