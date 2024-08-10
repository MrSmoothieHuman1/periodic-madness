--for all recipes related to batteries

data:extend({

  {
    type = "item",
    name = "pm-copper-disc",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/copper-disc.png",
    subgroup = "pm-batteries",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-zinc-disc",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/zinc-disc.png",
    subgroup = "pm-batteries",
    order = "b",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-uncharged-voltatic-pile",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/voltatic-pile.png",
    subgroup = "pm-batteries",
    order = "f",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-broken-voltatic-pile",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/broken-voltatic-pile.png",
    subgroup = "pm-batteries",
    order = "g",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-charged-voltatic-pile",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/charged-voltatic-pile.png",
    subgroup = "pm-batteries",
    order = "h",
    fuel_value = "1MJ",
    fuel_category = "pm-voltatic-piles",
    burnt_result = "pm-uncharged-voltatic-pile",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-copper-anode",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/copper-anode.png",
    subgroup = "pm-batteries",
    order = "c",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-zinc-cathode",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/zinc-cathode.png",
    subgroup = "pm-batteries",
    order = "d",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-vanadium-oxide",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/vanadium-oxide.png",
    subgroup = "pm-batteries",
    order = "i",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-vanadium-redox-battery",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/vanadium-redox-battery.png",
    subgroup = "pm-batteries",
    order = "j",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-charged-vanadium-redox-battery",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/charged-vanadium-redox-battery.png",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__periodic-madness__/graphics/icons/charged-vanadium-redox-battery.png",
          scale = 0.25,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__periodic-madness__/graphics/light/charged-battery-light.png",
          scale = 0.25,
        }
      }
    },
    subgroup = "pm-batteries",
    order = "ja",
    fuel_category = "pm-charged-batteries",
    fuel_value = "10MJ",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-lithium-sulfur-battery",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/lithium-sulfur-battery.png",
    subgroup = "pm-batteries",
    order = "l",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-charged-lithium-sulfur-battery",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/charged-lithium-sulfur-battery.png",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__periodic-madness__/graphics/icons/charged-lithium-sulfur-battery.png",
          scale = 0.25,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__periodic-madness__/graphics/light/charged-double-battery-light.png",
          scale = 0.25,
        }
      }
    },
    subgroup = "pm-batteries",
    order = "la",
    fuel_category = "pm-charged-batteries",
    fuel_value = "50MJ",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-lithium-ion-battery",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/lithium-cobalt-battery.png",
    subgroup = "pm-batteries",
    order = "k",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-battery-casing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/battery-casing.png",
    subgroup = "pm-batteries",
    order = "e",
    stack_size = 400
  },
})

data.raw["item"]["battery"].subgroup = "pm-batteries"
data.raw["item"]["battery"].order = "k"
