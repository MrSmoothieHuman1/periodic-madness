local PM = require("library")

local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local explosion_animations = require("__base__.prototypes.entity.explosion-animations")

if not data.raw.tile["empty-space"] then
    local empty_space = table.deepcopy(data.raw.tile["out-of-map"])
    empty_space.name = "empty-space"
    data:extend{empty_space}
end
if feature_flags["space_travel"] then
data:extend({

{
    type = "item",
    name = "pm-stack-inserter",
    icon = "__periodic-madness__/graphics/icons/buildings/stack-inserter.png",
    subgroup = "inserter",
    order = "h",
    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
    place_result = "pm-stack-inserter",
    stack_size = 50,
},
{
    type = "item",
    name = "pm-express-stack-inserter",
    icon = "__periodic-madness__/graphics/icons/buildings/express-stack-inserter.png",
    subgroup = "inserter",
    order = "i",
    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
    place_result = "pm-express-stack-inserter",
    stack_size = 50,
},
{
    type = "recipe",
    name = "pm-stack-inserter",
    enabled = false,
    energy_required = 1,
    category = "crafting-with-fluid",
    subgroup = "inserter",
    ingredients =
    {
        PM.ingredient("bulk-inserter", 1),
        PM.ingredient("pm-heavy-lubricant", 5, "fluid"),
        PM.ingredient("processing-unit", 2),
        PM.ingredient("pm-polyethylene-plastic", 2)
    },
    results = 
    {
        PM.product("pm-stack-inserter", 1)
    }
},

{
    type = "inserter",
    name = "pm-stack-inserter",
    icon = "__periodic-madness__/graphics/icons/buildings/stack-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack_size_bonus = 0,
    bulk = true,
    grab_less_to_match_belt_stack = true,
    wait_for_full_hand = true,
    enter_drop_mode_if_held_stack_spoiled = true,
    max_belt_stack_size = 6,
    minable = { mining_time = 0.2, result = "pm-stack-inserter" },
    max_health = 250,
    corpse = "pm-stack-inserter-remnants",
    dying_explosion = "pm-stack-inserter-explosion",
    next_upgrade = "pm-express-stack-inserter",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    damaged_trigger_effect = hit_effects.entity(),
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "40kJ",
    energy_per_rotation = "40kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "10kW"
    },
    --heating_energy = "50kW",
    extension_speed = 0.1,
    rotation_speed = 0.014,
    filter_count = 5,
    icon_draw_specification = {scale = 0.5},
    fast_replaceable_group = "inserter",
    open_sound = sounds.inserter_open,
    close_sound = sounds.inserter_close,
    working_sound = sounds.inserter_fast,
    hand_base_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    },
    hand_closed_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 112,
      height = 164,
      scale = 0.25
    },
    hand_open_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 134,
      height = 164,
      scale = 0.25
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 132,
      scale = 0.25
    },
    hand_closed_shadow =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 112,
      height = 164,
      scale = 0.25
    },
    hand_open_shadow =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 134,
      height = 164,
      scale = 0.25
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    },
    circuit_connector = circuit_connector_definitions["inserter"],
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
  },
  {
    type = "inserter",
    name = "pm-express-stack-inserter",
    icon = "__periodic-madness__/graphics/icons/buildings/express-stack-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack_size_bonus = 0,
    bulk = true,
    grab_less_to_match_belt_stack = true,
    wait_for_full_hand = true,
    enter_drop_mode_if_held_stack_spoiled = true,
    max_belt_stack_size = 6,
    minable = { mining_time = 0.25, result = "pm-express-stack-inserter" },
    max_health = 350,
    corpse = "pm-stack-inserter-remnants",
    dying_explosion = "pm-stack-inserter-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    damaged_trigger_effect = hit_effects.entity(),
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "40kJ",
    energy_per_rotation = "40kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "20kW"
    },
    --heating_energy = "50kW",
    extension_speed = 0.1,
    rotation_speed = 0.04,
    filter_count = 5,
    icon_draw_specification = {scale = 0.5},
    fast_replaceable_group = "inserter",
    open_sound = sounds.inserter_open,
    close_sound = sounds.inserter_close,
    working_sound = sounds.inserter_fast,
    hand_base_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/express-stack-inserter/stack-inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    },
    hand_closed_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/express-stack-inserter/stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 112,
      height = 164,
      scale = 0.25
    },
    hand_open_picture =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/express-stack-inserter/stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 134,
      height = 164,
      scale = 0.25
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 132,
      scale = 0.25
    },
    hand_closed_shadow =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 112,
      height = 164,
      scale = 0.25
    },
    hand_open_shadow =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 134,
      height = 164,
      scale = 0.25
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    },
    circuit_connector = circuit_connector_definitions["inserter"],
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
  },
  {
    type = "explosion",
    name = "pm-stack-inserter-explosion",
    icon = "__periodic-madness__/graphics/icons/buildings/stack-inserter.png",
    flags = {"not-on-map"},
    hidden = true,
    subgroup = "inserter-explosions",
    order = "c-h-a",
    height = 0,
    animations = explosion_animations.small_explosion(),
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1,
    sound = sounds.small_explosion,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 17,
            particle_name = "bulk-inserter-metal-particle-medium",
            offset_deviation = { { -0.5, -0.4922 }, { 0.5, 0.4922 } },
            initial_height = 0.3,
            initial_height_deviation = 0.44,
            initial_vertical_speed = 0.058,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 10,
            particle_name = "bulk-inserter-metal-particle-small",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 7,
            particle_name = "cable-and-electronics-particle-small-medium",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.3,
            initial_height_deviation = 0.4,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.049,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
  },
  {
    type = "corpse",
    name = "pm-stack-inserter-remnants",
    icon = "__periodic-madness__/graphics/icons/buildings/stack-inserter.png",
    flags = {"placeable-neutral", "not-on-map"},
    hidden_in_factoriopedia = true,
    subgroup = "inserter-remnants",
    order = "a-h-a",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (4,
    {
      filename = "__periodic-madness__/graphics/entities/buildings/stack-inserter/stack-inserter-remnants.png",
      line_length = 1,
      width = 132,
      height = 96,
      direction_count = 1,
      shift = util.by_pixel(3, -1.5),
      scale = 0.5
    })
  },

  {
    type = "technology",
    name = "pm-stack-inserter",
    icon = "__periodic-madness__/graphics/technology/stack-inserter.png",
    icon_size = 256,
    effects =
    {
      PM.unlock_recipe("pm-stack-inserter"),
      PM.modify("belt-stack-size-bonus", 1)
    },
    prerequisites = {"processing-unit", "lubricant", "bulk-inserter", "chemical-science-pack"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 60
    }
  },
  {
    type = "technology",
    name = "pm-transport-belt-capacity-1",
    icons = util.technology_icon_constant_stack_size("__periodic-madness__/graphics/technology/transport-belt-capacity.png"),
    icon_size = 256,
    effects =
    {
      PM.modify("belt-stack-size-bonus", 1)
    },
    prerequisites = {"pm-stack-inserter", "pm-metalloid-pack-unlock", "pm-alkali-metal-pack-unlock"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"pm-advanced-advanced-transition-metal-science-pack", 1},
        {"pm-post-transition-metal-science-pack", 1},
        {"chemical-science-pack", 1},
        {"pm-alkali-metal-science-pack", 1},
        {"pm-metalloid-science-pack", 1}
      },
      time = 80
    }
  },
})

data.raw["technology"]["pm-advanced-mining-drill-1"].prerequisites = {"pm-stack-inserter"}
data.raw["technology"]["pm-advanced-mining-drill-1"].unit.ingredients =
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"pm-advanced-advanced-transition-metal-science-pack", 1},
  {"pm-post-transition-metal-science-pack", 1},
  {"chemical-science-pack", 1}
}
data.raw["mining-drill"]["pm-electric-mining-drill-2"].drops_full_belt_stacks = true
end