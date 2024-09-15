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
--MARK: Underground
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
--MARK: Splitter
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

---@alias belt_type "transport"|"splitter"|"underground"|"loader"
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
local loadersx2 = data.raw["loader"]
local loadersx1 = data.raw["loader-1x1"]
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

	---@type data.LoaderPrototype, data.ItemPrototype
---@diagnostic disable-next-line: missing-fields
	local loader,loader_item = {},{}
	if beltTier[4] then
		loader = loadersx2[beltTier[4]] or loadersx1[beltTier[4]]
		loader_item = items[beltTier[4]]
	end

	belt.belt_animation_set = belt_animation_set(colour)
	underground.belt_animation_set = belt_animation_set(colour)
	splitter.belt_animation_set = belt_animation_set(colour)
	loader.belt_animation_set = belt_animation_set(colour)

	underground.structure = underground_structure(colour)
	splitter.structure = splitter_structure(colour)
	splitter.structure_patch = splitter_patch(colour)
	-- loader.structure = loader_structure(colour)

	belt.corpse = "pm-"..colour.."-transport-remnant"
	underground.corpse = "pm-"..colour.."-underground-remnant"
	splitter.corpse = "pm-"..colour.."-splitter-remnant"
	-- loader.corpse = "pm-"..colour.."-loader-remnant"

	belt.dying_explosion = "pm-"..colour.."-transport-explosion"
	underground.dying_explosion = "pm-"..colour.."-underground-explosion"
	splitter.dying_explosion = "pm-"..colour.."-splitter-explosion"
	-- loader.dying_explosion = "pm-"..colour.."-loader-explosion"

	set_icon(belt, "transport", colour)
	set_icon(underground, "underground", colour)
	set_icon(splitter, "splitter", colour)
	set_icon(loader, "loader", colour)

	set_icon(belt_item, "transport", colour)
	set_icon(underground_item, "underground", colour)
	set_icon(splitter_item, "splitter", colour)
	set_icon(loader_item, "loader", colour)
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

local sounds = require("__base__.prototypes.entity.sounds")
local explosion_animations = require("__base__.prototypes.entity.explosion-animations")

