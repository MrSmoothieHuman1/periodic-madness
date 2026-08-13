data:extend({
    {
        type = "item",
        name = "pm-thortveitite",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-scandium-tm",
        order = "a",
        stack_size = 50
    },
    {
        type = "item",
        name = "pm-scandium-trioxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-scandium-tm",
        order = "b",
        stack_size = 75
    },
    {
        type = "item",
        name = "pm-scandium-fluoride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-scandium-tm",
        order = "c",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-scandium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/scandium.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/scandium.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/scandium-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/scandium-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-scandium-tm",
        order = "d",
        protons = 21,
        neutrons = 24,
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-scandium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-scandium-tm",
        order = "e",
        stack_size = 200
    },

    {
        type = "recipe",
        name = "pm-thortveitite",
        enabled = false,
        energy_required = 12,
        categories = {"pm-mixing"},
        allow_producivity = true,
        main_product = "pm-thortveitite",
        ingredients =
        {
            PM.ingredient("pm-transition-metals-ore", 12),
            PM.ingredient("pm-nickel-tailings", 15, "fluid"),
            PM.ingredient("pm-copper-tailings", 15, "fluid"),
            PM.ingredient("pm-zinc-tailings", 15, "fluid"),
            PM.ingredient("pm-tantalite-niobite-tailings", 7.5, "fluid")
        },
        results =
        {
            PM.product("pm-thortveitite"):amount(12):done(),
            PM.product("pm-cadnium-sulfate"):amount(0, 1):done(),
            PM.product("pm-tantalite-oxide"):amount(0, 2):done(),
            PM.product("pm-niobite-oxide"):amount(0, 2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-scandium-trioxide",
        enabled = false,
        energy_required = 18,
        categories = {"pm-crushing"},
        main_product = "pm-scandium-trioxide",
        ingredients =
        {
            PM.ingredient("pm-thortveitite", 6),
        },
        results =
        {
            PM.product("pm-scandium-trioxide"):amount(8):done(),
            PM.product("pm-ferrosilicon"):amount(1):chance(0.25):done()
        }
    },
    {
        type = "recipe",
        name = "pm-scandium-fluoride",
        enabled = false,
        energy_required = 16,
        categories = {"chemistry"},
        main_product = "pm-scandium-fluoride",
        ingredients =
        {
            PM.ingredient("pm-scandium-trioxide", 4),
            PM.ingredient("pm-flourine", 3),
            PM.ingredient("sulfuric-acid", 5, "fluid")
        },
        results =
        {
            PM.product("pm-scandium-fluoride"):amount(6):done(),
            PM.product("water", "fluid"):amount(10):done(),
            PM.product("pm-acidic-water", "fluid"):amount(10):done()
        }
    },
    {
        type = "recipe",
        name = "pm-scandium",
        enabled = false,
        energy_required = 18,
        categories = {"pm-moltening"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-scandium-fluoride", 6),
            PM.ingredient("pm-calcium-ore", 5),
            PM.ingredient("steam", 10, "fluid")
        },
        results =
        {
            PM.product("pm-scandium"):amount(6):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-scandium-oxide",
        enabled = false,
        energy_required = 18,
        categories = {"pm-coldening"},
        allow_producitvity = true,
        ingredients =
        {
            PM.ingredient("pm-scandium", 6),
            PM.ingredient("pm-oxygen-gas", 48, "fluid")
        },
        results =
        {
            PM.product("pm-scandium-oxide"):amount(8):done(),
        }
    },
})