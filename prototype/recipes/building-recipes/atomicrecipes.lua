local function make_matter_recipe(item)
    if item.electrons ~= 0 then return end

    data:extend{
		{
			type = "recipe",
			name = item.name.."-atomic-seperation",
			localised_name = {"recipe-name.-atomic-seperation", PM.locale_of(item)},
			subgroup = item.subgroup,
			category = "pm-burnining",
            order = "x",
			energy_required = 10,
            main_product = "pm-electrons",
			ingredients =
			{
				PM.ingredient(item.name, 1, item.type),
			},
			results =
            {
                PM.product("pm-electrons", item.electrons, "fluid"),
                PM.product("pm-neutrons", item.neutrons, "fluid"),
                PM.product("pm-protons", item.protons, "fluid"),
            }
		},
		{
			type = "recipe",
			name = item.name.."-atomic-combination",
			localised_name = {"recipe-name.-atomic-seperation", PM.locale_of(item)},
			subgroup = item.subgroup,
			category = "pm-burnining",
            order = "xa",
			energy_required = 10,
			ingredients =
			{
                PM.product("pm-electron-gas", item.electrons, "fluid"),
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


for item_type in pairs(defines.prototypes.item) do
  for name, item in pairs(data.raw[item_type] or {}) do
    if item.electrons ~= 0 then
        make_matter_recipe(item)
    end
  end
end