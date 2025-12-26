data:extend({
    {
      type = "item",
      name = "pm-mixed-samarium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-samarium-la",
      order = "a",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-lightly-seperated-samarium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/31-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-samarium-la",
      order = "b",
      stack_size = 175
    }, --sounds like a skill issue ngl
    {
      type = "item",
      name = "pm-medium-seperated-samarium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/51-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-samarium-la",
      order = "c",
      stack_size = 150
    },
    {
      type = "item",
      name = "pm-highly-seperated-samarium-deposit",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/71-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-samarium-la",
      order = "d",
      stack_size = 125
    },
    {
      type = "item",
      name = "pm-samarium-oxide",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png",
      pictures =
      {
        {filename = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png", size = 64, scale = 0.5},
        {filename = "__periodic-madness__/graphics/icons/ores/71-rubidium-alum.png", size = 64, scale = 0.5}
      },
      subgroup = "pm-samarium-la",
      order = "e",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-samarium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-samarium-la",
      order = "f",
      stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-mixed-samarium-deposit",
        enabled = false,
        energy_required = 10,
        category = "pm-leaching",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 8),
            PM.ingredient("pm-acidic-water", 10, "fluid"),
            PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
        },
        results =
        {
            PM.product("pm-mixed-samarium-deposit", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-samarium-deposit-seperation",
        enabled = false,
        energy_required = 10,
        category = "pm-crushing",
        subgroup = "pm-praseodymium-la",
        order = "b",
        allow_productivity = true,
        main_product = "pm-samarium-oxide",
        ingredients =
        {
            PM.ingredient("pm-mixed-samarium-deposit", 4)
        },
        results =
        {
            PM.product("pm-lightly-seperated-samarium-deposit", 3),
            PM.product("pm-medium-seperated-samarium-deposit", 2),
            PM.product("pm-highly-seperated-samarium-deposit", 1),
            PM.product_chance("pm-samarium-oxide", 1, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-medium-seperated-samarium-deposit",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-lightly-seperated-samarium-deposit", 4),
            PM.ingredient("sulfuric-acid", 30, "fluid"),
        },
        results = 
        {
            PM.product("pm-medium-seperated-samarium-deposit", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-highly-seperated-samarium-deposit",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-medium-seperated-samarium-deposit", 4),
            PM.ingredient("pm-nitric-acid", 40, "fluid"),
        },
        results =
        {
            PM.product("pm-highly-seperated-samarium-deposit", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-samarium-oxide",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-highly-seperated-samarium-deposit", 4),
            PM.ingredient("pm-chromic-acid", 50, "fluid"),
        },
        results =
        {
            PM.product("pm-samarium-oxide", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-samarium",
        enabled = false,
        energy_required = 16,
        category = "pm-moltening", --shoudl be in cool furnace
        allow_productivity = true,
        main_product = "pm-samarium",
        ingredients =
        {
            PM.ingredient("pm-samarium-oxide", 6),
            PM.ingredient("pm-radium-ore", 3),
        },
        results =
        {
            PM.product("pm-samarium", 5),
            PM.product_chance("pm-radium-ore", 3, 0.5),
            PM.product("pm-oxygen-gas", 36, "fluid")
        }
    },
})