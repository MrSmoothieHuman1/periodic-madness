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
        PM.ingredient("pm-lead-plate", 6),
        PM.ingredient("pm-thallium-plate", 3),
        PM.ingredient("pm-bismuth-ore", 3),
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
        PM.catalyst_chance("pm-empty-glass-ampule", 2, 0.8, 2)
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
        PM.ingredient("pm-radium-ore", 4),
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
    name = "pm-tantalum-advanced-advanced-advanced-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/science/advanced-advanced-advanced-transition-metal-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/tantalum-plate.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.23
      },
    },
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "i",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-yttrium-ore", 5),
        PM.ingredient("pm-molten-zinc", 5, "fluid"),
        PM.ingredient("pm-osmiridium-plate", 3),
        PM.ingredient("pm-tantalum-plate", 3),
        PM.ingredient("pm-rhenium-plate", 2),
        PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-advanced-advanced-advanced-transition-metal-science-pack", 1),
    }
},
{
    type = "recipe",
    name = "pm-niobium-advanced-advanced-advanced-transition-metal-science-pack",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/science/advanced-advanced-advanced-transition-metal-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/niobium-plate.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.23
      },
    },
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "ia",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-yttrium-ore", 3),
        PM.ingredient("pm-molten-zinc", 5, "fluid"),
        PM.ingredient("pm-osmiridium-plate", 5),
        PM.ingredient("pm-niobium-plate", 3),
        PM.ingredient("pm-rhenium-plate", 2),
        PM.ingredient("pm-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-advanced-advanced-advanced-transition-metal-science-pack", 1),
    }
},
{
    type = "recipe",
    name = "pm-noble-gas-science-pack",
    enabled = false,
    energy_required = 6,
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    order = "j",
    allow_productivity = true,
    ingredients = 
    {
        PM.ingredient("pm-industrial-noble-gas", 80, "fluid"),
        PM.ingredient("pm-science-bottle", 1)
    },
    results = 
    {
        PM.product("pm-noble-gas-science-pack", 1)
    }
},
{
    type = "recipe",
    name = "pm-lanthanide-science-pack",
    enabled = false,
    energy_required = 6,
    subgroup = "science-pack",
    order = "k",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-cerium-plate", 20),
        PM.ingredient("pm-praseodymium", 25),
        PM.ingredient("pm-neodymium-plate", 30),
        PM.ingredient("pm-promethium-147", 8),
        PM.ingredient("pm-samarium", 25),
        PM.ingredient("pm-europium", 50),
        PM.ingredient("pm-gadolinium", 32),
        PM.ingredient("pm-terbium", 24),
        PM.ingredient("pm-dysprosium-plate", 15),
        PM.ingredient("pm-holmium-plate", 15),
        PM.ingredient("pm-erbium-plate", 50),
        PM.ingredient("pm-thulium", 10),
        PM.ingredient("pm-ytterbium-plate", 40),
        PM.ingredient("pm-lutetium", 15),
        PM.ingredient("pm-science-bottle", 1)
    },
    results = 
    {
        PM.product("pm-lanthanide-science-pack", 10)
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
        PM.ingredient("sulfur", 14),
        PM.ingredient("pm-red-phosphorus", 7)
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
        PM.ingredient("pm-lead-plate", 6),
        PM.ingredient("pm-thallium-plate", 3),
        PM.ingredient("pm-bismuth-ore", 3),
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
        PM.catalyst_chance("pm-empty-glass-ampule", 2, 0.8, 2)
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
{
    type = "recipe",
    name = "pm-plastic-alkaline-earth-metal-science-pack",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/plastic-alkaline-earth-metals-pack.png",
    subgroup = "pm-plastic-science-pack",
    order = "h",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-calcium-ore", 24),
        PM.ingredient("pm-beryllium-plate", 6),
        PM.ingredient("pm-magnesium-plate", 4),
        PM.ingredient("pm-barium-ore", 4),
        PM.ingredient("pm-radium-ore", 4),
        PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-alkaline-earth-metal-science-pack", 2),
    }
},
{
    type = "recipe",
    name = "pm-plastic-tantalum-advanced-advanced-advanced-transition-metal-science-pack",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/recipes/plastic-advanced-advanced-advanced-transition-metal-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/tantalum-plate.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.23
      },
    },
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "i",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-yttrium-ore", 5),
        PM.ingredient("pm-molten-zinc", 5, "fluid"),
        PM.ingredient("pm-osmiridium-plate", 3),
        PM.ingredient("pm-tantalum-plate", 3),
        PM.ingredient("pm-rhenium-plate", 2),
        PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-advanced-advanced-advanced-transition-metal-science-pack", 2),
    }
},
{
    type = "recipe",
    name = "pm-plastic-niobium-advanced-advanced-advanced-transition-metal-science-pack",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/recipes/plastic-advanced-advanced-advanced-transition-metal-pack.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/niobium-plate.png",
        icon_size = 64,
        shift = {8, -8},
        scale = 0.23
      },
    },
    category = "crafting-with-fluid",
    subgroup = "pm-plastic-science-pack",
    order = "ia",
    energy_required = 6,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-yttrium-ore", 3),
        PM.ingredient("pm-molten-zinc", 5, "fluid"),
        PM.ingredient("pm-osmiridium-plate", 5),
        PM.ingredient("pm-niobium-plate", 3),
        PM.ingredient("pm-rhenium-plate", 2),
        PM.ingredient("pm-plastic-science-bottle", 1)
    },
    enabled = false,
    results =
    {
        PM.product("pm-advanced-advanced-advanced-transition-metal-science-pack", 2),
    }
},

