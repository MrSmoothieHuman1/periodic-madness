local PM = require("__periodic-madness__/library")

local belts = data.raw["transport-belt"]
local undergrounds = data.raw["underground-belt"]
local splitters = data.raw["splitter"]


---@param colour PM.belt_colours
---@return data.TransportBeltAnimationSetWithCorners
local function belt_animation_set(colour)
	return {
		animation_set = {
			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/transport/belt.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 32,
			direction_count = 20,
			hr_version =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/transport/hr-belt.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5,
				frame_count = 32,
				direction_count = 20
			}
		}
	}--[[@as data.TransportBeltAnimationSetWithCorners]]
end

---@param colour PM.belt_colours
---@return data.UndergroundBeltStructure
local function underground_structure(colour)
	return {
		direction_in = {
			sheet = {
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/underground-structure.png",
				priority = "extra-high",
				width = 96,
				height = 96,
				y = 96,
				hr_version =
				{
					filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/hr-underground-structure.png",
					priority = "extra-high",
					width = 192,
					height = 192,
					y = 192,
					scale = 0.5
				}
			}
		},
		direction_out =
		{
			sheet =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/underground-structure.png",
				priority = "extra-high",
				width = 96,
				height = 96,
				hr_version =
				{
					filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/hr-underground-structure.png",
					priority = "extra-high",
					width = 192,
					height =192,
					scale = 0.5
				}
			}
		},
		direction_in_side_loading =
		{
			sheet =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/underground-structure.png",
				priority = "extra-high",
				width = 96,
				height = 96,
				y = 96*3,
				hr_version =
				{
					filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/hr-underground-structure.png",
					priority = "extra-high",
					width = 192,
					height = 192,
					y = 192*3,
					scale = 0.5
				}
			}
		},
		direction_out_side_loading =
		{
			sheet =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/underground-structure.png",
				priority = "extra-high",
				width = 96,
				height = 96,
				y = 96*2,
				hr_version =
				{
					filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/hr-underground-structure.png",
					priority = "extra-high",
					width = 192,
					height = 192,
					y = 192*2,
					scale = 0.5
				}
			}
		},
		--TODO: add patches to undergrounds
		-- back_patch =
		-- {
		-- 	sheet =
		-- 	{
		-- 		filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/underground-structure-back-patch.png",
		-- 		priority = "extra-high",
		-- 		width = 96,
		-- 		height = 96,
		-- 		hr_version =
		-- 		{
		-- 			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/hr-underground-structure-back-patch.png",
		-- 			priority = "extra-high",
		-- 			width = 192,
		-- 			height = 192,
		-- 			scale = 0.5
		-- 		}
		-- 	}
		-- },
		-- front_patch =
		-- {
		-- 	sheet =
		-- 	{
		-- 		filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/underground-structure-front-patch.png",
		-- 		priority = "extra-high",
		-- 		width = 96,
		-- 		height = 96,
		-- 		hr_version =
		-- 		{
		-- 			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/hr-underground-structure-front-patch.png",
		-- 			priority = "extra-high",
		-- 			width = 192,
		-- 			height = 192,
		-- 			scale = 0.5
		-- 		}
		-- 	}
		-- }
	}--[[@as data.UndergroundBeltStructure]]
end

---@param colour PM.belt_colours
---@return data.Animation4Way
function splitter_structure(colour)
	return {
		north =
		{
			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/north.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 82,
			height = 36,
			shift = util.by_pixel(6, 0),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/hr-north.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 160,
				height = 70,
				shift = util.by_pixel(7, 0),
				scale = 0.5
			}
		},
		east =
		{
			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/east.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 44,
			shift = util.by_pixel(4, 12),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/hr-east.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 90,
				height = 84,
				shift = util.by_pixel(4, 13),
				scale = 0.5
			}
		},
		south =
		{
			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/south.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 82,
			height = 32,
			shift = util.by_pixel(4, 0),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/hr-south.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 164,
				height = 64,
				shift = util.by_pixel(4, 0),
				scale = 0.5
			}
		},
		west =
		{
			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/west.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 44,
			shift = util.by_pixel(6, 12),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/hr-west.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 94,
				height = 86,
				shift = util.by_pixel(5, 12),
				scale = 0.5
			}
		}
	}--[[@as data.Animation4Way]]
end

---@param colour PM.belt_colours
---@return data.Animation4Way
function splitter_patch(colour)
	return {
		north = util.empty_sprite(),
		east =
		{
			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/east-top_patch.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 52,
			shift = util.by_pixel(4, -20),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/hr-east-top_patch.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 90,
				height = 104,
				shift = util.by_pixel(4, -20),
				scale = 0.5
			}
		},
		south = util.empty_sprite(),
		west =
		{
			filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/west-top_patch.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 48,
			shift = util.by_pixel(6, -18),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/entities/belt-colours/"..colour.."/splitter/hr-west-top_patch.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 94,
				height = 96,
				shift = util.by_pixel(5, -18),
				scale = 0.5
			}
		}
	}--[[@as data.Animation4Way]]
end


---@param beltTier any
---@param colour PM.belt_colours
local function handle_tier(beltTier, colour)
	local belt = belts[beltTier[1]]
	local underground = undergrounds[beltTier[2]]
	local splitter = splitters[beltTier[3]]

	belt.belt_animation_set = belt_animation_set(colour)
	underground.belt_animation_set = belt_animation_set(colour)
	splitter.belt_animation_set = belt_animation_set(colour)

	underground.structure = underground_structure(colour)
	splitter.structure = splitter_structure(colour)
	splitter.structure_patch = splitter_patch(colour)
end

for tier, beltTier in pairs(PM.belts) do
	local colour = settings.startup["pm-belt-colour-tier-"..tier]
	if colour then
		handle_tier(beltTier, colour.value--[[@as PM.belt_colours]])
	end
end