--MARK: Explosions
---@param colour PM.belt_colours
---@param order {[1]:string,[2]:string,[3]:string}
---@return data.EntityPrototype[]
local function make_explosions(colour, order)
	return {
		{
			type = "explosion",
			name = "pm-"..colour.."-transport-explosion",
			icon = "__periodic-madness__/graphics/belt-colours/"..colour.."/transport/icon.png",
			icon_size = 64, icon_mipmaps = 4,
			flags = {"not-on-map", "hidden"},
			subgroup = "belt-explosions",
			order = order[1],
			height = 0,
			animations = util.empty_sprite(),
			--light = default_light(20),
			smoke = "smoke-fast",
			smoke_count = 2,
			smoke_slow_down_factor = 1,
			sound = sounds.small_explosion(0.5),
			created_effect = { type = "direct", action_delivery = { type = "instant", target_effects = {
				{
					type = "create-particle",
					repeat_count = 1,
					particle_name = "pm-"..colour.."-transport-metal-particle-medium",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.1,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.09,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.04,
					speed_from_center_deviation = 0.05
				},
				{
					type = "create-particle",
					repeat_count = 4,
					particle_name = "pm-"..colour.."-transport-metal-particle-small",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.1,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.071,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.03,
					speed_from_center_deviation = 0.05
				},
				{
					type = "create-particle",
					repeat_count = 5,
					particle_name = "pm-"..colour.."-transport-mechanical-component-particle-medium",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.1,
					initial_height_deviation = 0.32,
					initial_vertical_speed = 0.041,
					initial_vertical_speed_deviation = 0.042,
					speed_from_center = 0.01,
					speed_from_center_deviation = 0.05
				}
			}}}
		},
		{
			type = "explosion",
			name = "pm-"..colour.."-underground-explosion",
			icon = "__periodic-madness__/graphics/belt-colours/"..colour.."/underground/icon.png",
			icon_size = 64, icon_mipmaps = 4,
			flags = {"not-on-map", "hidden"},
			subgroup = "belt-explosions",
			order = order[2],
			height = 0,
			animations = explosion_animations.small_explosion(),
			--light = default_light(20),
			smoke = "smoke-fast",
			smoke_count = 2,
			smoke_slow_down_factor = 1,
			sound = sounds.small_explosion(0.5),
			created_effect = { type = "direct", action_delivery = { type = "instant", target_effects = {
				{
					type = "create-particle",
					repeat_count = 10,
					particle_name = "pm-"..colour.."-underground-metal-particle-medium",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.2,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.081,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.03,
					speed_from_center_deviation = 0.05
				},
				{
					type = "create-particle",
					repeat_count = 25,
					particle_name = "pm-"..colour.."-underground-metal-particle-small",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.2,
					initial_height_deviation = 0.43,
					initial_vertical_speed = 0.087,
					initial_vertical_speed_deviation = 0.048,
					speed_from_center = 0.05,
					speed_from_center_deviation = 0.05
				},
				{
					type = "create-particle",
					repeat_count = 2,
					particle_name = "pm-"..colour.."-underground-metal-particle-medium-colored",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.2,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.042,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.02,
					speed_from_center_deviation = 0.05
				}
			}}}
		},
		{
			type = "explosion",
			name = "pm-"..colour.."-splitter-explosion",
			icon = "__periodic-madness__/graphics/belt-colours/"..colour.."/splitter/icon.png",
			icon_size = 64, icon_mipmaps = 4,
			flags = {"not-on-map", "hidden"},
			subgroup = "belt-explosions",
			order = order[3],
			height = 0,
			animations = explosion_animations.small_explosion(),
			--light = default_light(20),
			smoke = "smoke-fast",
			smoke_count = 2,
			smoke_slow_down_factor = 1,
			sound = sounds.small_explosion(0.5),
			created_effect = { type = "direct", action_delivery = { type = "instant", target_effects = {
				{
					type = "create-particle",
					repeat_count = 13,
					particle_name = "pm-"..colour.."-splitter-metal-particle-medium",
					offset_deviation = { { -0.5, -0.5977 }, { 0.5, 0.5977 } },
					initial_height = 0.3,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.047,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.05,
					speed_from_center_deviation = 0.05
				},
				{
					type = "create-particle",
					repeat_count = 25,
					particle_name = "pm-"..colour.."-splitter-metal-particle-small",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.6,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.049,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.05,
					speed_from_center_deviation = 0.05
				},
				{
					type = "create-particle",
					repeat_count = 3,
					particle_name = "pm-"..colour.."-splitter-long-metal-particle-medium",
					offset_deviation = { { -0.6953, -0.5977 }, { 0.6953, 0.5977 } },
					initial_height = 0.4,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.072,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.03,
					speed_from_center_deviation = 0.05
				},
				{
					type = "create-particle",
					repeat_count = 3,
					particle_name = "pm-"..colour.."-splitter-metal-particle-big",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.2,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.05,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.05,
					speed_from_center_deviation = 0.05
				},
				{
					type = "create-particle",
					repeat_count = 3,
					particle_name = "pm-"..colour.."-splitter-mechanical-component-particle-medium",
					offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
					initial_height = 0.2,
					initial_height_deviation = 0.5,
					initial_vertical_speed = 0.029,
					initial_vertical_speed_deviation = 0.05,
					speed_from_center = 0.04,
					speed_from_center_deviation = 0.05
				}
			}}}
		}
	}--[[@as data.EntityPrototype[] ]]
end

---MARK: Particle.lua

