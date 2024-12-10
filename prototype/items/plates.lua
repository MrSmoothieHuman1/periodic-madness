--any plates made from ores

data:extend({

  {
    type = "item",
    name = "pm-nickel-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/nickel-plate.png",
    subgroup = "pm-nickel-tm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-manganese-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/manganese-plate.png",
    subgroup = "pm-manganese-tm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-zinc-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/zinc-plate.png",
    subgroup = "pm-zinc-tm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-gold-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/gold-plate.png",
    subgroup = "pm-gold-tm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-silver-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/silver-plate.png",
    subgroup = "pm-silver-tm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-titanium-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/titanium-plate.png",
    subgroup = "pm-titanium-tm",
    order = "e",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-tungsten-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/tungsten-plate.png",
    subgroup = "pm-tungsten-tm",
    order = "f",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-tin-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/molybdenum-plate.png",
    subgroup = "pm-tin-ptm",
    order = "g",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-aluminium-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/aluminium-plate.png",
    subgroup = "pm-aluminium-ptm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-cadnium-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/cadnium-plate.png",
    subgroup = "pm-cadnium-tm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-palladium-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/palladium-plate.png",
    subgroup = "pm-palladium-tm",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-lead-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/lead-plate.png",
    subgroup = "pm-lead-ptm",
    order = "e",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-thallium-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/thallium-plate.png",
    subgroup = "pm-thallium-ptm",
    order = "d",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-indium-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/indium-plate.png",
    subgroup = "pm-indium-ptm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-platinum-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/platinum-plate.png",
    subgroup = "pm-platinum-tm",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-cobalt-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/cobalt-plate.png",
    subgroup = "pm-cobalt-tm",
    order = "d",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-tellurium-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/tellurium-plate.png",
    subgroup = "pm-tellurium-mt",
    order = "d",
    stack_size = 100
  },

  {
    type = "item",
    name = "pm-brass-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
    subgroup = "pm-alloys",
    order = "b",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-stainless-steel-alloy",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate.png",
    pictures = 
    {
      {filename = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-alloys",
    order = "c",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-solder-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/solder-plate.png",
    subgroup = "pm-alloys",
    order = "e",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-kasethal-plate",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/kasethal-plate.png",
    subgroup = "pm-alloys",
    order = "d",
    stack_size = 100
  },
})

data.raw["item"]["iron-plate"].subgroup = "pm-iron-tm"
data.raw["item"]["iron-plate"].order = "c"
data.raw["item"]["copper-plate"].subgroup = "pm-copper-tm"
data.raw["item"]["iron-plate"].order = "c"
data.raw["item"]["steel-plate"].subgroup = "pm-alloys"
data.raw["item"]["steel-plate"].order = "a"
data.raw["item"]["steel-plate"].icon_size = 64
data.raw["item"]["steel-plate"].icon = "__periodic-madness__/graphics/icons/plates/steel-plate.png"
data.raw["item"]["steel-plate"].pictures = 
{
  {filename = "__periodic-madness__/graphics/icons/plates/steel-plate.png", size = 64, scale = 0.5},
  {filename = "__periodic-madness__/graphics/icons/plates/steel-plate-2.png", size = 64, scale = 0.5},
  {filename = "__periodic-madness__/graphics/icons/plates/steel-plate-3.png", size = 64, scale = 0.5},
}
