if not mods["HelicopterRevival"] then return end

local remote_recipe = data["recipe"]["heli-remote-recipe"] --[[@as data.RecipePrototype]]
remote_recipe.ingredients = {
    {type = "item", name = "processing-unit", amount = 125},
    {type = "item", name = "pm-lithium-ion-battery", amount = 20},
    {type = "item", name = "pm-polyethylene-plastic", amount = 40},
    {type = "item", name = "iron-stick", amount = 20},
}