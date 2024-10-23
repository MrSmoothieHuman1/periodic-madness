local PM = require("__periodic-madness__/library")
local colors = require("__periodic-madness__/colours")
local order_table = colors.orders
local colour_table = colors.values

--MARK: Belt sets

---@param colour Color
---@return data.TransportBeltAnimationSetWithCorners
local function belt_animation_set(colour)
	---@param file string
	---@param tint? Color
	---@return table
	local function make_anim(file, tint)
		return {
			filename = "__periodic-madness__/graphics/entities/buildings/transport/"..file..".png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 32,
			direction_count = 20,
			tint = tint
		}
	end
	return {
		animation_set = {
			layers = {
				make_anim("base"),
				make_anim("arrows", colour)
			}
		}
	}--[[@as data.TransportBeltAnimationSetWithCorners]]
end
--MARK: Underground
---@param colour Color
---@return data.UndergroundBeltStructure
local function underground_structure(colour)
	---@param file "base"|"arrows"
	---@param yoff int
	---@param tint? Color
	---@return data.SpriteNWaySheet
	local function offset(file, yoff, tint)
		return {
			filename = "__periodic-madness__/graphics/entities/buildings/underground/"..file..".png",
			priority = "extra-high",
			width = 192,
			height = 192,
			y = yoff,
			tint = tint,
			scale = 0.5
		}--[[@as data.SpriteNWaySheet]]
	end
	return {
		direction_in = {
			sheets = {
				offset("base",   192*1),
				offset("arrows", 192*1, colour)
			}
		},
		direction_out = {
			sheets = {
				offset("base",   192*0),
				offset("arrows", 192*0, colour)
			}
		},
		direction_in_side_loading = {
			sheets = {
				offset("base",   192*3),
				offset("arrows", 192*3, colour)
			}
		},
		direction_out_side_loading = {
			sheets = {
				offset("base",   192*2),
				offset("arrows", 192*2, colour)
			}
		},
	}--[[@as data.UndergroundBeltStructure]]
end
--MARK: Splitter
---@param colour Color
---@return data.Animation4Way
function splitter_structure(colour)
	---@param file "north"|"south"|"east"|"west"|"north-mask"|"south-mask"|"east-mask"|"west-mask"
	---@param width int
	---@param height int
	---@param shiftx int
	---@param shifty int
	---@param tint? Color
	---@param is_sheet? boolean Default is true
	---@return data.Animation
	local function make_direction(file, width, height, shiftx, shifty, tint, is_sheet)
		---@type int?,int?,int?
		local frame_count, line_length, repeat_count
		if is_sheet ~= false then
			frame_count = 32
			line_length = 8
		else
			repeat_count = 32
		end
		return {
			filename = "__periodic-madness__/graphics/entities/buildings/splitter/"..file..".png",
			priority = "extra-high",
			width = width, height = height,
			shift = util.by_pixel(shiftx, shifty),
			frame_count = frame_count,
			line_length = line_length,
			repeat_count = repeat_count,
			tint = tint,
			scale = 0.5
		}--[[@as data.Animation]]
	end
	return {
		north = {
			layers = {
				make_direction("north",      164, 70, 8, -1),
				make_direction("north-mask", 164, 70, 8, -1, colour, false),
			}
		},
		east = {
			layers = {
				make_direction("east",      90, 160, 4, -4),
				make_direction("east-mask", 90, 160, 4, -4, colour, false),
			}
		},
		south = {
			layers = {
				make_direction("south",      164, 70, 4, 0),
				make_direction("south-mask", 164, 70, 4, 0, colour, false),
			}
		},
		west = {
			layers = {
				make_direction("west",      90, 160, 6, -4),
				make_direction("west-mask", 90, 160, 6, -4, colour, false),
			}
		},
	}--[[@as data.Animation4Way]]
end

--MARK: Icon manipulation

---@alias belt_type "transport"|"splitter"|"underground"|"loader"
---@param pictures data.Sprite[]|data.SpriteSheet|data.Sprite
---@param type belt_type
---@param colour_name PM.belt_colours
function set_variations(pictures, type, colour_name)
	--- Handle every variations in an array of sprites
	if pictures[1] then
		for _, picture in pairs(pictures) do
			set_variations(picture, type, colour_name)
		end
		return

	--- Handle only the first layer
	elseif pictures.layers then
		set_variations(pictures.layers[1], type, colour_name)
		return
	end

	--- Clear any old data
	for key in pairs(pictures--[[@as table<any,any>]]) do
		pictures[key] = nil
	end

	---@cast pictures data.SpriteParameters
	pictures.filename = "__periodic-madness__/graphics/icons/buildings/"..type.."/"..colour_name..".png"
	pictures.size = 64
	pictures.scale = 0.25
	pictures.mipmap_count = 4