--#region Stolen from particles.lua
local function default_ended_in_water_trigger_effect()
  return
  {
    {
      type = "create-particle",
      probability = 1,
      affects_target = false,
      show_in_tooltip = false,
      particle_name = "deep-water-particle",
      offset_deviation = { { -0.05, -0.05 }, { 0.05, 0.05 } },
      tile_collision_mask = nil,
      initial_height = 0,
      initial_height_deviation = 0.02,
      initial_vertical_speed = 0.05,
      initial_vertical_speed_deviation = 0.05,
      speed_from_center = 0.01,
      speed_from_center_deviation = 0.006,
      frame_speed = 1,
      frame_speed_deviation = 0,
      tail_length = 2,
      tail_length_deviation = 1,
      tail_width = 3
    },
    {
      type = "create-particle",
      repeat_count = 10,
      repeat_count_deviation = 6,
      probability = 0.03,
      affects_target = false,
      show_in_tooltip = false,
      particle_name = "water-particle",
      offsets =
      {
        { 0, 0 },
        { 0.01563, -0.09375 },
        { 0.0625, 0.09375 },
        { -0.1094, 0.0625 }
      },
      offset_deviation = { { -0.2969, -0.1992 }, { 0.2969, 0.1992 } },
      tile_collision_mask = nil,
      initial_height = 0,
      initial_height_deviation = 0.02,
      initial_vertical_speed = 0.053,
      initial_vertical_speed_deviation = 0.005,
      speed_from_center = 0.02,
      speed_from_center_deviation = 0.006,
      frame_speed = 1,
      frame_speed_deviation = 0,
      tail_length = 9,
      tail_length_deviation = 0,
      tail_width = 1
    },
    {
      type = "play-sound",
      sound = sounds.small_splash
    }
  }--[[@as data.TriggerEffect]]
end
local function default_smoke_trigger_effect()
  return
  {
    type = "create-trivial-smoke",
    smoke_name = "smoke-explosion-particle",
    starting_frame_deviation = 5,
    starting_frame_speed_deviation = 5,
    offset_deviation = {{-0.06, -0.06}, {0.06, 0.06}},
    speed_from_center = 0.007
  }--[[@as data.TriggerEffect]]
end
local function small_smoke_trigger_effect()
  return
  {
    type = "create-trivial-smoke",
    smoke_name = "smoke-explosion-particle-small",
    starting_frame_deviation = 0,
    starting_frame_speed_deviation = 0,
    offset_deviation = {{-0.03, -0.03}, {0.03, 0.03}},
    speed_from_center = nil
  }--[[@as data.TriggerEffect]]
end
local function shadowtint()
	return {r = 0, g = 0, b = 0}
end

local particle_animations = {}
---@param options {tint:Color,shift:Vector}
---@return data.SpriteSheet
function particle_animations.get_metal_particle_small_pictures(options)
  local options = options or {}
  return
  {
		filename = "__base__/graphics/particle/metal-particle/metal-particle-small.png",
		priority = "extra-high",
		width = 10,
		height = 8,
		tint = options.tint,
		frame_count = 12,
		animation_speed = 0.5,
		variation_count = 10,
		shift = util.add_shift(util.by_pixel(2.5,-0.5), options.shift),
		hr_version =
		{
			filename = "__base__/graphics/particle/metal-particle/hr-metal-particle-small.png",
			priority = "extra-high",
			width = 20,
			height = 16,
			tint = options.tint,
			frame_count = 12,
			animation_speed = 0.5,
			variation_count = 10,
			shift = util.add_shift(util.by_pixel(2.25,-0.25), options.shift),
			scale = 0.5
		}
  }
end
---@param options {tint:Color,shift:Vector}
---@return data.SpriteSheet
function particle_animations.get_mechanical_component_particle_medium_pictures(options)
  local options = options or {}
  return
	{
		filename = "__base__/graphics/particle/mechanical-components-particle/mechanical-components-particle-medium.png",
		priority = "extra-high",
		width = 12,
		height = 10,
		tint = options.tint,
		frame_count = 12,
		animation_speed = 0.5,
		variation_count = 10,
		shift = util.add_shift(util.by_pixel(2.5,-0.5), options.shift),
		hr_version =
		{
			filename = "__base__/graphics/particle/mechanical-components-particle/hr-mechanical-components-particle-medium.png",
			priority = "extra-high",
			width = 22,
			height = 22,
			tint = options.tint,
			frame_count = 12,
			animation_speed = 0.5,
			variation_count = 10,
			shift = util.add_shift(util.by_pixel(2.25,-0.25), options.shift),
			scale = 0.5
		}
	}
