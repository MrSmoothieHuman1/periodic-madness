data:extend({

    {
        type = "item",
        name = "pm-mixed-protactinium-salts",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/protactinium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-protactinium-ac",
        order = "a",
        stack_size = 250,
    },
    {
        type = "item",
        name = "pm-protactinium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/protactinium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-protactinium-ac",
        order = "c",
        stack_size = 150,
    },
    {
        type = "item",
        name = "pm-protactinium-fluoride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/protactinium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-protactinium-ac",
        order = "d",
        stack_size = 150,
    },
    {
        type = "item",
        name = "pm-protactinium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/protactinium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-protactinium-ac",
        order = "e",
        stack_size = 150,
    },
    {
        type = "item",
        name = "pm-protactinium-terbate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/protactinium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-protactinium-ac",
        order = "f",
        stack_size = 150,
    },
    {
        type = "item",
        name = "pm-protactinium-231",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/protactinium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-protactinium-ac",
        order = "h",
        stack_size = 200,
    },

    {
        type = "item",
        name = "pm-protactinium-233",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/protactinium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/protactinium-233-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-protactinium-ac",
        order = "i",
        custom_tooltip_fields =
        {
            {
              name = {"pm-tooltips.beta-decay"},
              value = {"", "[img=item.pm-uranium-233]", {"item-name.pm-uranium-233"}}
            },
        },
        stack_size = 200,
    },

    {
        type = "recipe",
        name = "pm-mixed-protactinium-salts",
        enabled = false,
        energy_required = 30,
        categories = {"pm-washing"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-light-actinium-deposit", 5),
            PM.ingredient("pm-hydroflouric-acid", 10, "fluid"),
            PM.ingredient("sulfuric-acid", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-mixed-protactinium-salts"):amount(3, 8):done()
        }
    },
    {
        type = "recipe",
        name = "pm-mixed-protactinium-salts-seperation",
        enabled = false,
        energy_required = 16,
        categories = {"centrifuging"},
        subgroup = "pm-protactinium-ac",
        order = "b",
        allow_productivity = true,
        main_product = "pm-protactinium-fluoride",
        ingredients =
        {
            PM.ingredient("pm-mixed-protactinium-salts", 5),
        },
        results =
        {
            PM.product("pm-protactinium-oxide"):amount(2, 3):done(),
            PM.product("pm-protactinium-fluoride"):amount(1, 2):done(),
            PM.product("pm-protactinium-chloride"):amount(1, 3):done(),
            PM.product("pm-protactinium-terbate"):amount(1, 3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-protactinium-chloride-to-fluoride",
        icons =
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/impure-terbium.png",
                icon_size = 64,
                scale = 0.5,
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/terbium-chloride.png",
                icon_size = 64,
                shift = {8, -8},
                draw_background = true,
                scale = 0.33
            },
        },
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-protactinium-ac",
        order = "ea",
        main_product = "pm-protactinium-fluoride",
        ingredients =
        {
            PM.ingredient("pm-protactinium-chloride", 3),
            PM.ingredient("pm-flourine", 6)
        },
        results = 
        {
            PM.product("pm-protactinium-fluoride"):amount(3):done(),
            PM.product("pm-chlorine", "fluid"):amount(1.5, 5):catalyst(5):done(),
            PM.product("pm-flourine"):amount(4):catalyst(4):done()
        }
    },
    {
        type = "recipe",
        name = "pm-protactinium-terbate-to-oxide",
        icons =
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/impure-terbium.png",
                icon_size = 64,
                scale = 0.5,
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/terbium-chloride.png",
                icon_size = 64,
                shift = {8, -8},
                draw_background = true,
                scale = 0.33
            },
        },
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-protactinium-ac",
        order = "fa",
        main_product = "pm-protactinium-oxide",
        ingredients =
        {
            PM.ingredient("pm-protactinium-terbate", 3),
            PM.ingredient("pm-oxygen-gas", 20, "fluid")
        },
        results = 
        {
            PM.product("pm-protactinium-oxide"):amount(3):done(),
            PM.product("pm-impure-terbium"):amount(0, 2):catalyst(2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-protactinium-oxide-to-fluoride",
        icons =
        {
            {
                icon = "__periodic-madness__/graphics/icons/ores/impure-terbium.png",
                icon_size = 64,
                scale = 0.5,
            },
            {
                icon = "__periodic-madness__/graphics/icons/ores/terbium-chloride.png",
                icon_size = 64,
                shift = {8, -8},
                draw_background = true,
                scale = 0.33
            },
        },
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-protactinium-ac",
        order = "g",
        main_product = "pm-protactinium-fluoride",
        ingredients =
        {
            PM.ingredient("pm-protactinium-oxide", 3),
            PM.ingredient("pm-bromine", 20, "fluid"),
            PM.ingredient("pm-flourine", 4)

        },
        results =
        {
            PM.product("pm-protactinium-fluoride"):amount(3):done(),
            PM.product("pm-bromine", "fluid"):amount(15, 20):catalyst(20):done(),
            PM.product("pm-oxygen-gas", "fluid"):amount(5, 10):catalyst(10):done()
        }
    },
    {
        type = "recipe",
        name = "pm-protactinium-231",
        enabled = false,
        energy_required = 15,
        categories = {"pm-moltening"},
        allow_productivity = true,
        main_product = "pm-protactinium-231",
        ingredients =
        {
            PM.ingredient("pm-protactinium-fluoride", 6),
            PM.ingredient("pm-lithium-ore", 3),
            PM.ingredient("pm-calcium-ore", 4),
            PM.ingredient("pm-barium-ore", 2)
        },
        results =
        {
            PM.product("pm-protactinium-231"):amount(5):done(),
            PM.product("pm-flourine"):amount(4):catalyst(4):done()
        }
    },

    {
        type = "recipe",
        name = "pm-protactinium-233",
        enabled = false,
        energy_required = 12,
        categories = {"pm-beta-decay"},
        main_product = "pm-protactinium-233",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-thorium-233", 4),
        },
        results =
        {
            PM.product("pm-protactinium-233"):amount(2):chance(0, 0.5):done(),
            PM.product("pm-thorium-233"):amount(2):chance(0.5, 1):catalyst(2):done()
        }
    },
})