end
---@param item data.ItemPrototype|data.EntityPrototype
---@param type belt_type
---@param colour_name PM.belt_colours
function set_icon(item, type, colour_name)
	if not item.icons then
		item.icons = {}
		item.icon = nil
		item.icon_size = nil
	end

	item.icons[1] = {
		icon = "__periodic-madness__/graphics/icons/buildings/"..type.."/"..colour_name..".png",
		icon_size = 64,
		scale = 0.5
	}

	local pictures = item.pictures
	if pictures then
		if pictures.sheet then
			pictures = pictures.sheet
			item.pictures = pictures
		end

		set_variations(pictures, type, colour_name)
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
---@param colour_name PM.belt_colours
---@param colour Color
local function handle_tier(beltTier, colour_name, colour)
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

	belt.map_color = colour
	underground.map_color = colour
	splitter.map_color = colour
	loader.map_color = colour

	underground.structure = underground_structure(colour)
	splitter.structure = splitter_structure(colour)
	splitter.structure_patch = nil
	-- loader.structure = loader_structure(colour)

	belt.corpse = "pm-"..colour_name.."-transport-remnant"
	underground.corpse = "pm-"..colour_name.."-underground-remnant"
	splitter.corpse = "pm-"..colour_name.."-splitter-remnant"
	-- loader.corpse = "pm-"..colour.."-loader-remnant"

	belt.dying_explosion = "pm-"..colour_name.."-transport-explosion"
	underground.dying_explosion = "pm-"..colour_name.."-underground-explosion"
	splitter.dying_explosion = "pm-"..colour_name.."-splitter-explosion"
	-- loader.dying_explosion = "pm-"..colour.."-loader-explosion"

	set_icon(belt, "transport", colour_name)
	set_icon(underground, "underground", colour_name)
	set_icon(splitter, "splitter", colour_name)
	-- set_icon(loader, "loader", colour)

	set_icon(belt_item, "transport", colour_name)
	set_icon(underground_item, "underground", colour_name)
	set_icon(splitter_item, "splitter", colour_name)
	-- set_icon(loader_item, "loader", colour)
end

---@type table<PM.belt_colours,true>
local coloured = {}

for tier, beltTier in pairs(PM.belts) do
	local colour_setting = settings.startup["pm-belt-colour-tier-"..tier]
	if colour_setting then
		local colour_name = colour_setting.value--[[@as PM.belt_colours]]
		local colour = colour_table[colour_name]
		coloured[colour_name] = true
		handle_tier(beltTier, colour_name, colour)
	end
end

---MARK: Remnants

---@param colour Color
---@param orders {[1]:string,[2]:string,[3]:string}
---@return data.CorpsePrototype[]
local function make_remnants(colour_name, colour, orders)
	---@param type belt_type
	---@param order string
	---@param animation data.RotatedAnimation
	---@return data.CorpsePrototype
	local function specific_remnant(type, order, animation)
		local remnant = {
			type = "corpse",
			name = "pm-"..colour_name.."-"..type.."-remnant",
			order = order,
			flags = {"placeable-neutral", "not-on-map"},
			subgroup = "belt-remnants",
			selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
			tile_width = 1,
			tile_height = 1,
			selectable_in_game = false,
			time_before_removed = 60 * 60 * 15, -- 15 minutes
			final_render_layer = "remnants",
			animation = animation
		}--[[@as data.CorpsePrototype]]
		set_icon(remnant, type, colour_name)
		return remnant
	end
	---@param type belt_type
	---@param is_mask boolean
	---@param hr_size {[1]:int,[2]:int}
	---@param hr_shift {[1]:int,[2]:int}
	---@return data.RotatedAnimation
	local function make_anim(type, is_mask, hr_size, hr_shift)
		local variation = is_mask and "mask.png" or "base.png"
		local direction_count = type == "underground" and 8 or 4
		return {
			filename = "__periodic-madness__/graphics/entities/buildings/"..type.."/remnants-"..variation,
			line_length = 1,
			width = hr_size[1], height = hr_size[2],
			frame_count = 1, variation_count = 1,
			axially_symmetrical = false,
			direction_count = direction_count,
			shift = hr_shift,
			tint = is_mask and colour or nil,
			scale = 0.5,
		}--[[@as data.RotatedAnimation]]
	end
	return {
		specific_remnant("transport", orders[1], make_rotated_animation_variations_from_sheet(2, {
			layers = {
				make_anim("transport", false,
					{106, 102}, util.by_pixel(1, -0.5)
				),
				make_anim("transport", true,
					{106, 102}, util.by_pixel(1, -0.5)
				),
			}
		})),
		specific_remnant("underground", orders[2], {
			layers = {
				make_anim("underground", false,
					{156, 144}, util.by_pixel(10.5, 3)
				),
				make_anim("underground", true,
					{156, 144}, util.by_pixel(10.5, 3)
				)
			}
		}),
		specific_remnant("splitter", orders[3], {
			layers = {
				make_anim("splitter", false,
					{190, 190}, util.by_pixel(3.5, 1.5)
				),
				make_anim("splitter", true,
					{190, 190}, util.by_pixel(3.5, 1.5)
				),
			}
		}),
	}--[[@as data.CorpsePrototype[] ]]
