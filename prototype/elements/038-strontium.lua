data:extend({

    {
        type = "item",
        name = "pm-celestine",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/celestine.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/ores/celestine.png", size = 64, scale = 0.5},
            { filename = "__periodic-madness__/graphics/icons/ores/celestine-2.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-strontium-aem",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-strontium-black-ash",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/strontium-black-ash.png",
        subgroup = "pm-strontium-aem",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-strontium-sulfide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/strontium-sulfide.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/strontium-sulfide.png", size = 64, scale = 0.5},
            { filename = "__periodic-madness__/graphics/icons/strontium-sulfide-2.png", size = 64, scale = 0.5},
            { filename = "__periodic-madness__/graphics/icons/strontium-sulfide-3.png", size = 64, scale = 0.5},
            { filename = "__periodic-madness__/graphics/icons/strontium-sulfide-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-strontium-aem",
        order = "d",
        stack_size = 225
    },
    {
        type = "item",
        name = "pm-strontium-carbonate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/strontium-carbonate.png",
        pictures =
        {
            { filename = "__periodic-madness__/graphics/icons/strontium-carbonate.png", size = 64, scale = 0.5},
            { filename = "__periodic-madness__/graphics/icons/strontium-carbonate-2.png", size = 64, scale = 0.5},
            { filename = "__periodic-madness__/graphics/icons/strontium-carbonate-3.png", size = 64, scale = 0.5},
            { filename = "__periodic-madness__/graphics/icons/strontium-carbonate-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-strontium-aem",
        order = "e",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-strontium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/strontium-ore-icon.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/strontium-ore-icon.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/strontium-ore-icon-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/strontium-ore-icon-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-strontium-aem",
        fuel_value = "10MJ",
        fuel_category = "pm-strontium",
        order = "e",
        protons = 38,
        neutrons = 50,
        stack_size = 200
    },

    {
    type = "fluid",
    name = "pm-strontium-sulfide-solution",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/strontium-sulfide-solution.png",
    subgroup = "pm-strontium-aem",
    order = "c",
    default_temperature = 15,
    base_color = {r = 0.3, g = 0.3, b = 0.2},
    flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },

    {
        type = "recipe",
        name = "pm-celestine",
        enabled = false,
        energy_required = 10,
        categories = {"pm-acids"},
        subgroup = "pm-strontium-aem",
        order = "a",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-alkaline-earth-metals-ore", 20),
            PM.ingredient("pm-chromic-acid", 25, "fluid"),
        },
        results =
        {
            PM.product("pm-celestine"):amount(6):done()
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-black-ash",
        crafting_machine_tint = 
        {
            primary = {0.251, 0.31, 0.302}
        },
        enabled = false,
        energy_required = 12,
        categories = {"pm-mixing"},
        subgroup = "pm-strontium-aem",
        order = "b",
        main_product = "pm-strontium-black-ash",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-celestine", 6),
            PM.ingredient("pm-sodium-hydroxide", 10, "fluid")
        },
        results =
        {
            PM.product("pm-strontium-black-ash"):amount(4, 12):done(),
            PM.product("pm-celestine"):amount(0, 4):chance(0.45):done(),
            PM.product("pm-sodium-hydroxide", "fluid"):amount(0, 5):chance(0.45):catalyst(2.5):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-sulfide-solution",
        enabled = false,
        energy_required = 5,
        categories = {"chemistry"},
        subgroup = "pm-strontium-aem",
        order = "c",
        main_product = "pm-strontium-sulfide-solution",
        ingredients =
        {
            PM.ingredient("pm-strontium-black-ash", 5),
            PM.ingredient("water", 40, "fluid"),
            PM.ingredient("pm-ion-exchange-beads", 8)
        },
        results =
        {
            PM.product("pm-ion-exchange-beads"):amount(2, 8):catalyst(2):done(),
            PM.product("pm-strontium-sulfide-solution", "fluid"):amount(10, 12.5):done(),
            PM.product("pm-acidic-water", "fluid"):amount(0, 25):chance(0.5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-sulfide",
        enabled = false,
        energy_required = 15,
        categories = {"chemistry"},
        subgroup = "pm-strontium-aem",
        order = "d",
        main_product = "pm-strontium-sulfide",
        ingredients =
        {
            PM.ingredient("pm-strontium-sulfide-solution", 5, "fluid"),
            PM.ingredient("pm-carbon-dioxide-gas", 20, "fluid")
        },
        results =
        {
            PM.product("pm-strontium-sulfide"):amount(3):chance(0.75):done(),
            PM.product("pm-strontium-carbonate"):amount(1):chance(0.25):done(),
            PM.product("pm-carbon-monoxide", "fluid"):amount(10, 30):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-carbonate",
        enabled = false,
        energy_required = 10,
        categories = {"chemistry"},
        subgroup = "pm-strontium-aem",
        order = "f",
        main_product = "pm-strontium-carbonate",
        ingredients =
        {
            PM.ingredient("pm-strontium-sulfide", 3),
            PM.ingredient("pm-carbon", 10)
        },
        results =
        {
            PM.product("pm-strontium-carbonate"):amount(2):done(),
            PM.product("pm-carbon-dioxide-gas", "fluid"):amount(5, 12):done()
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-ore",
        enabled = false,
        energy_required = 5,
        categories = {"chemistry"},
        subgroup = "pm-strontium-aem",
        order = "e",
        main_product = "pm-strontium-ore",
        ingredients =
        {
            PM.ingredient("pm-strontium-carbonate", 2),
            PM.ingredient("pm-aluminium-plate", 5) --catalyst for hard mode
        },
        results =
        {
            PM.product("pm-strontium-ore"):amount(1, 4):done(),
            PM.product("pm-bauxite"):amount(0, 3):chance(0.55):done(),
            PM.product("pm-patina"):amount(0, 2):chance(0.45):done(),
        }
    },
    {
        type = "recipe",
        name = "pm-strontium-fuel-rod",
        enabled = false,
        subgroup = "pm-fuel-rods",
        order = "c",
        energy_required = 15,
        allow_productivity = true,
        ingredients = 
        {
          PM.ingredient("pm-strontium-ore", 2),
          PM.ingredient("pm-empty-fuel-rod", 5)
        },
        results = 
        {
          PM.product("pm-strontium-fuel-rod"):amount(5):done()
        }
      },
})