local function make_solid_matter_recipe(item)
if not item.protons then return end

    data:extend{
		{
			type = "recipe",
			name = item.name.."-atomic-seperation",
			localised_name = {"recipe-name.-atomic-seperation", PM.locale_of(item)},
			subgroup = item.subgroup,
			category = "pm-burnining",
            order = "x",
			energy_required = 10,
            main_product = "pm-electron-gas",
			ingredients =
			{
				PM.ingredient(item.name, 1, item.type),
			},
			results =
            {
                PM.product("pm-electron-gas", item.electrons or item.protons, "fluid"),
                PM.product("pm-neutron-gas", item.neutrons, "fluid"),
                PM.product("pm-proton-gas", item.protons, "fluid"),
            }
		},
		{
			type = "recipe",
			name = item.name.."-atomic-combination",
			localised_name = {"recipe-name.-atomic-combination", PM.locale_of(item)},
			subgroup = item.subgroup,
			category = "pm-burnining",
            order = "xa",
			energy_required = 10,
			ingredients =
			{
                PM.product("pm-electron-gas", item.electrons or item.protons, "fluid"),
                PM.product("pm-neutron-gas", item.neutrons, "fluid"),
                PM.product("pm-proton-gas", item.protons, "fluid"),
			},
			results =
            {
                PM.product(item.name, 1, item.type)
            }
		},
	}

end
local function make_liquid_matter_recipe(liquid)
if not liquid.protons then return end

    data:extend{
		{
			type = "recipe",
			name = liquid.name.."-atomic-seperation",
			localised_name = {"recipe-name.-atomic-seperation", PM.locale_of(liquid)},
			subgroup = liquid.subgroup,
			category = "pm-burnining",
            order = "x",
			energy_required = 10,
            main_product = "pm-electron-gas",
			ingredients =
			{
				PM.ingredient(liquid.name, 10, liquid.type),
			},
			results =
            {
                PM.product("pm-electron-gas", liquid.electrons or liquid.protons, "fluid"),
                PM.product("pm-neutron-gas", liquid.neutrons, "fluid"),
                PM.product("pm-proton-gas", liquid.protons, "fluid"),
            }
		},
		{
			type = "recipe",
			name = liquid.name.."-atomic-combination",
			localised_name = {"recipe-name.-atomic-combination", PM.locale_of(liquid)},
			subgroup = liquid.subgroup,
			category = "pm-burnining",
            order = "xa",
			energy_required = 10,
			ingredients =
			{
                PM.ingredient("pm-electron-gas", liquid.electrons or liquid.protons, "fluid"),
                PM.ingredient("pm-neutron-gas", liquid.neutrons, "fluid"),
                PM.ingredient("pm-proton-gas", liquid.protons, "fluid"),
			},
			results =
            {
                PM.product(liquid.name, 10, liquid.type)
            }
		},
	}

    if liquid.name == "pm-hydrogen-gas" then --fuck you, hydyogen
        data.raw["recipe"]["pm-hydrogen-gas-atomic-combination"].ingredients =
        {
            PM.ingredient("pm-electron-gas", liquid.electrons or liquid.protons, "fluid"),
            PM.ingredient("pm-proton-gas", liquid.protons, "fluid")
        }
        data.raw["recipe"]["pm-hydrogen-gas-atomic-seperation"].results =
        {
            PM.product("pm-electron-gas", liquid.electrons or liquid.protons, "fluid"),
            PM.product("pm-proton-gas", liquid.protons, "fluid")
        }
    end
end

--[[local function add_atomic_recipes_to_tech(seperation_recipe, combination_recipe, technology)
  local unlock_key = "unlock-recipe"
  local technology = "pm-element-decomposition"
  local effects = technology.effects

  if not effects then
    technology.effects = {}
    effects = technology.effects
  end

  local add_fill_recipe = true
  local add_empty_recipe = true

  for k,v in pairs(effects) do
    if k == unlock_key then
      local recipe = v.recipe
      if recipe == fill_recipe.name then
        add_fill_recipe = false
      elseif recipe == empty_recipe.name then
        add_empty_recipe = false
      end
    end
  end

  if add_fill_recipe then
    table.insert(effects, {type = unlock_key, recipe = fill_recipe.name})
  end
  if add_empty_recipe then
    table.insert(effects, {type = unlock_key, recipe = empty_recipe.name})
  end
end--]]

for item_type in pairs(defines.prototypes.item) do
  for name, item in pairs(data.raw[item_type] or {}) do
    make_solid_matter_recipe(item)
  end
end
  for name, liquid in pairs(data.raw["fluid"]) do
    make_liquid_matter_recipe(liquid)
  end