end

local sounds = require("__base__.prototypes.entity.sounds")
local explosion_animations = require("__base__.prototypes.entity.explosion-animations")

--MARK: Explosions
---@param colour_name PM.belt_colours
---@param colour Color
---@param orders {[1]:string,[2]:string,[3]:string}
---@return data.EntityPrototype[]
local function make_explosions(colour_name, colour, orders)
	---@param type belt_type
	---@param order string
	---@param animation data.Animation
	---@param effects data.TriggerEffect[]
	---@return data.ExplosionPrototype
	local function create_explosion(type, order, animation, effects)
		local explosion = {
			type = "explosion",
			name = "pm-"..colour_name.."-"..type.."-explosion",
			flags = {"not-on-map"},
			hidden = true,
			subgroup = "belt-explosions",
			order = order,
			height = 0,
			animations = animation,
			smoke = "smoke-fast",
			smoke_count = 2,
			smoke_slow_down_factor = 1,
			sound = sounds.small_explosion,
			created_effect = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = effects
				}
			}
		}--[[@as data.ExplosionPrototype]]
		set_icon(explosion, type, colour_name)
		return explosion
	end
	---@param type belt_type
	---@param name string
	---@param height float
	---@param height_deviation float
	---@param speed float
	---@param speed_deviation float
	---@param center float
	---@param center_deviation float
	---@param offset_deviation? {[1]:{[1]:float,[2]:float},[2]:{[1]:float,[2]:float}}
	---@return data.CreateParticleTriggerEffectItem
	local function create_particle(type, name, height, height_deviation, speed, speed_deviation, center, center_deviation, offset_deviation)
		offset_deviation = offset_deviation or {{-0.5, -0.5}, {0.5, 0.5}}
		return {
			type = "create-particle",
			repeat_count = 1,
			particle_name = "pm-"..colour_name.."-"..type.."-"..name,
			offset_deviation = offset_deviation,
			initial_height = height,
			initial_height_deviation = height_deviation,
			initial_vertical_speed = speed,
			initial_vertical_speed_deviation = speed_deviation,
			speed_from_center = center,
			speed_from_center_deviation = center_deviation
		}--[[@as data.CreateParticleTriggerEffectItem]]
	end
	return {
		create_explosion("transport", orders[1], util.empty_sprite(), {
			create_particle("transport", "metal-particle-medium",
				0.1, 0.50, 0.090, 0.050, 0.04, 0.05
			),
			create_particle("transport", "metal-particle-small",
				0.1, 0.50, 0.071, 0.050, 0.03, 0.05
			),
			create_particle("transport", "mechanical-component-particle-medium",
				0.1, 0.32, 0.041, 0.042, 0.01, 0.05
			)
		}),

		create_explosion("underground", orders[2], explosion_animations.small_explosion(), {
			create_particle("underground", "metal-particle-medium",
				0.2, 0.50, 0.081, 0.050, 0.03, 0.05
			),
			create_particle("underground", "metal-particle-small",
				0.2, 0.43, 0.087, 0.048, 0.05, 0.05
			),
			create_particle("underground", "metal-particle-medium-colored",
				0.2, 0.50, 0.042, 0.050, 0.02, 0.05
			)
		}),

		create_explosion("splitter", orders[3], explosion_animations.small_explosion(), {
			create_particle("splitter", "metal-particle-medium",
				0.3, 0.50, 0.047, 0.050, 0.05, 0.05,
				{ { -0.5000, -0.5977 }, { 0.5000, 0.5977 } }
			),
			create_particle("splitter", "metal-particle-small",
				0.6, 0.50, 0.049, 0.050, 0.05, 0.05
			),
			create_particle("splitter", "long-metal-particle-medium",
				0.4, 0.50, 0.072, 0.050, 0.03, 0.05,
				{ { -0.6953, -0.5977 }, { 0.6953, 0.5977 } } -- Why are these different?
			),
			create_particle("splitter", "metal-particle-big",
				0.2, 0.50, 0.050, 0.050, 0.05, 0.05
			),
			create_particle("splitter", "mechanical-component-particle-medium",
				0.2, 0.50, 0.029, 0.050, 0.04, 0.05
			)
		}),
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
      particle_name = "tintable-water-particle",
      apply_tile_tint = "secondary",
      offset_deviation = { { -0.05, -0.05 }, { 0.05, 0.05 } },
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
      particle_name = "tintable-water-particle",
      apply_tile_tint = "primary",
      offsets =
      {
        { 0, 0 },
        { 0.01563, -0.09375 },
        { 0.0625, 0.09375 },
        { -0.1094, 0.0625 }
      },
      offset_deviation = { { -0.2969, -0.1992 }, { 0.2969, 0.1992 } },
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
    offset_deviation = {{-0.03, -0.03}, {0.03, 0.03}},
    speed_from_center = nil
  }--[[@as data.TriggerEffect]]
