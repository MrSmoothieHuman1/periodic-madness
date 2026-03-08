if not data.raw["mod-data"] then return end
local science_colors = data.raw["mod-data"]["discoscience-science-colors"]
if not science_colors then return end

for item, color in pairs{
	["automation-science-pack"] =                                     {0.949, 0.133, 0.133},
	["logistic-science-pack"] =                                       {0.949, 0.612, 0.133},
	["pm-advanced-advanced-transition-metal-science-pack"] =          {0.933, 0.949, 0.133},
	["chemical-science-pack"] =                                       {0.282, 0.922, 0.216},
	["pm-post-transition-metal-science-pack"] =                       {0.216, 0.773, 0.922},
	["pm-alkali-metal-science-pack"] =                                {0.282, 0.369, 0.878},
	["pm-metalloid-science-pack"] =                                   {0.561, 0.110, 0.878},
	["pm-alkaline-earth-metal-science-pack"] =                        {0.612, 0.125, 0.859},
	["pm-advanced-advanced-advanced-transition-metal-science-pack"] = {0.871, 0.125, 0.827},
	["pm-noble-gas-science-pack"] =                                   {1.000, 0.871, 0.988},
	["pm-actinide-science-pack"] =                                    {1.000, 1.000, 1.000},
	["pm-lanthanide-science-pack"] =                                  {0.000, 0.000, 0.000},

	-- ["production-science-pack"] = {},
	-- ["utility-science-pack"] = {},
	-- ["space-science-pack"] = {},
	-- ["pm-experimental-research-data"] = {}, --??
}--[[@as table<data.ItemID, Color>]] do
	science_colors.data[item] = color
end


if DiscoScience then
	-- TODO: Get a glow for  the science center
	-- DiscoScience.prepareLab(data.raw["lab"]["pm-science-center"])
	DiscoScience.prepareLab(data.raw["lab"]["pm-betterer-lab"], {
		animation = "pm-betterer-lab-glow",
	})

	data:extend{
		{
			type = "animation",
			name = "pm-betterer-lab-glow",
			filename = "__periodic-madness__/graphics/entities/buildings/betterer-lab/big-fucking-lab-glow.png",
			blend_mode = "additive",
			draw_as_glow = true,
			width = 384,
			height = 416,
			animation_speed = 0.1,
			scale = 0.5,
			frame_count = 12,
			line_length = 4,
		}
	}
end



-- Typing to make luals happy
do return end

---@class LabData
---@field scale? double
---@field animation string Name of an animation prototype
DiscoScience = {
	---@param lab data.LabPrototype
	---@param data? LabData
	prepareLab = function(lab,data)end
}