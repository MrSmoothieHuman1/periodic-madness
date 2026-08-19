data:extend({
    {
        type = "item",
        name = "pm-uranium-233",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/uranium-233.png",
        fuel_value = "5GJ",
        fuel_category = "pm-uranium-233",
        subgroup = "pm-uranium-ac",
        order = "ca",
        stack_size = 100,
    },

    {
        type = "recipe",
        name = "pm-uranium-233",
        enabled = false,
        energy_required = 12,
        categories = {"pm-beta-decay"},
        main_product = "pm-uranium-233",
        allow_productivity = true,
        ingredients = 
        {
            PM.ingredient("pm-protactinium-233", 6),
        },
        results =
        {
            PM.product("pm-uranium-233"):amount(3):chance(0, 0.5):done(),
            PM.product("pm-protactinium-233"):amount(3):chance(0.5, 1):catalyst(3):done()
        }
    },
})

data.raw["item"]["uranium-ore"].subgroup = "pm-uranium-ac"
data.raw["item"]["uranium-ore"].order = "a"
data.raw["item"]["uranium-235"].subgroup = "pm-uranium-ac"
data.raw["item"]["uranium-235"].order = "b"
data.raw["item"]["uranium-238"].subgroup = "pm-uranium-ac"
data.raw["item"]["uranium-238"].order = "c"
data.raw["item"]["uranium-fuel-cell"].subgroup = "pm-uranium-ac"
data.raw["item"]["uranium-fuel-cell"].order = "d"
data.raw["item"]["depleted-uranium-fuel-cell"].subgroup = "pm-uranium-ac"
data.raw["item"]["depleted-uranium-fuel-cell"].order = "e"
data.raw["item"]["nuclear-fuel"].subgroup = "pm-uranium-ac"
data.raw["item"]["nuclear-fuel"].order = "e"
data.raw["recipe"]["uranium-processing"].subgroup = "pm-uranium-ac"
data.raw["recipe"]["uranium-processing"].order = "a"
data.raw["recipe"]["kovarex-enrichment-process"].subgroup = "pm-uranium-ac"
data.raw["recipe"]["kovarex-enrichment-process"].order = "b"
data.raw["recipe"]["uranium-fuel-cell"].subgroup = "pm-uranium-ac"
data.raw["recipe"]["uranium-fuel-cell"].order = "c"
data.raw["recipe"]["nuclear-fuel-reprocessing"].subgroup = "pm-uranium-ac"
data.raw["recipe"]["nuclear-fuel-reprocessing"].order = "d"
data.raw["recipe"]["nuclear-fuel"].subgroup = "pm-uranium-ac"
data.raw["recipe"]["nuclear-fuel"].order = "e"