--MARK: Liquid Science
{
    type = "recipe",
    name = "pm-liquid-transition-metal-science",
    enabled = false,
    energy_required = 12,
    allow_productivity = true,
    ingredients = 
    {
        PM.ingredient("iron-plate", 15),
        PM.ingredient("pm-nickel-plate", 15),
        PM.ingredient("pm-cobalt-plate", 10),
        PM.ingredient("pm-vanadium-ore", 16),
        PM.ingredient("pm-molybdenum-ore", 20),
        PM.ingredient("pm-osmium-ore", 12),
       -- PM.ingredient("pm-rutherfordium", 10)
    },
    results = 
    {
        PM.product("automation-science-pack", 10)
    }
},
{
    type = "recipe",
    name = "pm-liquid-advanced-transition-metal-science",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-gold-plate", 35),
        PM.ingredient("pm-manganese-plate", 35),
        PM.ingredient("pm-liquid-mercury", 200, "fluid"),
        PM.ingredient("pm-chromium-ore", 30),
        PM.ingredient("pm-zirconia", 10),
        PM.ingredient("pm-hafnium-ore", 20),
        PM.ingredient("pm-iridium-plate", 12)
    },
    results =
    {
        PM.product("logistic-science-pack", 10)
    }
},
{
    type = "recipe",
    name = "pm-liquid-advanced-advanced-transition-metal-science",
    enabled = false,
    energy_required = 12,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-titanium-plate", 60),
        PM.ingredient("pm-tungsten-plate", 60),
        PM.ingredient("copper-plate", 100),
        PM.ingredient("pm-silver-plate", 100),
        PM.ingredient("pm-palladium-plate", 30),
        PM.ingredient("pm-platinum-plate", 30),
        PM.ingredient("pm-cadnium-plate", 15),
    },
    results =
    {
        PM.product("pm-advanced-advanced-transition-metal-science-pack", 10)
    }
},
{
    type = "recipe",
    name = "pm-liquid-reactive-non-metal-science",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("sulfur", 80),
        PM.ingredient("pm-chlorine", 100, "fluid"),
        PM.ingredient("pm-nitrogen-gas", 100, "fluid"),
        PM.ingredient("pm-oxygen-gas", 100, "fluid"),
        PM.ingredient("pm-carbon", 200),
        PM.ingredient("pm-selenium-plate", 20),
        PM.ingredient("pm-red-phosphorus", 30),
        PM.ingredient("pm-flourine", 15),
        PM.ingredient("pm-bromine", 50, "fluid"),
        PM.ingredient("pm-iodine", 15)
    },
    results =
    {
        PM.product("chemical-science-pack", 10)
    }
},
{
    type = "recipe",
    name = "pm-liquid-post-transition-metal-science",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-liquid-gallium", 50, "fluid"),
        PM.ingredient("pm-thallium-plate", 15),
        PM.ingredient("pm-lead-plate", 45),
        PM.ingredient("pm-bismuth-ore", 15),
        PM.ingredient("pm-tin-plate", 30),
        PM.ingredient("pm-aluminium-plate", 30),
        PM.ingredient("pm-indium-plate", 20),
        PM.ingredient("pm-polonium-210", 10),
        PM.ingredient("pm-trace-astatine-211", 10)
    },
    results =
    {
        PM.product("pm-post-transition-metal-science-pack", 10)
    }
},
{
    type = "recipe",
    name = "pm-liquid-alkali-metal-science",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    main_product = "pm-alkali-metal-science-pack",
    ingredients =
    {
        PM.ingredient("pm-sodium", 150),
        PM.ingredient("pm-lithium-ore", 50),
        PM.ingredient("pm-potassium", 60),
        PM.ingredient("pm-rubidium", 12),
        PM.ingredient("pm-caesium-glass-ampule", 10),
        PM.ingredient("pm-francium-glass-ampule", 10)
    },
    results =
    {
        PM.product("pm-alkali-metal-science-pack", 10),
        PM.catalyst_chance("pm-empty-glass-ampule", 20, 0.95, 20)
    }
},
{
    type = "recipe",
    name = "pm-liquid-metalloid-science",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-arsenic-ore", 45),
        PM.ingredient("pm-antimony-ore", 45),
        PM.ingredient("pm-industrial-grade-silicon-ore", 30),
        PM.ingredient("pm-germanium-ore", 30),
        PM.ingredient("pm-tellurium-plate", 60),
        PM.ingredient("pm-boron", 140, "fluid")
    },
    results =
    {
        PM.product("pm-metalloid-science-pack", 10),
    }
},
{
    type = "recipe",
    name = "pm-liquid-alkaline-earth-metal-science",
    enabled = false,
    energy_required = 12,
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-calcium-ore", 160),
        PM.ingredient("pm-beryllium-plate", 30),
        PM.ingredient("pm-magnesium-plate", 30),
        PM.ingredient("pm-strontium-ore", 15),
        PM.ingredient("pm-barium-ore", 25),
        PM.ingredient("pm-radium-ore", 25)
    },
    results =
    {
        PM.product("pm-alkaline-earth-metal-science-pack", 10),
    }
},
{
    type = "recipe",
    name = "pm-liquid-advanced-advanced-advanced-transition-metal-science",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-yttrium-ore", 30),
        PM.ingredient("pm-osmiridium-plate", 30),
        PM.ingredient("pm-rhenium-plate", 12),
        PM.ingredient("pm-tantalum-plate", 20),
        PM.ingredient("pm-niobium-plate", 20),
        PM.ingredient("pm-molten-zinc", 35, "fluid"),
        PM.ingredient("pm-ruthenium-plate", 10),
        PM.ingredient("pm-rhodium-plate", 15),
    },
    results =
    {
        PM.product("pm-advanced-advanced-advanced-transition-metal-science-pack", 10),
    }
},
{
    type = "recipe",
    name = "pm-liquid-noble-gas-science",
    enabled = false,
    energy_required = 12,
    category = "crafting-with-fluid",
    allow_productivity = true,
    ingredients =
    {
        PM.ingredient("pm-industrial-noble-gas", 600, "fluid")
    },
    results =
    {
        PM.product("pm-noble-gas-science-pack", 10),
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
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 3)
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
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 3)
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
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 3)
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
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 3)
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
        PM.catalyst_range_chance("pm-empty-glass-ampule", 1, 3, 0.95, 3)
    }
},

