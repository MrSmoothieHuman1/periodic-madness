data:extend({

    {
        type = "recipe",
        name = "pm-bromine-leeching",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-bromide-leeching.png",
        enabled = false,
        energy_required = 12,
        category = "pm-washing",
        subgroup = "pm-bromine-rnm",
        order = "a",
        ingredients = 
        {
            {type = "fluid", name = "pm-seawater", amount = 100},
            {type = "fluid", name = "pm-atmosphere", amount = 20}
        },
        results = 
        {
            {type = "fluid", name = "pm-hydrogen-bromide", amount_min = 14, amount_max = 28},
            {type = "fluid", name = "pm-trace-gas", amount = 5}
        }
    },
    {
        type = "recipe",
        name = "pm-hydrogen-bromide-seperation",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/recipes/hydrogen-bromide-seperation.png",
        enabled = false,
        energy_required = 8,
        category = "pm-electrolysis",
        subgroup = "pm-bromine-rnm",
        order = "b",
        ingredients =
        {
            {type = "fluid", name = "pm-hydrogen-bromide", amount = 14},
            {"pm-palladium-catalyst", 2}
        },
        results =
        {
            {type = "fluid", name = "pm-bromine-ions", amount = 8},
            {type = "fluid", name = "pm-hydrogen-gas", amount = 8},
            {
                name = "pm-catalyst-container",
                amount_min = 1,
                amount_max = 2,
            }
        }
    },
    {
        type = "recipe",
        name = "pm-bromide-ion-oxidisation",
        icon_size = 64,
        enabled = false,
        energy_required = 6,
        category = "chemistry",
        subgroup = "pm-bromine-rnm",
        order = "c",
        ingredients =
        {
            {type = "fluid", name = "pm-bromine-ions", amount = 8},
            {type = "fluid", name = "pm-chlorine", amount = 24}
        },
        results = 
        {
            {type = "fluid", name = "pm-trace-bromine", amount = 6}
        }
    },
    {
        type = "recipe",
        name = "pm-trace-bromine-condensation",
        enabled = false,
        energy_required = 4,
        category = "pm-atmospheric-condensing",
        subgroup = "pm-bromine-rnm",
        order = "d",
        ingredients =
        {
            {type = "fluid", name = "pm-trace-bromine", amount = 6},
        },
        results = 
        {
            {type = "fluid", name = "pm-bromine", amount = 4}
        }
    },
    {
        type = "recipe",
        name = "pm-vinyl-bromide",
        enabled = false,
        energy_required = 4,
        category = "chemistry",
        subgroup = "pm-bromine-rnm",
        order = "e",
        main_product = "pm-vinyl-bromide",
        ingredients = 
        {
            {type = "fluid", name = "pm-ethylene-gas", amount = 5},
            {type = "fluid", name = "pm-bromine", amount = 4}
        },
        results = 
        {
            {type = "fluid", name = "pm-vinyl-bromide", amount = 10},
            {type = "fluid", name = "pm-hydrogen-bromide", amount_min = 1, amount_max = 3}
        }
    },

    {
        type = "recipe",
        name = "pm-bromine-leeching",
        enabled = false,
        energy_required = 45,
        category = "pm-leaching",
        subgroup = "pm-bromine-rnm",
        order = "f",
        ingredients = 
        {
            {"pm-potash", 25},
            {"pm-sea-salt", 30},
            {type = "fluid", name = "pm-high-brine", amount = 50}
        },
        results = 
        {
            {type = "fluid", name = "pm-bromine-ions", amount_min = 20, amount_max = 40}
        }
    }
})