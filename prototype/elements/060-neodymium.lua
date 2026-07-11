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
        icon = "__periodic-madness__/graphics/icons/fluids/neodymium-froth.png",
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
        icon = "__periodic-madness__/graphics/icons/fluids/neodymium-tailings.png",
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
        icon = "__periodic-madness__/graphics/icons/fluids/molten-neodymium.png",
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
        categories = {"pm-mixing"},
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
            PM.product("pm-neodymium-froth", "fluid"):amount(15):done(),
            PM.product("pm-neodymium-tailings", "fluid"):amount(30):done()
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-concentrate",
        enabled = false,
        energy_required = 24,
        categories = {"pm-washing"},
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
            PM.product("pm-neodymium-concentrate", "fluid"):amount(7.5):done(),
            PM.product("pm-hydrogen-sulfide", "fluid"):amount(0, 2.5):done(),
            PM.product("pm-ion-exchange-beads"):amount(4, 6):done()
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-oxide",
        enabled = false,
        energy_required = 9,
        categories = {"pm-moltening"},
        main_product = "pm-neodymium-oxide",
        ingredients =
        {
            PM.ingredient("pm-neodymium-concentrate", 7.5, "fluid"),
            PM.ingredient("pm-yttrium-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-neodymium-oxide"):amount(4):done(),
            PM.product("pm-yttrium-catalyst"):amount(2):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-molten-neodymium",
        enabled = false,
        energy_required = 18,
        categories = {"pm-moltening"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-neodymium-oxide", 4),
            PM.ingredient("pm-lithium-ore", 2),
        },
        results =
        {
            PM.product("pm-molten-neodymium", "fluid"):amount(5):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-plate",
        enabled = false,
        energy_required = 18,
        categories = {"pm-coldening"},
        allow_productivity = true,
        main_product = "pm-neodymium-plate",
        ingredients =
        {
            PM.ingredient("pm-molten-neodymium", 5, "fluid"),
            PM.ingredient("pm-crucible", 2)
        },
        results =
        {
            PM.product("pm-neodymium-plate"):amount(3):done(),
            PM.product("pm-crucible"):amount(2):chance(0.75):catalyst(2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-neodymium-tailings-looping",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/neodymium-tailings-looping.png",
        enabled = false,
        energy_required = 6,
        categories = {"pm-mixing"},
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
            PM.product("pm-neodymium-tailings", "fluid"):amount(5, 10):done(),
            PM.product("pm-neodymium-froth", "fluid"):amount(2.5, 7.5):done()
        }
    },
})