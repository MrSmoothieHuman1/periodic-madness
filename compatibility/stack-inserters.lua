local PM = require("library")

if mods["stack-inserters"] then

        --MARK: Tech changes
    data.raw["technology"]["stack-inserter"].prerequisites = {"bulk-inserter", "processing-unit", "lubrication"}
    data.raw["technology"]["stack-inserter"].unit.count = 400
    data.raw["technology"]["stack-inserter"].unit.ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1}
    }

    data.raw["technology"]["transport-belt-capacity-1"].prerequisites = {"pm-post-transition-metal-pack-unlock", "chemical-science-pack", "stack-inserter"}
    data.raw["technology"]["transport-belt-capacity-1"].unit.count = 800
    data.raw["technology"]["transport-belt-capacity-1"].unit.ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-science-pack", 1}
    }
    data.raw["technology"]["transport-belt-capacity-2"].prerequisites = {"pm-metalloid-pack-unlock", "pm-alkali-metal-pack-unlock", "transport-belt-capacity-1"}
    data.raw["technology"]["transport-belt-capacity-2"].unit.count = 1600
    data.raw["technology"]["transport-belt-capacity-2"].unit.ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
    }
    data.raw["technology"]["transport-belt-capacity-3"].prerequisites = {"pm-alkaline-metal-pack-unlock", "transport-belt-capacity-2"}
    data.raw["technology"]["transport-belt-capacity-3"].unit.count = 3200
    data.raw["technology"]["transport-belt-capacity-3"].unit.ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
    }
    data.raw["technology"]["transport-belt-capacity-4"].prerequisites = {"transport-belt-capacity-3"}
    data.raw["technology"]["transport-belt-capacity-4"].unit.count = 6400
    data.raw["technology"]["transport-belt-capacity-4"].unit.ingredients =
    {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-metalloid-science-pack", 1},
        {"pm-alkali-science-pack", 1},
        {"pm-alkaline-earth-metal-science-pack", 1}
    }

    --MARK: Inserter changes
    data.raw["inserter"]["stack-inserter"].rotation_speed = 0.014

    --MARK: Recipe changes
    data.raw["recipe"]["stack-inserter"].category = "crafting-with-fluid"
    data.raw["recipe"]["stack-inserter"].ingredients =
    {
        PM.ingredient("bulk-inserter", 1),
        PM.ingredient("pm-heavy-lubricant", 5, "fluid"),
        PM.ingredient("processing-unit", 2)
    }
    data.raw["recipe"]["stack-inserter"].energy_required = 1
end