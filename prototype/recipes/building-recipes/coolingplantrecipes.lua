data:extend({

{
    type = "recipe",
    name = "pm-coolant",
    category = "pm-cooling",
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
        PM.product("pm-coolant", 10, "fluid")
    }
},
{
    type = "recipe",
    name = "pm-light-coolant",
    category = "pm-cooling",
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
        PM.product("pm-light-coolant", 10, "fluid")
    }
},

{
    type = "recipe",
    name = "pm-hot-coolant-cooling",
    category = "pm-cooling",
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
        PM.product("pm-coolant", 9.5, "fluid")
    }
},
{
    type = "recipe",
    name = "pm-hot-light-coolant-cooling",
    category = "pm-cooling",
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
        PM.product("pm-light-coolant", 9.75, "fluid")
    }
},
})