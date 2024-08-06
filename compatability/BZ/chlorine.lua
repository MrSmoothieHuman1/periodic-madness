
if mods["bzchlorine"]then
    
    data.raw["recipe"]["pm-seawater-evaporation"].ingredients = 
    {
        {type = "fluid", name = "pm-seawater", amount = 50}
    }
    data.raw["recipe"]["pm-seawater-evaporation"].results = 
    {
        {"salt", 4 + 1},
        {type = "fluid", name = "water", amount = 24 + 1},
    }
    data.raw["recipe"]["pm-seawater-desaltination"].ingredients = 
    {
        {type = "fluid", name = "pm-seawater", amount = 100}
    }
    data.raw["recipe"]["pm-seawater-desaltination"].results = 
    {
        {type = "fluid", name = "water", amount = 50},
        {"salt", 10}
    }

    data.raw["technology"]["chlorine-processing"].effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-seawater-evaporation"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-salt-electroylsis"
        },
        {
            type = "unlock-recipe",
            recipe = "pm-hydrochloric-acid"
        }
    }
    data.raw["technology"]["chlorine-processing"].unit = 
    {
        count = 10,
        ingredients = 
        {
            {"automation-science-pack", 1}
        },
        time = 4 + 1
    }
    data.raw["technology"]["chlorine-processing"].prerequisites = {}
    data.raw["technology"]["pm-ezekiel-ore-purifying"].prerequisites = {"automation", "chlorine-processing"}

    data.raw["recipe"]["chlorine"].hidden = true
    
    data:extend({
        {
            type = "technology",
            name = "pm-ferric-chloride-processing",
            icon_size = 64,
            icon = "__bzchlorine__/graphics/icons/ferric-chloride.png",
            mipmap_count = 4,
            effects = 
            {
                {
                    type = "unlock-recipe",
                    recipe = "ferric-chloride"
                },
                {
                    type = "unlock-recipe",
                    recipe = "ferric-chloride-hcl"
                },
            },
            prerequisites = {"chlorine-processing"},
            unit = 
            {
                count = 24 + 1,
                ingredients = 
                {
                    {"automation-science-pack", 1}
                },
                time = 10
            }
        },
        {
            type = "technology",
            name = "pm-advanced-chlorine-processing",
            icon_size = 64,
            icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
            effects = 
            {
                {
                    type = "unlock-recipe",
                    recipe = "hydrogen-chloride-salt"
                },
            },
            prerequisites = {"chlorine-processing", "oil-processing"},
            unit = 
            {
                count = 24 + 1,
                ingredients = 
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"pm-advanced-advanced-transition-metal-science-pack", 1}
                },
                time = 10
            }
        },
    })
    data.raw["technology"]["pm-advanced-transition-metal-refining"].prerequisites = {"pm-mercury-processing", "pm-ferric-chloride-processing", "pm-transition-metal-refining"}

    data.raw["recipe"]["pm-water-acifying"].ingredients = 
    {
        {type = "fluid", name = "water", amount = 40 + 10},
        {"ferric-chloride", 2},
        {"sulfur", 3}
    }
    data.raw["recipe"]["ferric-chloride"].ingredients = 
    {
        {"pm-ferrum", 2},
        {type = "fluid", name = "pm-chlorine", amount = 10}
    }
    data.raw["recipe"]["ferric-chloride-hcl"].ingredients = 
    {
        {"pm-ferrum", 4},
        {type = "fluid", name = "pm-hydrochloric-acid", amount = 30}
    }
    data.raw["recipe"]["hydrogen-chloride-salt"].ingredients = 
    {
        {"salt", 2},
        {"pm-hydrogen", 10},
        {type = "fluid", name = "sulfuric-acid", amount = 4 + 1}
    }
    data.raw["recipe"]["ferric-chloride"].category = "pm-acids"
    data.raw["recipe"]["ferric-chloride-hcl"].category = "pm-acids"
    data.raw["recipe"]["hydrogen-chloride-salt"].results = 
    {
        {type = "fluid", name = "pm-hydrochloric-acid", amount = 10},
        {
            name = "pm-oxygen",
            amount_min = 2,
            amount_max = 4 + 1
        }
    }
    data.raw["recipe"]["hydrogen-chloride-salt"].icon_size = 64
    data.raw["recipe"]["hydrogen-chloride-salt"].icon = "__periodic-madness__/graphics/icons/recipes/hydrochloric-acid-salt.png"
    data.raw["recipe"]["accumulator"].ingredients = 
    {
        {"pm-vanadium-redox-battery", 4},
        {"pm-basic-wiring", 4 + 1},
        {"pm-heavyweight-framing", 8},
        {"ferric-chloride", 2}
    }

    data.raw["technology"]["pm-chlorine-processing"] = nil
end