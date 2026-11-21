data:extend({
    {
        type = "fluid",
        name = "pm-oganesson-294",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/oganesson-294.png",
        subgroup = "pm-oganesson-nb",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0.7, g = 1, b = 0.7},
        flow_color = {r = 0.7, g = 1, b = 0.7},
    },

    {
        type = "recipe",
        name = "pm-oganesson-294",
        enabled = false,
        energy_required = 60,
        categories = {"ENOUGHISNEVER"},
        main_product = "pm-oganesson-294",
        ingredients =
        {
            PM.ingredient("pm-calcium-48", 10),
            PM.ingredient("pm-tennessine-294", 5)
        },
        results =
        {
            PM.product("pm-calcium-48"):amount(8):chance(0, 0.6):done(),
            PM.product("pm-tennessine-294"):amount(4):chance(0, 0.6):done(),
            PM.product("pm-oganesson-294", "fluid"):amount(2):chance(0.6, 1):done(),
        }
    },
})