end
---@param options {tint:Color,shift:Vector}
---@return data.SpriteSheet
function particle_animations.get_metal_particle_medium_pictures(options)
  local options = options or {}
  return
  {
		filename = "__base__/graphics/particle/metal-particle/metal-particle-medium.png",
		priority = "extra-high",
		width = 16,
		height = 14,
		tint = options.tint,
		frame_count = 12,
		animation_speed = 0.5,
		variation_count = 10,
		shift = util.add_shift(util.by_pixel(2.5,0.5), options.shift),
		hr_version =
		{
			filename = "__base__/graphics/particle/metal-particle/hr-metal-particle-medium.png",
			priority = "extra-high",
			width = 30,
			height = 30,
			tint = options.tint,
			frame_count = 12,
			animation_speed = 0.5,
			variation_count = 10,
			shift = util.add_shift(util.by_pixel(2.25,0.75), options.shift),
			scale = 0.5
		}
	}
end
---@param options {tint:Color,shift:Vector}
---@return data.SpriteSheet
function particle_animations.get_metal_particle_medium_long_pictures(options)
  local options = options or {}
  return
	{
		filename = "__base__/graphics/particle/metal-particle/long-metal-particle-medium.png",
		priority = "extra-high",
		width = 50,
		height = 46,
		tint = options.tint,
		frame_count = 12,
		animation_speed = 0.5,
		variation_count = 10,
		shift = util.add_shift(util.by_pixel(3.5,0.5), options.shift),
		hr_version =
		{
			filename = "__base__/graphics/particle/metal-particle/hr-long-metal-particle-medium.png",
			priority = "extra-high",
			width = 100,
			height = 92,
			tint = options.tint,
			frame_count = 12,
			animation_speed = 0.5,
			variation_count = 10,
			shift = util.add_shift(util.by_pixel(3.75,0.25), options.shift),
			scale = 0.5
		}
	}
end
---@param options {tint:Color,shift:Vector}
---@return data.SpriteSheet
function particle_animations.get_metal_particle_big_pictures(options)
  local options = options or {}
  return
	{
		filename = "__base__/graphics/particle/metal-particle/metal-particle-big.png",
		priority = "extra-high",
		width = 26,
		height = 22,
		frame_count = 12,
		tint = options.tint,
		animation_speed = 0.5,
		variation_count = 10,
		shift = util.add_shift(util.by_pixel(2.5,0.5), options.shift),
		hr_version =
		{
			filename = "__base__/graphics/particle/metal-particle/hr-metal-particle-big.png",
			priority = "extra-high",
			width = 50,
			height = 44,
			frame_count = 12,
			tint = options.tint,
			animation_speed = 0.5,
			variation_count = 10,
			shift = util.add_shift(util.by_pixel(2.25,0.75), options.shift),
			scale = 0.5
		}
	}
end

