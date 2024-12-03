local PM = require("library")
data:extend({

    {
        type = "item",
        name = "pm-mixed-trace-astatine",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/mixed-astatine.png",
        pictures =
        {
          { filename = "__periodic-madness__/graphics/icons/ores/mixed-astatine.png", size = 64, scale = 0.5 },
          { filename = "__periodic-madness__/graphics/icons/ores/mixed-astatine-2.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-astatine-ptm",
        order = "a",
        stack_size = 50
      },
    {
        type = "item",
        name = "pm-trace-astatine-209",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-astatine-209.png",
        pictures =
        {
          { filename = "__periodic-madness__/graphics/icons/ores/trace-astatine-209.png", size = 64, scale = 0.5 },
          { filename = "__periodic-madness__/graphics/icons/ores/trace-astatine-209-2.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-astatine-ptm",
        order = "b",
        stack_size = 100
      },
      {
        type = "item",
        name = "pm-trace-astatine-210",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-astatine-210.png",
        pictures =
        {
          { filename = "__periodic-madness__/graphics/icons/ores/trace-astatine-210.png", size = 64, scale = 0.5 },
          { filename = "__periodic-madness__/graphics/icons/ores/trace-astatine-210-2.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-astatine-ptm",
        order = "c",
        stack_size = 150
      },
      {
        type = "item",
        name = "pm-trace-astatine-211",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/trace-astatine-211.png",
        pictures =
        {
          { filename = "__periodic-madness__/graphics/icons/ores/trace-astatine-211.png", size = 64, scale = 0.5 },
          --{ filename = "__periodic-madness__/graphics/icons/ores/trace-astatine-211-2.png", size = 64, scale = 0.5 },
        },
        subgroup = "pm-astatine-ptm",
        order = "d",
        stack_size = 200
      },

    {
        type = "recipe",
        name = "pm-mixed-trace-astatine",
        category = "pm-cyclotroning",
        subgroup = "pm-astatine-ptm",
        order = "a",
        enabled = false,
        energy_required = 40,
        allow_productivty = true,
        ingredients = 
        {
            PM.ingredient("pm-bismuth-ore", 20),
            PM.ingredient("copper-plate", 10),
            PM.ingredient("pm-aluminium-plate", 10),
            PM.ingredient("pm-gold-plate", 10), --all need to be catalysts for hard mode
        },
        results = 
        {
            PM.product_range_chance("pm-mixed-trace-astatine", 1, 2, 0.5)
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-astatine-MOT-trap",
        subgroup = "pm-astatine-ptm",
        order = "b",
        enabled = false,
        energy_required = 10,
        ingredients = 
        {
            PM.ingredient("pm-magneto-orbital-trap", 1),
            PM.ingredient("pm-mixed-trace-astatine", 3)
        },
        results = 
        {
            PM.product("pm-mixed-astatine-magneto-orbital-trap", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-astatine-MOT-trap-emptying",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/mixed-astatine-seperation.png",
        category = "crafting-with-fluid",
        subgroup = "pm-astatine-ptm",
        order = "c",
        enabled = false,
        energy_required = 10,
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-mixed-astatine-magneto-orbital-trap", 1),
            PM.ingredient("pm-sodium-hydroxide", 20, "fluid"),
            PM.ingredient("pm-methanol", 20, "fluid"),
        },
        results = 
        {
            PM.product_range_chance("pm-trace-astatine-209", 1, 2, 0.5),
            PM.product_range_chance("pm-trace-astatine-210", 1, 2, 0.5),
            PM.product_range_chance("pm-trace-astatine-211", 1, 2, 0.5),
        }
    },
    {
        type = "recipe",
        name = "pm-astatine-isotope-rearranging",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/trace-astatine-rearranging.png",
        category = "pm-cyclotroning",
        subgroup = "pm-astatine-ptm",
        order = "d",
        enabled = false,
        energy_required = 20,
        ingredients = 
        {
            PM.ingredient("pm-trace-astatine-209", 8),
            PM.ingredient("pm-trace-astatine-210", 8),
            PM.ingredient("pm-bismuth-210", 2),
            PM.ingredient("pm-hydrochloric-acid", 40, "fluid")
        },
        results = 
        {
            PM.product_range_chance("pm-trace-astatine-209", 2, 6, 0.5),
            PM.product_range_chance("pm-trace-astatine-210", 2, 6, 0.5),
            PM.product_range_chance("pm-trace-astatine-211", 3, 6, 0.8),
        }
    }
})
