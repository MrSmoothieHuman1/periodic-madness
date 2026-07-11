data:extend({

{
    type = "recipe",
    name = "pm-coolant",
    categories = {"pm-cooling"},
    subgroup = "pm-coolant",
    order = "b",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-ethylene-glycol", 10, "fluid"),
        PM.ingredient("pm-nitrogen-gas", 10, "fluid"),
    },
    results =
    {
        PM.product("pm-coolant", "fluid"):amount(10):done()
    }
},
{
    type = "recipe",
    name = "pm-light-coolant",
    categories = {"pm-cooling"},
    subgroup = "pm-coolant",
    order = "e",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-polydimethylsiloxane", 8, "fluid"),
        PM.ingredient("pm-coolant", 10, "fluid"),
    },
    results =
    {
        PM.product("pm-light-coolant", "fluid"):amount(10):done()
    }
},

{
    type = "recipe",
    name = "pm-hot-coolant-cooling",
    categories = {"pm-cooling"},
    subgroup = "pm-coolant",
    order = "c",
    energy_required = 8,
    enabled = false,
    ingredients =
    {
        PM.ingredient("pm-hot-coolant", 10, "fluid"),
    },
    results = 
    {
        PM.product("pm-coolant", "fluid"):amount(9.5):done()
    }
},
{
    type = "recipe",
    name = "pm-hot-light-coolant-cooling",
    categories = {"pm-cooling"},
    subgroup = "pm-coolant",
    order = "f",
    energy_required = 8,
    enabled = false,
    ingredients =
    {
        PM.ingredient("pm-hot-light-coolant", 10, "fluid"),
    },
    results = 
    {
        PM.product("pm-light-coolant", "fluid"):amount(9.75):done()
    }
},
})