---@class make_particle_params
---@field name string
---@field ended_in_water_trigger_effect? data.TriggerEffect|false
---@field life_time? int
---@field fade_away_duration? int
---@field render_layer? data.RenderLayer
---@field render_layer_when_on_ground? data.RenderLayer
---@field regular_trigger_effect_frequency? int
---@field regular_trigger_effect? data.TriggerEffect
---@field pictures data.SpriteVariations
---@field shadows? data.SpriteVariations
---@field draw_shadow_when_on_ground? boolean
---@field movement_modifier_when_on_ground? float
---@field movement_modifier? float
---@field vertical_acceleration? float
---@field mining_particle_frame_speed? float
---@param params make_particle_params
---@return data.ParticlePrototype
local function make_particle(params)

  if not params then error("No params given to make_particle function") end
  local name = params.name or error("No name given")

	---@type data.TriggerEffect?
  local ended_in_water_trigger_effect = params.ended_in_water_trigger_effect or default_ended_in_water_trigger_effect()
  if params.ended_in_water_trigger_effect == false then
    ended_in_water_trigger_effect = nil
  end

  local particle =
  {

    type = "optimized-particle",
    name = name,

    life_time = params.life_time or (60 * 15),
    fade_away_duration = params.fade_away_duration,

    render_layer = params.render_layer or "projectile",
    render_layer_when_on_ground = params.render_layer_when_on_ground or "corpse",

    regular_trigger_effect_frequency = params.regular_trigger_effect_frequency or 2,
    regular_trigger_effect = params.regular_trigger_effect,
    ended_in_water_trigger_effect = ended_in_water_trigger_effect or default_ended_in_water_trigger_effect(),

    pictures = params.pictures,
    shadows = params.shadows,
    draw_shadow_when_on_ground = params.draw_shadow_when_on_ground,

    movement_modifier_when_on_ground = params.movement_modifier_when_on_ground,
    movement_modifier = params.movement_modifier,
    vertical_acceleration = params.vertical_acceleration,

    mining_particle_frame_speed = params.mining_particle_frame_speed,

  }--[[@as data.ParticlePrototype]]

  return particle

