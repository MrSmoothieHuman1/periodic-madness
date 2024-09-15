local PM = require("__periodic-madness__/library")

--MARK: Belt sets

---@param colour PM.belt_colours
---@return data.TransportBeltAnimationSetWithCorners
local function belt_animation_set(colour)
	return {
		animation_set = {
			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/transport/belt.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			frame_count = 32,
			direction_count = 20,
			hr_version =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/transport/hr-belt.png",
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
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/structure.png",
				priority = "extra-high",
				width = 96,
				height = 96,
				y = 96,
				hr_version =
				{
					filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/hr-structure.png",
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
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/structure.png",
				priority = "extra-high",
				width = 96,
				height = 96,
				hr_version =
				{
					filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/hr-structure.png",
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
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/structure.png",
				priority = "extra-high",
				width = 96,
				height = 96,
				y = 96*3,
				hr_version =
				{
					filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/hr-structure.png",
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
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/structure.png",
				priority = "extra-high",
				width = 96,
				height = 96,
				y = 96*2,
				hr_version =
				{
					filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/hr-structure.png",
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
		-- 		filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/structure-back-patch.png",
		-- 		priority = "extra-high",
		-- 		width = 96,
		-- 		height = 96,
		-- 		hr_version =
		-- 		{
		-- 			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/hr-structure-back-patch.png",
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
		-- 		filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/structure-front-patch.png",
		-- 		priority = "extra-high",
		-- 		width = 96,
		-- 		height = 96,
		-- 		hr_version =
		-- 		{
		-- 			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/hr-structure-front-patch.png",
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
			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/north.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 82,
			height = 36,
			shift = util.by_pixel(6, 0),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/hr-north.png",
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
			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/east.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 44,
			shift = util.by_pixel(4, 12),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/hr-east.png",
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
			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/south.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 82,
			height = 32,
			shift = util.by_pixel(4, 0),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/hr-south.png",
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
			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/west.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 44,
			shift = util.by_pixel(6, 12),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/hr-west.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 90,
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
			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/east-top_patch.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 52,
			shift = util.by_pixel(4, -20),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/hr-east-top_patch.png",
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
			filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/west-top_patch.png",
			frame_count = 32,
			line_length = 8,
			priority = "extra-high",
			width = 46,
			height = 48,
			shift = util.by_pixel(6, -18),
			hr_version =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/hr-west-top_patch.png",
				frame_count = 32,
				line_length = 8,
				priority = "extra-high",
				width = 90,
				height = 96,
				shift = util.by_pixel(5, -18),
				scale = 0.5
			}
		}
	}--[[@as data.Animation4Way]]
end

--MARK: Icon manipulation

---@alias belt_type "transport"|"splitter"|"underground"
---@param pictures data.Sprite[]|data.SpriteSheet|data.Sprite
---@param type belt_type
---@param colour PM.belt_colours
function set_variations(pictures, type, colour)
	--- Handle every variations in an array of sprites
	if pictures[1] then
		for _, picture in pairs(pictures) do
			set_variations(picture, type, colour)
		end
		return

	--- Handle only the first layer
	elseif pictures.layers then
		set_variations(pictures.layers[1], type, colour)
		return
	end

	--- Clear any old data
	for key in pairs(pictures--[[@as table<any,any>]]) do
		pictures[key] = nil
	end

	---@cast pictures data.SpriteParameters
	pictures.filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/"..type.."/icon.png"
	pictures.size = 64
	pictures.scale = 0.25
	pictures.mipmap_count = 4
end
---@param item data.ItemPrototype|data.EntityPrototype
---@param type belt_type
---@param colour PM.belt_colours
function set_icon(item, type, colour)
	if not item.icons then
		item.icons = {}
		item.icon = nil
		item.icon_size = nil
		item.icon_mipmaps = nil
	end

	item.icons[1] = {
		icon = "__periodic-madness__/graphics/belt-colours/"..colour.."/"..type.."/icon.png",
		icon_size = 64,
		scale = 0.5,
		icon_mipmaps = 4
	}

	local pictures = item.pictures
	if pictures then
		if pictures.sheet then
			pictures = pictures.sheet
			item.pictures = pictures
		end

		set_variations(pictures, type, colour)
	end
end

local belts = data.raw["transport-belt"]
local undergrounds = data.raw["underground-belt"]
local splitters = data.raw["splitter"]
local items = data.raw["item"]

--MARK: Belt modification

---@param beltTier any
---@param colour PM.belt_colours
local function handle_tier(beltTier, colour)
	local belt = belts[beltTier[1]]
	local underground = undergrounds[beltTier[2]]
	local splitter = splitters[beltTier[3]]

	local belt_item = items[beltTier[1]]
	local underground_item = items[beltTier[2]]
	local splitter_item = items[beltTier[3]]

	belt.belt_animation_set = belt_animation_set(colour)
	underground.belt_animation_set = belt_animation_set(colour)
	splitter.belt_animation_set = belt_animation_set(colour)

	underground.structure = underground_structure(colour)
	splitter.structure = splitter_structure(colour)
	splitter.structure_patch = splitter_patch(colour)

	belt.corpse = "pm-"..colour.."-transport-remnant"
	underground.corpse = "pm-"..colour.."-underground-remnant"
	splitter.corpse = "pm-"..colour.."-splitter-remnant"

	set_icon(belt, "transport", colour)
	set_icon(underground, "underground", colour)
	set_icon(splitter, "splitter", colour)

	set_icon(belt_item, "transport", colour)
	set_icon(underground_item, "underground", colour)
	set_icon(splitter_item, "splitter", colour)
end

---@type table<PM.belt_colours,true>
local coloured = {}

for tier, beltTier in pairs(PM.belts) do
	local colour = settings.startup["pm-belt-colour-tier-"..tier]
	if colour then
		coloured[colour.value--[[@as PM.belt_colours]]] = true
		handle_tier(beltTier, colour.value--[[@as PM.belt_colours]])
	end
end

---MARK: Remnants

---@param colour PM.belt_colours
---@param order {[1]:string,[2]:string,[3]:string}
---@return data.CorpsePrototype[]
local function make_remnants(colour, order)
	return {
		{
			type = "corpse",
			name = "pm-"..colour.."-transport-remnant",
			order = order[1],
			icon = "__periodic-madness__/graphics/belt-colours/"..colour.."/transport/icon.png",
			icon_size = 64, icon_mipmaps = 4,
			flags = {"placeable-neutral", "not-on-map"},
			subgroup = "belt-remnants",
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			tile_width = 1,
			tile_height = 1,
			selectable_in_game = false,
			time_before_removed = 60 * 60 * 15, -- 15 minutes
			final_render_layer = "remnants",
			animation = make_rotated_animation_variations_from_sheet(2,{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/transport/remnants/remnants.png",
				line_length = 1,
				width = 54,
				height = 52,
				frame_count = 1,
				variation_count = 1,
				axially_symmetrical = false,
				direction_count = 4,
				shift = util.by_pixel(1, 0),
				hr_version =
				{
					filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/transport/remnants/hr-remnants.png",
					line_length = 1,
					width = 106,
					height = 102,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 4,
					shift = util.by_pixel(1, -0.5),
					scale = 0.5
				}
			}--[[@as data.SpriteSheet]]),
		},
		{
			type = "corpse",
			name = "pm-"..colour.."-underground-remnant",
			order=order[2],
			icon = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/icon.png",
			icon_size = 64, icon_mipmaps = 4,
			flags = {"placeable-neutral", "not-on-map", "building-direction-8-way"},
			subgroup = "belt-remnants",
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			tile_width = 1,
			tile_height = 1,
			selectable_in_game = false,
			time_before_removed = 60 * 60 * 15, -- 15 minutes
			final_render_layer = "remnants",
			remove_on_tile_placement = false,
			animation =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/remnants/remnants.png",
				line_length = 1,
				width = 78,
				height =72,
				frame_count = 1,
				variation_count = 1,
				axially_symmetrical = false,
				direction_count = 8,
				shift = util.by_pixel(10, 3),
				hr_version =
				{
					filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/remnants/hr-remnants.png",
					line_length = 1,
					width = 156,
					height = 144,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 8,
					shift = util.by_pixel(10.5, 3),
					scale = 0.5
				}
			}
		},
		{
			type = "corpse",
			name = "pm-"..colour.."-splitter-remnant",
			icon = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/icon.png",
			icon_size = 64, icon_mipmaps = 4,
			flags = {"placeable-neutral", "not-on-map"},
			subgroup = "belt-remnants",
			order = "a-g-a",
			selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
			tile_width = 2,
			tile_height = 1,
			selectable_in_game = false,
			time_before_removed = 60 * 60 * 15, -- 15 minutes
			final_render_layer = "remnants",
			remove_on_tile_placement = false,
			animation =
			{
				filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/remnants/remnants.png",
				line_length = 1,
				width = 96,
				height = 96,
				frame_count = 1,
				variation_count = 1,
				axially_symmetrical = false,
				direction_count = 4,
				shift = util.by_pixel(4, 1.5),
				hr_version =
				{
					filename = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/remnants/hr-remnants.png",
					line_length = 1,
					width = 190,
					height = 190,
					frame_count = 1,
					variation_count = 1,
					axially_symmetrical = false,
					direction_count = 4,
					shift = util.by_pixel(3.5, 1.5),
					scale = 0.5
				}
			}
		}
	}--[[@as data.CorpsePrototype[] ]]
end

---@type table<PM.belt_colours,{[1]:string,[2]:string,[3]:string}>
local order_table = {
  ["red"]			= {"b-a-a", "b-b-a", "b-c-a"},
  ["orange"]	= {"b-a-b", "b-b-b", "b-c-b"},
  ["yellow"]	= {"b-a-c", "b-b-c", "b-c-c"},
  ["green"]		= {"b-a-d", "b-b-d", "b-c-d"},
  ["blue"]		= {"b-a-e", "b-b-e", "b-c-e"},
  ["purple"]	= {"b-a-f", "b-b-f", "b-c-f"},
}

for colour in pairs(coloured) do
	local colour_order = order_table[colour]
	data:extend(make_remnants(colour, colour_order))
end
