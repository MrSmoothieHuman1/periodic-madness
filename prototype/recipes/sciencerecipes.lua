local PM = require("library")
data:extend({
{
    type = "recipe",
    name = "pm-advanced-advanced-transition-metal-science-pack",
    subgroup = "science-pack",
    order = "c",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-titanium-plate", 8),
        PM.ingredient("pm-tungsten-plate", 8),
        PM.ingredient("pm-silver-plate", 15),
        PM.ingredient("copper-plate", 15),
        PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =   
    {
        PM.product("pm-advanced-advanced-transition-metal-science-pack", 1),
    }
},
{
    type = "recipe",
    name = "pm-post-transition-metal-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "e",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-aluminium-plate", 5),
        PM.ingredient("pm-tin-plate", 5),
        PM.ingredient("pm-lead-plate", 8),
        PM.ingredient("pm-thallium-ore", 3),
        PM.ingredient("pm-bismuth-ore", 4),
        PM.ingredient("pm-liquid-gallium", 10, "fluid"),
        PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-post-transition-metal-science-pack", 1),
    }
},
{
    type = "recipe",
    name = "pm-alkali-metal-science-pack",
    subgroup = "science-pack",
    order = "fa",
    energy_required = 6,
    allow_productivity = true,
    main_product = "pm-alkali-metal-science-pack",
    ingredients =
    {
        PM.ingredient("pm-caesium-glass-ampule", 2),
        PM.ingredient("pm-potassium", 12),
        PM.ingredient("pm-sodium", 20),
        PM.ingredient("pm-lithium-ore", 10),
        PM.ingredient("pm-rubidium", 2),
        PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-alkali-metal-science-pack", 1),
        PM.catalyst_chance("pm-empty-glass-ampule", 2, 0.8, 0)
    }
},
{
    type = "recipe",
    name = "pm-metalloid-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "g",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-antimony-ore", 6),
        PM.ingredient("pm-arsenic-ore", 6),
        PM.ingredient("pm-boron", 24, "fluid"),
        PM.ingredient("pm-tellurium-plate", 10),
        PM.ingredient("pm-germanium-ore", 4),
        PM.ingredient("pm-industrial-grade-silicon-ore", 3),
        PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-metalloid-science-pack", 1),
    }
},
{
    type = "recipe",
    name = "pm-alkaline-earth-metal-science-pack",
    subgroup = "science-pack",
    order = "h",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-calcium-ore", 24),
        PM.ingredient("pm-beryllium-plate", 6),
        PM.ingredient("pm-magnesium-plate", 4),
        PM.ingredient("pm-barium-ore", 4),
        PM.ingredient("pm-radium-ore", 2),
        PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-alkaline-earth-metal-science-pack", 1),
    }
},
{
    type = "recipe",
    name = "pm-advanced-advanced-advanced-transition-metal-science-pack",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "i",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-yttrium-ore", 4),
        PM.ingredient("pm-molten-zinc", 5, "fluid"),
        PM.ingredient("pm-osmiridium-plate", 2),
        PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-advanced-advanced-advanced-transition-metal-science-pack", 1),
    }
},
--MARK: Plastic Science
{
    type = "recipe",
    name = "pm-plastic-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-transition-metal-pack.png",
    subgroup = "pm-plastic-science-pack",
    order = "b",
    enabled = false,
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("iron-plate", 2),
        PM.ingredient("pm-plastic-science-bottle", 1),
        PM.ingredient("pm-nickel-plate", 2),
    },
    results =
    {
        PM.product("automation-science-pack", 2)
    }
},
{
    type = "recipe",
    name = "pm-plastic-advanced-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-advanced-transition-metal-pack.png",
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "c",
    enabled = false,
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-gold-plate", 5),
        PM.ingredient("pm-plastic-science-bottle", 1),
        PM.ingredient("pm-liquid-mercury", 25, "fluid"),
        PM.ingredient("pm-manganese-plate", 5),
    },
    results =
    {
        PM.product("logistic-science-pack", 2)
    }
},
{
    type = "recipe",
    name = "pm-plastic-advanced-advanced-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-advanced-advanced-transition-metal-pack.png",
    subgroup = "pm-plastic-science-pack",
    order = "d",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-titanium-plate", 8),
        PM.ingredient("pm-tungsten-plate", 8),
        PM.ingredient("pm-silver-plate", 15),
        PM.ingredient("copper-plate", 15),
        PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-advanced-advanced-transition-metal-science-pack", 2),
    }
},
{
    type = "recipe",
    name = "pm-plastic-reactive-non-metals-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-reactive-non-metals-pack.png",
    subgroup = "pm-plastic-science-pack",
    category = "crafting-with-fluid",
    order = "e",
    energy_required = 6,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-plastic-science-bottle", 1),
        PM.ingredient("pm-chlorine", 14 * 2, "fluid"),
        PM.ingredient("pm-nitrogen-gas", 14 * 2, "fluid"),
        PM.ingredient("pm-carbon", 14 * 2),
        PM.ingredient("sulfur", 14)
    },
    results =
    {
        PM.product("chemical-science-pack", 2)
    }
},
{
    type = "recipe",
    name = "pm-plastic-post-transition-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-post-transition-metal-pack.png",
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "e",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-aluminium-plate", 5),
        PM.ingredient("pm-tin-plate", 5),
        PM.ingredient("pm-lead-plate", 8),
        PM.ingredient("pm-thallium-ore", 3),
        PM.ingredient("pm-bismuth-ore", 4),
        PM.ingredient("pm-liquid-gallium", 10, "fluid"),
        PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-post-transition-metal-science-pack", 2),
    }
},
{
    type = "recipe",
    name = "pm-plastic-alkali-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-alkali-metals-pack.png",
    subgroup = "pm-plastic-science-pack",
    order = "f",
    energy_required = 6,
    allow_productivity = true,
    main_product = "pm-alkali-metal-science-pack",
    ingredients =
    {
        PM.ingredient("pm-caesium-glass-ampule", 2),
        PM.ingredient("pm-potassium", 12),
        PM.ingredient("pm-sodium", 20),
        PM.ingredient("pm-lithium-ore", 10),
        PM.ingredient("pm-rubidium", 2),
        PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-alkali-metal-science-pack", 2),
        PM.catalyst_chance("pm-empty-glass-ampule", 2, 0.8, 0)
    }
},
{
    type = "recipe",
    name = "pm-plastic-metalloid-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-metalloid-pack.png",
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "g",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-antimony-ore", 6),
        PM.ingredient("pm-arsenic-ore", 6),
        PM.ingredient("pm-boron", 16, "fluid"),
        PM.ingredient("pm-tellurium-plate", 10),
        PM.ingredient("pm-germanium-ore", 4),
        PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-metalloid-science-pack", 2),
    }
},

