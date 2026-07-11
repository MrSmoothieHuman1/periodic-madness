data:extend({

    {
        type = "item",
        name = "pm-molybdenum-porphyry-deposit",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/molybdenum-porphyry-deposit.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/molybdenum-porphyry-deposit.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/molybdenum-porphyry-deposit-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-rhenium-tm",
        order = "a",
        stack_size = 450
    },
    {
        type = "item",
        name = "pm-rhenium-chunks",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/rhenium-chunks.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/rhenium-chunks.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/rhenium-chunks-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-rhenium-tm",
        order = "b",
        stack_size = 300
    },
    {
        type = "item",
        name = "pm-rhenium-oxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/rhenium-oxide.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/rhenium-oxide.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/rhenium-oxide-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/rhenium-oxide-3.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-rhenium-tm",
        order = "c",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-ammonium-perrhenate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ammonium-perrhenate.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ammonium-perrhenate.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ammonium-perrhenate-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-rhenium-tm",
        order = "e",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-rhenium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/rhenium-ore.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/rhenium-ore.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/rhenium-ore-2.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/rhenium-ore-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-rhenium-tm",
        order = "f",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-perrhenic-acid",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/perrhenic-acid.png",
        subgroup = "pm-rhenium-tm",
        order = "d",
        default_temperature = 15,
        base_color = {r = 0, g = 0, b = 0},
        flow_color = {r = 0, g = 0, b = 0}
    },
  
    {
        type = "recipe",
        name = "pm-molybdenum-porphyry-deposit",
        enabled = false,
        energy_required = 10,
        categories = {"pm-acids"},
        subgroup = "pm-rhenium-tm",
        order = "a",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-transition-metals-ore", 14),
            PM.ingredient("pm-molybdenum-ore", 8),
            PM.ingredient("pm-chromic-acid", 25, "fluid")
        },
        results =
        {
            PM.product("pm-molybdenum-porphyry-deposit"):amount(14):done()
        }
    },
    {
        type = "recipe",
        name = "pm-molybdenum-porphyry-seperation",
        enabled = false,
        energy_required = 6,
        categories = {"pm-crushing"},
        subgroup = "pm-rhenium-tm",
        order = "b",
        main_product = "pm-rhenium-chunks",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-molybdenum-porphyry-deposit", 2)
        },
        results =
        {
            PM.product("pm-rhenium-chunks"):amount(1):chance(0.05):done(),
            PM.product("pm-molybdenite-powder"):amount(3):chance(0.458):done(),
            PM.product("stone"):amount(5):chance(0.525):done()
        }
    },
    {
        type = "recipe",
        name = "pm-acqua-molybdenum-porphyry-seperation",
        enabled = false,
        energy_required = 6,
        categories = {"pm-crushing"},
        subgroup = "pm-rhenium-tm",
        order = "ba",
        main_product = "pm-rhenium-chunks",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-molybdenum-porphyry-deposit", 2),
            PM.ingredient("pm-rhenium-platinum-catalyst", 4)
        },
        results =
        {
            PM.product("pm-rhenium-chunks"):amount(3):chance(0.2):done(),
            PM.product("pm-molybdenite-powder"):amount(3):chance(0.54):done(),
            PM.product("stone"):amount(3):chance(0.46):done(),
            PM.product("pm-rhenium-platinum-catalyst"):amount(4):catalyst(4):done()
        }
    },
    {
        type = "recipe",
        name = "pm-rhenium-oxide",
        enabled = false,
        energy_required = 6.4,
        categories = {"pm-reverberatory-smelting"},
        subgroup = "pm-rhenium-tm",
        order = "c",
        main_product = "pm-rhenium-oxide",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-rhenium-chunks", 3)
        },
        results =
        {
            PM.product("pm-rhenium-oxide"):amount(2):done(),
            PM.product("pm-ferrum"):amount(1, 2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-perrhenic-acid",
        crafting_machine_tint = 
        {
            primary = {0.969, 0.898, 0.333}
        },
        enabled = false,
        energy_required = 12,
        categories = {"pm-mixing"},
        subgroup = "pm-rhenium-tm",
        order = "d",
        main_product = "pm-perrhenic-acid",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-rhenium-oxide", 2),
            PM.ingredient("pm-nitric-acid", 5, "fluid"),
            PM.ingredient("sulfuric-acid", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-perrhenic-acid", "fluid"):amount(20):done(),
            PM.product("pm-ammonia-gas", "fluid"):amount(2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-ammonium-perrhenate",
        enabled = false,
        energy_required = 6,
        categories = {"pm-crystallisation"},
        subgroup = "pm-rhenium-tm",
        order = "e",
        main_product = "pm-ammonium-perrhenate",
        ingredients =
        {
            PM.ingredient("pm-perrhenic-acid", 10, "fluid", 2),
            PM.ingredient("pm-ammonium-chloride", 4),
            PM.ingredient("pm-coolant", 5, "fluid", 1)
        },
        results =
        {
            PM.product("pm-ammonium-perrhenate"):amount(5):done(),
            PM.product("pm-hot-coolant", "fluid"):amount(5):catalyst(5):index(1):done()
        }
    },
    {
        type = "recipe",
        name = "pm-rhenium-ore",
        enabled = false,
        energy_required = 9,
        categories = {"pm-moltening"},
        subgroup = "pm-rhenium-tm",
        order = "f",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-ammonium-perrhenate", 5),
            PM.ingredient("pm-hydrogen-gas", 17.5, "fluid")
        },
        results = 
        {
            PM.product("pm-rhenium-ore"):amount(5):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-rhenium-plate",
        enabled = false,
        energy_required = 6.4,
        categories = {"smelting"},
        subgroup = "pm-rhenium-tm",
        order = "g",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-rhenium-ore", 1)
        },
        results = 
        {
            PM.product("pm-rhenium-plate"):amount(1):done()
        }
    }
})