if feature_flags["rail-bridges"] then

    data.raw["technology"]["elevated-rail"].unit.ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
    }
    data.raw["technology"]["elevated-rail"].prerequisites = {"railway", "pm-post-transition-metal-pack-unlock"}

    data.raw["recipe"]["rail-support"].energy_required = 2
    data.raw["recipe"]["rail-support"].ingredients = 
    {
        PM.ingredient("pm-refined-concrete", 10),
        PM.ingredient("pm-heavyweight-framing", 20),
        PM.ingredient("pm-lightweight-framing", 15)
    }
    data.raw["recipe"]["rail-ramp"].energy_required = 2
    data.raw["recipe"]["rail-ramp"].ingredients = 
    {
        PM.ingredient("rail", 8),
        PM.ingredient("pm-lightweight-framing", 15),
        PM.ingredient("pm-refined-concrete", 25)
    }
end