--MARK: Technectium science
{
    type = "recipe",
    name = "pm-experimental-research-data",
    energy_required = 60,
    allow_productivity = true,
    main_product = "pm-experimental-research-data",
    ingredients =
    {
        PM.ingredient("processing-unit", 4),
        PM.ingredient("pm-polyethylene-plastic", 10),
        PM.ingredient("pm-glass-fibers", 8),
        PM.ingredient("pm-francium-glass-ampule", 5),
        PM.ingredient("pm-technectium-99", 3),
        PM.ingredient("pm-usable-dubnium", 2),
    },
    enabled = false,
    results =
    {
        PM.product("pm-experimental-research-data", 5),
        PM.catalyst("pm-empty-glass-ampule", 5, 5)
    }
},

--MARK: Bio-modules
{
    type = "recipe",
    name = "pm-blank-bio-module",
    subgroup = "pm-bio-modules-rnm",
    order = "a",
    energy_required = 7.5,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-anti-bacterial-panelling", 8),
      PM.ingredient("advanced-circuit", 6),
      PM.ingredient("pm-gold-wire", 10),
    },
    results =
    {
      PM.product("pm-blank-bio-module", 1)
    }
},
{
    type = "recipe",
    name = "pm-agility-bio-module",
    energy_required = 7.5,
    category = "chemistry",
    subgroup = "pm-bio-modules-rnm",
    order = "b",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-blank-bio-module", 1),
      PM.ingredient("pm-phosphoramidite", 4, "fluid"),
      PM.ingredient("pm-gene-base", 20, "fluid")
    },
    results =
    {
      PM.product("pm-agility-bio-module", 1)
    }
},
{
    type = "recipe",
    name = "pm-health-bio-module",
    energy_required = 7.5,
    category = "chemistry",
    subgroup = "pm-bio-modules-rnm",
    order = "b",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-blank-bio-module", 1),
      PM.ingredient("pm-CISD2", 4, "fluid"),
      PM.ingredient("pm-gene-base", 20, "fluid")
    },
    results =
    {
      PM.product("pm-health-bio-module", 1)
    }
},
{
    type = "recipe",
    name = "pm-strength-bio-module",
    energy_required = 7.5,
    category = "chemistry",
    subgroup = "pm-bio-modules-rnm",
    order = "c",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-blank-bio-module", 1),
      PM.ingredient("pm-legendary-myostatin", 4, "fluid"),
      PM.ingredient("pm-gene-base", 20, "fluid")
    },
    results =
    {
      PM.product("pm-strength-bio-module", 1)
    }
},
})

data.raw["recipe"]["chemical-science-pack"].order = "e"
data.raw["recipe"]["production-science-pack"].order = "x"
data.raw["recipe"]["utility-science-pack"].order = "xa"

data.raw["item-subgroup"]["science-pack"].group = "pm-science"
data.raw["item-subgroup"]["science-pack"].order = "b"
