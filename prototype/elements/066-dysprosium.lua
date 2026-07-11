data:extend({

    {
        type = "item",
        name = "pm-tantalum-dysprosium-crucible",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/tantalum-dysprosium-crucible.png",
        subgroup = "pm-dysprosium-la",
        order = "a",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-xenotime",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/xenotime.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/xenotime.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/xenotime-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/xenotime-3.png", size = 64, scale = 0.45},
          {filename = "__periodic-madness__/graphics/icons/ores/xenotime-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-dysprosium-la",
        order = "b",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-dysprosium-fluoride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/dysprosium-fluoride.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/dysprosium-fluoride.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/dysprosium-fluoride-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/dysprosium-fluoride-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-dysprosium-la",
        order = "d",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-unprocessed-dysprosium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/unprocessed-dysprosium.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/unprocessed-dysprosium.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/unprocessed-dysprosium-2.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-dysprosium-la",
        order = "e",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-cooled-dysprosium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/cooled-dysprosium.png",
        subgroup = "pm-dysprosium-la",
        order = "g",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-dysprosium-plate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/plates/dysprosium-plate.png",
        subgroup = "pm-dysprosium-la",
        order = "h",
        protons = 66,
        neutrons = 97,
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-dysprosium-concentrate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/dysprosium-concentrate.png",
        subgroup = "pm-dysprosium-la",
        order = "c",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-molten-dysprosium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/molten-dysprosium.png",
        subgroup = "pm-dysprosium-la",
        order = "f",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },

    {
        type = "recipe",
        name = "pm-tantalum-dysprosium-crucible",
        enabled = false,
        energy_required = 9,
        categories = {"pm-moltening"}, --should be in other furnaces? maybe?
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-crucible", 1),
            PM.ingredient("pm-tantalum-plate", 2),
            PM.ingredient("pm-molten-manganese", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-tantalum-dysprosium-crucible"):amount(1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-xenotime",
        enabled = false,
        energy_required = 8,
        categories = {"pm-acids"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 4),
            PM.ingredient("pm-ferrum", 5),
            PM.ingredient("pm-ion-exchange-beads", 6)
        },
        results =
        {
            PM.product("pm-xenotime"):amount(6):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-dysprosium-concentrate",
        enabled = false,
        energy_required = 12,
        categories = {"pm-mixing"},
        allow_productivity = true,
        main_product = "pm-dysprosium-concentrate",
        ingredients =
        {
            PM.ingredient("pm-xenotime", 4),
            PM.ingredient("pm-acidic-water", 25, "fluid"),
            PM.ingredient("sulfuric-acid", 5, "fluid")
        },
        results =
        {
            PM.product("pm-dysprosium-concentrate", "fluid"):amount(12.5):done(),
            PM.product("pm-holmium-fluoride"):amount(1):chance(0.15):done(),
            PM.product("pm-holmium-chloride"):amount(1):chance(0.15):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-dysprosium-fluoride",
        enabled = false,
        energy_required = 6,
        categories = {"pm-electrolysis"},
        main_product = "pm-dysprosium-fluoride",
        ingredients = 
        {
            PM.ingredient("pm-dysprosium-concentrate", 12.5, "fluid"),
            PM.ingredient("pm-flourine", 4)
        },
        results =
        {
            PM.product("pm-dysprosium-fluoride"):amount(4):done(),
            PM.product("pm-dysprosium-concentrate", "fluid"):amount(6):catalyst(5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-unprocessed-dysprosium",
        enabled = false,
        energy_required = 3,
        categories = {"chemistry"},
        main_product = "pm-unprocessed-dysprosium",
        ingredients =
        {
            PM.ingredient("pm-dysprosium-fluoride", 8),
            PM.ingredient("pm-lithium-ore", 2),
            PM.ingredient("pm-calcium-ore", 2)
        },
        results =
        {
            PM.product("pm-unprocessed-dysprosium"):amount(4):done(),
            PM.product("pm-lithium-ore"):amount(1):chance(0.5):done(),
            PM.product("pm-calcium-ore"):amount(1):chance(0.5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-molten-dysprosium",
        enabled = false,
        energy_required = 15,
        categories = {"pm-moltening"},
        allow_productivity = true,
        main_product = "pm-molten-dysprosium",
        ingredients =
        {
            PM.ingredient("pm-unprocessed-dysprosium", 10),
            PM.ingredient("pm-industrial-noble-gas", 50, "fluid")
        },
        results = 
        {
            PM.product("pm-molten-dysprosium", "fluid"):amount(5):done(),
            PM.product("pm-industrial-noble-gas", "fluid"):amount(25):catalyst(25):done()
        }
    },
    {
        type = "recipe",
        name = "pm-cooled-dysprosium",
        enabled = false,
        energy_required = 15,
        categories = {"pm-coldening"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-tantalum-dysprosium-crucible", 1),
            PM.ingredient("pm-molten-dysprosium", 5, "fluid")
        },
        results =
        {
            PM.product("pm-cooled-dysprosium"):amount(1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-dysprosium-plate",
        enabled = false,
        energy_required = 5,
        main_product = "pm-dysprosium-plate",
        ingredients =
        {
            PM.ingredient("pm-cooled-dysprosium", 1)
        },
        results =
        {
            PM.product("pm-dysprosium-plate"):amount(3):done(),
            PM.product("pm-unprocessed-dysprosium"):amount(2):done(),
            PM.product("pm-tantalum-dysprosium-crucible"):amount(1):chance(0.5):done(),
            PM.product("pm-combined-ore-slab"):amount(0, 2):done()
        }
    },
})