--MARK: Francium Science

{
    type = "recipe",
    name = "pm-FUCK-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
        {
            icon = "__base__/graphics/icons/automation-science-pack.png",
            icon_size = 64,
        },
        {
            icon = "__periodic-madness__/graphics/icons/francium-glass-ampule.png",
            icon_size = 64,
            scale = 0.32
        },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-francium-glass-ampule", 2),
        PM.ingredient("pm-science-bottle", 5),
        PM.ingredient("pm-transition-metals-ore", 10)
    },
    results =
    {
        PM.product("automation-science-pack", 5),
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 0)
    }
},
{
    type = "recipe",
    name = "pm-FUCK-advanced-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
        {
            icon = "__periodic-madness__/graphics/icons/science/advanced-transition-metal-pack.png",
            icon_size = 64,
        },
        {
            icon = "__periodic-madness__/graphics/icons/francium-glass-ampule.png",
            icon_size = 64,
            scale = 0.32
        },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-francium-glass-ampule", 3),
        PM.ingredient("pm-science-bottle", 5),
        PM.ingredient("pm-transition-metals-ore", 20)
    },
    results =
    {
        PM.product("logistic-science-pack", 5),
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 0)
    }
},
{
    type = "recipe",
    name = "pm-FUCK-advanced-advanced-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
        {
            icon = "__periodic-madness__/graphics/icons/science/advanced-advanced-transition-metal-pack.png",
            icon_size = 64,
        },
        {
            icon = "__periodic-madness__/graphics/icons/francium-glass-ampule.png",
            icon_size = 64,
            scale = 0.32
        },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "c",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-francium-glass-ampule", 3),
        PM.ingredient("pm-science-bottle", 5),
        PM.ingredient("pm-transition-metals-ore", 40)
    },
    results =
    {
        PM.product("pm-advanced-advanced-transition-metal-science-pack", 5),
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 0)
    }
},
{
    type = "recipe",
    name = "pm-FUCK-reactive-non-metals-science-pack",
    icon_size = 64,
    icons =
    {
        {
            icon = "__periodic-madness__/graphics/icons/science/reactive-non-metals-pack.png",
            icon_size = 64,
        },
        {
            icon = "__periodic-madness__/graphics/icons/francium-glass-ampule.png",
            icon_size = 64,
            scale = 0.32
        },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "e",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-francium-glass-ampule", 3),
        PM.ingredient("pm-science-bottle", 5),
        PM.ingredient("pm-transition-metals-ore", 15),
        PM.ingredient("pm-post-transition-metals-ore", 15)
    },
    results =
    {
        PM.product("chemical-science-pack", 5),
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 0)
    }
},
{
    type = "recipe",
    name = "pm-FUCK-post-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
        {
            icon = "__periodic-madness__/graphics/icons/science/post-transition-metal-pack.png",
            icon_size = 64,
        },
        {
            icon = "__periodic-madness__/graphics/icons/francium-glass-ampule.png",
            icon_size = 64,
            scale = 0.32
        },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-franciuming",
    subgroup = "pm-francium-science",
    order = "d",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-francium-glass-ampule", 3),
        PM.ingredient("pm-science-bottle", 5),
        PM.ingredient("pm-post-transition-metals-ore", 20)
    },
    results =
    {
        PM.product("pm-post-transition-metal-science-pack", 5),
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 0)
    }
},

--MARK: Technectium science
{
    type = "recipe",
    name = "pm-expiremental-research-data",
    subgroup = "pm-technectium-science",
    order = "a",
    energy_required = 60,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("processing-unit", 4),
        PM.ingredient("pm-polyethylene-plastic", 10),
        PM.ingredient("pm-glass-fibers", 8)
        --PM.ingredient("pm-technectium-ore", 2),
        --PM.ingredient("pm-dubnium-ore", 2),
    },
    enabled = false,
    results =
    {
        PM.product("pm-expiremental-research-data", 5),
    }
},
})

data.raw["recipe"]["chemical-science-pack"].order = "e"
data.raw["recipe"]["production-science-pack"].order = "x"
data.raw["recipe"]["utility-science-pack"].order = "xa"

data.raw["item-subgroup"]["science-pack"].group = "pm-science"
data.raw["item-subgroup"]["science-pack"].order = "b"
