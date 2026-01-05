PM = require("pennyisms.library")
require("prototype.recipes.building-recipes.burnining")
--require("prototype.recipes.building-recipes.atomicrecipes")


---@param fluidbox data.FluidBox
---@param new_category string
local function add_default_category(fluidbox, new_category)
	for _, connection in pairs(fluidbox.pipe_connections) do
		if connection.connection_type == "underground" then goto continue end
        --if data.raw["pipe"] then goto continue end

		local categories = connection.connection_category

		if not categories or categories == "default" then
			connection.connection_category = {"default", new_category}

		elseif type(categories) == "table"
		and PM.array_contains(categories, "default") then
			categories[#categories+1] = new_category

		end
    ::continue::
	end
end

local additional_default_category = "pm-osmium-pipes"
local ignored_entities = {
	["pipe"] = true,
	["pm-stainless-steel-pipe"] = true,
	["pipe-to-ground"] = true,
	["pm-stainless-steel-pipe-to-ground"] = true,
}

for type in pairs(defines.prototypes.entity) do
	local type_lookup = data.raw[type]
	if type_lookup then
		for name, prototype in pairs(type_lookup) do
			---@cast prototype -data.MapGenPresets, -data.GuiStyle
			if ignored_entities[name] then goto continue end

			if prototype.fluid_box then
				add_default_category(prototype.fluid_box, additional_default_category)
			end

			if prototype.input_fluid_box then
				add_default_category(prototype.input_fluid_box, additional_default_category)
			end

			if prototype.output_fluid_box then
				add_default_category(prototype.output_fluid_box, additional_default_category)
			end

			if prototype.oxidizer_fluid_box then
				add_default_category(prototype.oxidizer_fluid_box, additional_default_category)
			end

			if prototype.fluid_boxes then
				for _, fluidbox in pairs(prototype.fluid_boxes) do
					add_default_category(fluidbox, additional_default_category)
				end
			end

			if prototype.energy_source and prototype.energy_source.fluid_box then
				add_default_category(prototype.energy_source.fluid_box, additional_default_category)
			end

			::continue::
		end
	end
end