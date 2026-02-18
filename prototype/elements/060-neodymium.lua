data:extend({
    {
        type = "item",
        name = "pm-neodymium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/neodymium-oxide.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/neodymium-oxide.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/neodymium-oxide-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/neodymium-oxide.png", size = 64, scale = 0.45},
          {filename = "__periodic-madness__/graphics/icons/neodymium-oxide-2.png", size = 64, scale = 0.52},
        },
        subgroup = "pm-neodymium-la",
        order = "e",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-neodymium-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/plates/neodymium-plate.png",
        subgroup = "pm-neodymium-la",
        order = "g",
        protons = 60,
        neutrons = 84,
        stack_size = 100
    },
    {
        type = "fluid",
        name = "pm-neodymium-froth",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-froth.png",
        subgroup = "pm-neodymium-la",
        order = "b",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-neodymium-tailings",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-tailings.png",
        subgroup = "pm-neodymium-la",
        order = "c",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-neodymium-concentrate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/neodymium-concentrate.png",
        subgroup = "pm-neodymium-la",
        order = "d",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-molten-neodymium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-tailings.png",
        subgroup = "pm-neodymium-la",
        order = "f",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
        auto_barrel = false,
    },

    {
        type = "recipe",
        name = "pm-neodymium-frothing",
        enabled = false,
        energy_required = 12,
        category = "pm-mixing",
        subgroup = "pm-neodymium-la",
        order = "a",
        allow_productivity = true,
        main_product = "pm-neodymium-tailings",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 3),
            PM.ingredient("water", 25, "fluid"),
            PM.ingredient("sulfuric-acid", 15, "fluid"),
            PM.ingredient("pm-potassium", 1)
        },
        results =
        {
            PM.product("pm-neodymium-froth", 15, "fluid"),
            PM.product("pm-neodymium-tailings", 30, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-concentrate",
        enabled = false,
        energy_required = 24,
        category = "pm-washing",
        allow_productivity = true,
        main_product = "pm-neodymium-concentrate",
        ingredients =
        {
            PM.ingredient("pm-neodymium-froth", 15, "fluid"),
            PM.ingredient("pm-ion-exchange-beads", 8),
            PM.ingredient("pm-acidic-water", 30, "fluid")
        },
        results =
        {
            PM.product("pm-neodymium-concentrate", 7.5, "fluid"),
            PM.product_range("pm-hydrogen-sulfide", 0, 2.5, "fluid"),
            PM.product_range("pm-ion-exchange-beads", 4, 6)
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-oxide",
        enabled = false,
        energy_required = 9,
        category = "pm-moltening",
        main_product = "pm-neodymium-oxide",
        ingredients =
        {
            PM.ingredient("pm-neodymium-concentrate", 7.5, "fluid"),
            PM.ingredient("pm-yttrium-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-neodymium-oxide", 4),
            PM.product("pm-yttrium-catalyst", 2),
        }
    },
    {
        type = "recipe",
        name = "pm-molten-neodymium",
        enabled = false,
        energy_required = 18,
        category = "pm-moltening",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-neodymium-oxide", 4),
            PM.ingredient("pm-lithium-ore", 2),
        },
        results =
        {
            PM.product("pm-molten-neodymium", 5, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-plate",
        enabled = false,
        energy_required = 18,
        category = "pm-coldening",
        allow_productivity = true,
        main_product = "pm-neodymium-plate",
        ingredients =
        {
            PM.ingredient("pm-molten-neodymium", 5, "fluid"),
            PM.ingredient("pm-crucible", 2)
        },
        results =
        {
            PM.product("pm-neodymium-plate", 3),
            PM.catalyst_chance("pm-crucible", 2, 0.75, 2)
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-tailings-looping",
        enabled = false,
        energy_required = 6,
        category = "pm-mixing",
        subgroup = "pm-neodymium-la",
        order = "h",
        main_product = "pm-neodymium-froth",
        ingredients =
        {
            PM.ingredient("pm-neodymium-tailings", 15, "fluid"),
            PM.ingredient("pm-nitric-acid", 7.5, "fluid")
        },
        results =
        {
            PM.product_range("pm-neodymium-tailings", 5, 10, "fluid"),
            PM.product_range("pm-neodymium-froth", 2.5, 7.5, "fluid")
        }
    },
})