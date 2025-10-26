---@class data.FluidPrototype
---If present, indicates the emission multiplier of the void recipe
---@field auto_void? boolean
---The emission multiplier of the void recipe
---@field auto_void_emissions? double

---@param prototype data.FluidPrototype
local function make_voiding(prototype)
	if not prototype.auto_void then return end

	local icons = prototype.icons
	if icons then
		icons = util.copy(icons)
	else
		icons = {
			{icon = prototype.icon, icon_size = prototype.icon_size}
		}
	end

	table.insert(icons, {
		icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
		icon_size = 64,
	})

    local burnable_tooltip = {
        name = {"pm-tooltips.burnable-in"},
        value = {"pm-tooltips.burninator"},
    }
    if prototype.custom_tooltip_fields then
      table.insert(prototype.custom_tooltip_fields, burnable_tooltip)
    else
      prototype.custom_tooltip_fields = {burnable_tooltip}
    end

	data:extend{
		{
			type = "recipe",
			name = prototype.name.."-voiding",
			localised_name = {"recipe-name.-voiding", PM.locale_of(prototype)},
			icons = icons,
			subgroup = "pm-voiding",
			category = "pm-burnining",
			emissions_multiplier = prototype.auto_void_emissions,
			energy_required = 3,
			hide_from_player_crafting = true,
			ingredients =
			{
				PM.ingredient(prototype.name, 25, prototype.type),
			},
			results = {}
		}
	}
	-- Clear it out from the log
	prototype.auto_void = nil
end


-- for type in pairs(defines.prototypes.item) do
-- 	for name, prototype in pairs(data.raw[type] or {}) do
-- 		---@cast prototype data.ItemPrototype
-- 		make_voiding(prototype)
-- 	end
-- end

for name, prototype in pairs(data.raw["fluid"]) do
	make_voiding(prototype)
end