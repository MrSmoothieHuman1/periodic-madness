if mods["bzfoundry"] then
    
    data.raw["recipe"]["woodcoke"] = nil

    data.raw["recipe"]["coke"].ingredients = 
    {
        {"coal", 3},
        {"wood", 2}
    }
    data.raw["recipe"]["coke"].main_product = ""
    data.raw["recipe"]["coke"].icon_size = 64
    data.raw["recipe"]["coke"].icon = "__periodic-madness__/graphics/icons/coke.png"
    data.raw["recipe"]["coke"].subgroup = "pm-alloys"
    data.raw["recipe"]["coke"].results = 
    {
        {"pm-coke", 1}
    }
    data.raw["recipe"]["foundry"].ingredients = 
    {
        {"pm-basic-panelling", 8},
        {"stone-brick", 10},
        {"pm-basic-framing", 8},
        {"copper-plate", 4}
    }
    data.raw["recipe"]["electric-foundry"].ingredients =
    {
        {"pm-stainless-steel-alloy", 10},
        {"concrete", 6},
        {"foundry", 1},
        {"pm-heating-plating", 20},
        {"pm-heavyweight-panelling", 8},
        {"processing-unit", 3}
    }
    data.raw["recipe"]["steel-plate"].ingredients = 
    {
        {"iron-plate", 3},
        {"pm-manganese-plate", 3},
        {"pm-coke", 1}
    }
end
if mods["bzzirconium"] and mods["bzfoundry"] then
    
    data.raw["recipe"]["electric-foundry"].ingredients = 
    {
        {"zirconia", 10},
        {"pm-stainless-steel-alloy", 10},
        {"processing-unit", 4},
        {"concrete", 10},
        {"foundry", 1}
    }
end
