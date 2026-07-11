data:extend({
    {
        type = "item",
        name = "pm-low-ytterbium-mixture",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/low-ytterbium-mixture.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/low-ytterbium-mixture.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/low-ytterbium-mixture-2.png", size = 64, scale = 0.44},
          {filename = "__periodic-madness__/graphics/icons/ores/low-ytterbium-mixture-3.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/low-ytterbium-mixture-4.png", size = 64, scale = 0.46}
        },
        subgroup = "pm-ytterbium-la",
        order = "ca",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-high-ytterbium-mixture",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/high-ytterbium-mixture.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/high-ytterbium-mixture.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/high-ytterbium-mixture-2.png", size = 64, scale = 0.45},
          {filename = "__periodic-madness__/graphics/icons/ores/high-ytterbium-mixture-3.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/high-ytterbium-mixture-4.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-ytterbium-la",
        order = "da",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-impure-ytterbium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-froth.png",
        subgroup = "pm-ytterbium-la",
        order = "e",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-ytterbium-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/plates/ytterbium-plate.png",
        subgroup = "pm-ytterbium-la",
        order = "g",
        protons = 70,
        neutrons = 103,
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-ytterbium-solution",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-froth.png",
        subgroup = "pm-ytterbium-la",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-ytterbium-vapour",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/ytterbium-vapour.png",
        subgroup = "pm-ytterbium-la",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0.4, g = 0.4, b = 0.4},
        flow_color = {r = 0.4, g = 0.4, b = 0.4},
    },

    {
        type = "recipe",
        name = "pm-ytterbium-solution",
        enabled = false,
        energy_required = 16,
        categories = {"pm-washing"},
        allow_productivity = true,
        main_product = "pm-ytterbium-solution",
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 4),
            PM.ingredient("pm-ion-exchange-beads", 8),
            PM.ingredient("sulfuric-acid", 20, "fluid")
        },
        results =
        {
            PM.product("pm-ytterbium-solution", "fluid"):amount(25):done(),
            PM.product("pm-ion-exchange-beads"):amount(8):catalyst(8):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-ytterbium-solution-seperation",
        enabled = false,
        energy_required = 12,
        categories = {"pm-mixing"},
        subgroup = "pm-ytterbium-la",
        order = "b",
        allow_productivity = true,
        main_product = "pm-low-ytterbium-mixture",
        ingredients =
        {
            PM.ingredient("pm-rubber-resin", 25, "fluid"),
            PM.ingredient("pm-pheonlic-resin", 25, "fluid"),
            PM.ingredient("pm-ytterbium-solution", 10, "fluid")
        },
        results =
        {
            PM.product("pm-low-ytterbium-mixture"):amount(6):done(),
            PM.product("pm-high-ytterbium-mixture"):amount(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-low-ytterbium-mixture-seperation",
        enabled = false,
        energy_required = 8,
        categories = {"chemistry"},
        subgroup = "pm-ytterbium-la",
        order = "c",
        main_product = "pm-impure-ytterbium",
        ingredients =
        {
            PM.ingredient("pm-low-ytterbium-mixture", 3),
            PM.ingredient("pm-vanadium-oxide-catalyst", 2),
            PM.ingredient("pm-cobalt-catalyst", 2),
            PM.ingredient("pm-1-10-phenanthroline", 5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-ytterbium"):amount(1, 3):done(),
            PM.product("pm-erbium-salts"):amount(0, 2):done(),
            PM.product("pm-mixed-praseodymium-deposit"):amount(0, 2):done(),
            PM.product("pm-vanadium-oxide-catalyst"):amount(2):chance(0.9):catalyst(2):done(),
            PM.product("pm-catalyst-container"):amount(2):chance(0.1):catalyst(2):done(),
            PM.product("pm-cobalt-catalyst"):amount(2):catalyst(2):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-high-ytterbium-mixture-seperation",
        enabled = false,
        energy_required = 8,
        categories = {"chemistry"},
        subgroup = "pm-ytterbium-la",
        order = "d",
        main_product = "pm-impure-ytterbium",
        ingredients =
        {
            PM.ingredient("pm-high-ytterbium-mixture", 3),
            PM.ingredient("pm-palladium-catalyst", 2),
            PM.ingredient("pm-yttrium-catalyst", 2),
            PM.ingredient("pm-1-10-phenanthroline", 5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-ytterbium"):amount(2, 6):done(),
            PM.product("pm-europium-trioxide"):amount(1):chance(0.33):done(),
            PM.product("pm-palladium-catalyst"):amount(2):chance(0.9):catalyst(2):done(),
            PM.product("pm-catalyst-container"):amount(2):chance(0.1):catalyst(2):done(),
            PM.product("pm-yttrium-catalyst"):amount(2):catalyst(2):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-ytterbium-vapour",
        enabled = false,
        energy_required = 18,
        categories = {"pm-moltening"},
        allow_productivity = true,
        main_product = "pm-ytterbium-vapour",
        ingredients =
        {
            PM.ingredient("pm-impure-ytterbium", 5),
            PM.ingredient("pm-zirconia", 4),
            PM.ingredient("pm-molten-zinc", 10, "fluid")
        },
        results =
        {
            PM.product("pm-ytterbium-vapour", "fluid"):amount(20):done(),
            PM.product("pm-zirconia"):amount(3):catalyst(3):done(),
            PM.product("pm-molten-zinc", "fluid"):amount(10):catalyst(10):done()
        }
    },
    {
        type = "recipe",
        name = "pm-ytterbium-plate",
        enabled = false,
        energy_required = 9,
        categories = {"pm-coldening"},
        allow_productivity = true,
        main_product = "pm-ytterbium-plate",
        ingredients =
        {
            PM.ingredient("pm-ytterbium-vapour", 10, "fluid"),
            PM.ingredient("pm-crucible", 2)
        },
        results =
        {
            PM.product("pm-ytterbium-plate"):amount(5):done(),
            PM.product("pm-crucible"):amount(2):done()
        }
    }
})