end
local function shadowtint()
	return {r = 0, g = 0, b = 0}
end

local particle_animations = require("__base__.prototypes.particle-animations")

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

---@param colour_name Color
---@param color Color
---@return data.EntityPrototype[]
local function make_particles(colour_name, color)
	local color1 = {color[1]/255, color[2]/255, color[3]/255}
	local color2, color3 = multiply_hsv_on_rgb(color1, {1,0.7,1}, {1,0.5,1})
	local silver =	{0.764, 0.764, 0.764}
	local dark =		{0.279, 0.275, 0.267}
	local tan = 		{0.832, 0.654, 0.592}
	return {
		-- The transport belt particles
		make_particle{
			name = "pm-"..colour_name.."-transport-metal-particle-small",
			pictures = particle_animations.get_metal_particle_small_pictures{tint = color1},
			shadows = particle_animations.get_metal_particle_small_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		},
		make_particle{
			name = "pm-"..colour_name.."-transport-mechanical-component-particle-medium",
			pictures = particle_animations.get_mechanical_component_particle_medium_pictures{tint = silver},
			shadows = particle_animations.get_mechanical_component_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour_name.."-transport-metal-particle-medium",
			pictures = particle_animations.get_metal_particle_small_pictures{tint = color1},
			shadows = particle_animations.get_metal_particle_small_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		},

		-- The underground belt particles
		make_particle{
			name = "pm-"..colour_name.."-underground-metal-particle-small",
			pictures = particle_animations.get_metal_particle_small_pictures{tint = color2},
			shadows = particle_animations.get_metal_particle_small_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		},
		make_particle{
			name = "pm-"..colour_name.."-underground-metal-particle-medium",
			pictures = particle_animations.get_metal_particle_medium_pictures{tint = silver},
			shadows = particle_animations.get_metal_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour_name.."-underground-metal-particle-medium-colored",
			pictures = particle_animations.get_metal_particle_medium_pictures{tint = color2},
			shadows = particle_animations.get_metal_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},

		-- The splitter particles
		make_particle{
			name = "pm-"..colour_name.."-splitter-metal-particle-medium",
			pictures = particle_animations.get_metal_particle_medium_pictures{tint = tan},
			shadows = particle_animations.get_metal_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour_name.."-splitter-metal-particle-small",
			pictures = particle_animations.get_metal_particle_small_pictures{tint = color3},
			shadows = particle_animations.get_metal_particle_small_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		},
		make_particle{
			name = "pm-"..colour_name.."-splitter-long-metal-particle-medium",
			pictures = particle_animations.get_metal_particle_medium_long_pictures{tint = silver},
			shadows = particle_animations.get_metal_particle_medium_long_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = small_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour_name.."-splitter-metal-particle-big",
			pictures = particle_animations.get_metal_particle_big_pictures{tint = color3},
			shadows = particle_animations.get_metal_particle_big_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
			regular_trigger_effect = default_smoke_trigger_effect(),
		},
		make_particle{
			name = "pm-"..colour_name.."-splitter-mechanical-component-particle-medium",
			pictures = particle_animations.get_mechanical_component_particle_medium_pictures{tint = dark},
			shadows = particle_animations.get_mechanical_component_particle_medium_pictures{tint = shadowtint(), shift = util.by_pixel (1,0)},
		}
	}
end

--MARK: Dynamic Color

for colour_name in pairs(coloured) do
	local colour_order = order_table[colour_name]
	local colour = colour_table[colour_name]
	data:extend(make_remnants(colour_name, colour, colour_order))
	data:extend(make_explosions(colour_name, colour, colour_order))
	data:extend(make_particles(colour_name, colour))
end
