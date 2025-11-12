data:extend({
  {
    type = "fluid",
    name = "pm-krypton-gas",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/helium-gas.png",
    subgroup = "pm-krypton-nb",
    order = "a",
    default_temperature = 15,
    base_color = {r = 0.7, g = 1, b = 0.7},
    flow_color = {r = 0.7, g = 1, b = 0.7},
    auto_barrel = false,
  },

{
    type = "recipe",
    name = "pm-krypton-gas-into-industrial-noble-gas",
    enabled = false,
    energy_required = 4,
    category = "pm-atmospheric-condensing",
    subgroup = "pm-krypton-nb",
    order = "c",
    main_product = "pm-industrial-noble-gas",
    ingredients =
    {
        PM.ingredient("pm-krypton-gas", 12.5, "fluid"),
        PM.ingredient("pm-nickel-tungsten-catalyst", 2)
    },
    results = 
    {
        PM.product("pm-industrial-noble-gas", 5, "fluid"),
        PM.product_chance("pm-nickel-tungsten-catalyst", 2, 0.85),
        PM.product_chance("pm-catalyst-container", 2, 0.15)
    }
},
})