end
--#endregion
---MARK: Color Math >:(

---@param color Color
---@return number h
---@return number s
---@return number l
local function rgb_to_hsv(color)
	---@type number,number,number
	local r,g,b = table.unpack(color)
	local min, max = math.min(r,g,b), math.max(r,g,b)
	local v = max
	local delta = max-min
	if delta < 0.00001 or max <= 0.00001 then
		return 0,0,max
	end
	local s = delta/max
	local h = 0
	if r >= max then
		h = (g-b)/delta
	elseif g >= max then
		h = 2 + (b-r)/delta
	else
		h = 4 + (r-g)/delta
	end
	h = h * 60
	if h < 0 then
		h = h + 360
	end
	return h,s,v
end
---@type table<int,fun(q:number,v:number,t:number,p:number):Color>
hsv_switch = {
	[1] = function(q,v,t,p) return {r=v,g=t,b=p}	end,
	[2] = function(q,v,t,p) return {r=q,g=v,b=t}	end,
	[3] = function(q,v,t,p) return {r=p,g=v,b=t}	end,
	[4] = function(q,v,t,p) return {r=p,g=q,b=v}	end,
	[5] = function(q,v,t,p) return {r=t,g=p,b=v}	end,
	[6] = function(q,v,t,p) return {r=v,g=p,b=q}	end,
}
---@param h number
---@param s number
---@param v number
---@return Color
local function hsv_to_rgb(h,s,v)
	---@type number, number, number, number
	local p, q, t, fract
	if s <= 0.0 then
		return {r=v,g=v,b=v}
	end
	if h >= 360 then
		h = h - 360
	end
	h = h/60
	fract = h%1
	p = v*(1 - s)
	q = v*(1 - s*fract)
	t = v*(1 - s*(1-fract))
	local return_func = hsv_switch[math.floor(h)+1]
	return return_func and return_func(q,v,t,p) or {r=0,g=0,b=0}
end
---@param color Color
---@param ... Color
---@return Color ...
local function multiply_hsv_on_rgb(color, ...)
	local h,s,v = rgb_to_hsv(color)
	---@type Color[]
	local output = {}
---@diagnostic disable-next-line: no-unknown
	for index, hsl in pairs{...} do
		output[index] = hsv_to_rgb(h * hsl[1], s * hsl[2], v * hsl[3])
	end
	return table.unpack(output)
end

--MARK: Particles

---@param colour PM.belt_colours
---@param color1 Color
---@return data.EntityPrototype[]
local function make_particles(colour, color1)
	local color2, color3 = multiply_hsv_on_rgb(color1, {1,0.7,1}, {1,0.5,1})
	local silver =	{0.764, 0.764, 0.764}
	local dark =		{0.279, 0.275, 0.267}
	local tan = 		{0.832, 0.654, 0.592}
	return {
		-- The transport belt particles
		make_particle{
			name = "pm-"..colour.."-transport-metal-particle-small",
			pictures = particle_animations.get_metal_particle_small_pictures{tint = color1},
			shadows = particle_animations.get_metal_particle_small_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		},
		make_particle{
			name = "pm-"..colour.."-transport-mechanical-component-particle-medium",
			pictures = particle_animations.get_mechanical_component_particle_medium_pictures{tint = silver},
			shadows = particle_animations.get_mechanical_component_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour.."-transport-metal-particle-medium",
			pictures = particle_animations.get_metal_particle_small_pictures{tint = color1},
			shadows = particle_animations.get_metal_particle_small_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		},

		-- The underground belt particles
		make_particle{
			name = "pm-"..colour.."-underground-metal-particle-small",
			pictures = particle_animations.get_metal_particle_small_pictures{tint = color2},
			shadows = particle_animations.get_metal_particle_small_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		},
		make_particle{
			name = "pm-"..colour.."-underground-metal-particle-medium",
			pictures = particle_animations.get_metal_particle_medium_pictures{tint = silver},
			shadows = particle_animations.get_metal_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour.."-underground-metal-particle-medium-colored",
			pictures = particle_animations.get_metal_particle_medium_pictures{tint = color2},
			shadows = particle_animations.get_metal_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},

		-- The splitter particles
		make_particle{
			name = "pm-"..colour.."-splitter-metal-particle-medium",
			pictures = particle_animations.get_metal_particle_medium_pictures{tint = tan},
			shadows = particle_animations.get_metal_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour.."-splitter-metal-particle-small",
			pictures = particle_animations.get_metal_particle_small_pictures{tint = color3},
			shadows = particle_animations.get_metal_particle_small_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		},
		make_particle{
			name = "pm-"..colour.."-splitter-long-metal-particle-medium",
			pictures = particle_animations.get_metal_particle_medium_long_pictures{tint = silver},
			shadows = particle_animations.get_metal_particle_medium_long_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour.."-splitter-metal-particle-big",
			pictures = particle_animations.get_metal_particle_big_pictures{tint = color3},
			shadows = particle_animations.get_metal_particle_big_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = default_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour.."-splitter-mechanical-component-particle-medium",
			pictures = particle_animations.get_mechanical_component_particle_medium_pictures{tint = dark},
			shadows = particle_animations.get_mechanical_component_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		}
	}
end

--MARK: Dynamic Color

---@type table<PM.belt_colours,{[1]:string,[2]:string,[3]:string}>
local order_table = {
  ["red"]			= {"b-a-a", "b-b-a", "b-c-a"},
  ["orange"]	= {"b-a-b", "b-b-b", "b-c-b"},
  ["yellow"]	= {"b-a-c", "b-b-c", "b-c-c"},
  ["green"]		= {"b-a-d", "b-b-d", "b-c-d"},
  ["blue"]		= {"b-a-e", "b-b-e", "b-c-e"},
  ["purple"]	= {"b-a-f", "b-b-f", "b-c-f"},
}
---@type table<PM.belt_colours, Color>
local color_table = {
  ["red"]			= {0.886, 0.090, 0.024},
  ["orange"]	= {0.898, 0.435, 0.031},
  ["yellow"]	= {0.898, 0.659, 0.031},
  ["green"]		= {0.302, 0.847, 0.196},
  ["blue"]		= {0.024, 0.596, 0.816},
  ["purple"]	= {0.322, 0.086, 1.000},
}

for colour in pairs(coloured) do
	local colour_order = order_table[colour]
	local colour_code = color_table[colour]
	data:extend(make_remnants(colour, colour_order))
	data:extend(make_explosions(colour, colour_order))
	data:extend(make_particles(colour, colour_code))
end
