---@type event_handler
local handler = {}

-- So we can steal the same list from the DiscoScience compatibility file
local science_colors = {}
data = {raw={["mod-data"]={["discoscience-science-colors"]={data=science_colors}}}}
require("compatibility.DiscoScience")
data = nil

function handler.on_configuration_changed()
	if prototypes.mod_data["discoscience-science-colors"] then return end
	if not remote.interfaces["DiscoScience"] then return end

	for item, color in pairs(science_colors) do
		-- Because DiscoScience 2.0.1 only supports 0-1 rgb format
		local color = {
			r = color[1],
			g = color[2],
			b = color[3],
		}
		remote.call("DiscoScience", "setIngredientColor", item, color)
	end
end

return handler