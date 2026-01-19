data:extend({
    {
        type = "item",
        name = "pm-low-ytterbium-mixture",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
        subgroup = "pm-ytterbium-la",
        order = "ca",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-high-ytterbium-mixture",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
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
        category = "pm-washing",
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
            PM.product("pm-ytterbium-solution", 25, "fluid"),
            PM.catalyst("pm-ion-exchange-beads", 8, 8),
        }
    },
    {
        type = "recipe",
        name = "pm-ytterbium-solution-seperation",
        enabled = false,
        energy_required = 12,
        category = "pm-mixing",
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
            PM.product("pm-low-ytterbium-mixture", 6),
            PM.product("pm-high-ytterbium-mixture", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-low-ytterbium-mixture-seperation",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
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
            PM.product_range("pm-impure-ytterbium", 1, 3),
            PM.product_range("pm-erbium-salts", 0, 2),
            PM.product_range("pm-mixed-praseodymium-deposit", 0, 2),
            PM.catalyst_chance("pm-vanadium-oxide-catalyst", 2, 0.9, 2),
            PM.catalyst_chance("pm-catalyst-container", 2, 0.1, 2),
            PM.catalyst("pm-cobalt-catalyst", 2, 2),
        }
    },
    {
        type = "recipe",
        name = "pm-high-ytterbium-mixture-seperation",
        enabled = false,
        energy_required = 8,
        category = "chemistry",
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
            PM.product_range("pm-impure-ytterbium", 2, 6),
            PM.product_chance("pm-europium-trioxide", 1, 0.33),
            PM.catalyst_chance("pm-palladium-catalyst", 2, 0.9, 2),
            PM.catalyst_chance("pm-catalyst-container", 2, 0.1, 2),
            PM.catalyst("pm-yttrium-catalyst", 2, 2),
        }
    },
    {
        type = "recipe",
        name = "pm-ytterbium-vapour",
        enabled = false,
        energy_required = 18,
        category = "pm-moltening",
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
            PM.product("pm-ytterbium-vapour", 20, "fluid"),
            PM.catalyst("pm-zirconia", 3, 3),
            PM.catalyst("pm-molten-zinc", 10, 10, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-ytterbium-plate",
        enabled = false,
        energy_required = 9,
        category = "pm-coldening", --should be in one new furnace
        allow_productivity = true,
        main_product = "pm-ytterbium-plate",
        ingredients =
        {
            PM.ingredient("pm-ytterbium-vapour", 10, "fluid"),
            PM.ingredient("pm-crucible", 2)
        },
        results =
        {
            PM.product("pm-ytterbium-plate", 5),
            PM.product("pm-crucible", 2)
        }
    }
})