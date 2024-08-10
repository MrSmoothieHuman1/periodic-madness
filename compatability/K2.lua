if mods["Krastorio2"]then  
    
    data.raw["recipe"]["glass"].hidden = true
    data.raw["recipe"]["sand"].hidden = true

    data.raw["tool"]["pm-alternative-science-pack"].icon = "__periodic-madness__/graphics/compat/K2/alternative-recipe-data.png"

    data.raw["recipe"]["pm-dirty-boiler"].enabled = false
    data.raw["recipe"]["pm-science-bottle"].enabled = false
    data.raw["recipe"]["pm-burner-crusher"].enabled = false
    data.raw["recipe"]["kr-crusher"].subgroup = "pm-crushing-machine"
    data.raw["recipe"]["kr-crusher"].order = "d"
    data.raw["recipe"]["kr-filtration-plant"].ingredients = 
    {
        {"pm-glass-pane", 10},
        {"steel-plate", 4},
        {"automation-core", 2},
        {"pm-corrosion-resistant-tubing", 10},
        {"pm-heavyweight-panelling", 8}
    }
    data.raw["recipe"]["kr-crusher"].ingredients = 
    {
        {"electric-engine-unit", 6},
        {"advanced-circuit", 15},
        {"concrete", 15},
        {"pm-lightweight-framing", 30},
        {"pm-heavyweight-panelling", 12},

    }
    data.raw["recipe"]["sand"].category = "pm-crushing"
    
    data.raw["technology"]["pm-cleaner-power-generation"].prerequisites = {"kr-steam-engine"}
    data.raw["technology"]["pm-alternative-science-pack-unlock"].icon_size = 64
    data.raw["technology"]["pm-alternative-science-pack-unlock"].icon = "__periodic-madness__/graphics/compat/K2/alternative-recipe-data.png"
    data.raw["technology"]["kr-crusher"].unit.ingredients = 
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"pm-advanced-advanced-transition-metal-science-pack", 1},
            {"pm-post-transition-metal-science-pack", 1}
        }
    data.raw["technology"]["kr-crusher"].unit.count = 350
    data.raw["technology"]["kr-crusher"].unit.time = 100
    data.raw["technology"]["kr-crusher"].prerequisites = {"lubricant"}
    data.raw["technology"]["kr-fluids-chemistry"].prerequisites = {"kr-basic-fluid-handling", "steel-processing", "kr-stone-processing"}
    data.raw["technology"]["kr-steam-engine"].effects = 
    {
        {
            type = "unlock-recipe",
            recipe = "pm-dirty-boiler"
        },
        {
            type = "unlock-recipe",
            recipe = "steam-engine"
        },
    }
    data.raw["technology"]["kr-stone-processing"].prerequisites = {"pm-burner-crusher"}
    data.raw["furnace"]["kr-crusher"].crafting_categories = {"pm-crushing"}
    data.raw["furnace"]["kr-crusher"].crafting_speed = 10
    data.raw["furnace"]["kr-crusher"].energy_source = 
    {
      type = "fluid",
      effectivity = 1,
      burns_fluid = true,
      destroy_non_fuel_fluid = true,
      emissions_per_minute = 10,
      fluid_box = 
        {
          production_type = "input",
          pipe_picture = assembler2pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          filter = "pm-heavy-lubricant",
          pipe_connections = {{ type="input", position = {0, 4.1} }},
        }
    }
    data.raw["furnace"]["kr-crusher"].energy_usage = "375kW"
    data:extend({

        {
            type = "technology",
            name = "pm-burner-crusher",
            icon_size = 256,
            icon = "__periodic-madness__/graphics/compat/K2/technology/burner-crusher.png",
            effects = 
            {
                {
                    type = "unlock-recipe",
                    recipe = "pm-burner-crusher"
                }
            },
            prerequisites = {"kr-automation-core"},
            unit = 
            {
                count = 30,
                ingredients = 
                {
                    {"basic-tech-card", 1}
                },
                time = 30
            }
        }
    })
end



-- credit to KingArthur for this monstrosity, i love it
-- replace an item/fluid in every recipes ingredients/results
-- best used to merge items that are duplicated in mods that should be the same
--function overrides.global_item_replacer(old, new, blackrecipe)
--    if not data.raw.item[old] and not data.raw.fluid[old] then return end
--    if not data.raw.item[new] and not data.raw.fluid[new] then return end
--
--    local recipes = table.deepcopy(data.raw.recipe)
--    if type(blackrecipe) ~= 'table' and blackrecipe ~= nil then blackrecipe = {blackrecipe} end
--    local brecipeset = {}
--    if blackrecipe ~= nil then for _, brecipe in pairs(blackrecipe) do brecipeset[brecipe] = true end end
--    for recipe in pairs(recipes) do
--        if not recipe.ignored_by_recipe_replacement and not brecipeset[recipe] then
--            overrides.ingredient_replace(recipe, old, new)
--            overrides.results_replacer(recipe, old, new)
--        end
--    end
--end