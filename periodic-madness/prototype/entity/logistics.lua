local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local meld = require("meld")

local red_belt = {r = 0.878, g = 0.169, b = 0.169}
local orange_belt = {r = 1, g = 0.502, b = 0}
local blue_belt = {r = 0.169, g = 0.608, b = 0.878}
local purple_belt = {r = 0.616, g = 0.169, b = 0.878}

local red_belt_animation_set = {
    animation_set =
    {
      filename = "__base__/graphics/entity/fast-transport-belt/fast-transport-belt.png",
      priority = "extra-high",
      size = 128,
      scale = 0.5,
      frame_count = 32,
      direction_count = 20
    }
  }
  local orange_belt_animation_set = {
    animation_set =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/fast-transport-belt/fast-transport-belt.png",
      priority = "extra-high",
      size = 128,
      scale = 0.5,
      frame_count = 32,
      direction_count = 20
    }
  }
  local purple_belt_animation_set = {
    animation_set =
    {
      filename = "__periodic-madness__/graphics/entities/buildings/high-density-transport-belts/high-density-transport-belt.png",
      priority = "extra-high",
      size = 128,
      scale = 0.5,
      frame_count = 16,
      direction_count = 20,
      animation_speed = 0.8
    }
  }
belt_reader_gfx = -- not local
{
  belt_reader =
  {
    {
      sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-top",
      {
        priority = "low",
        scale = 0.5,
        frame_count = 4,
        direction_count = 4
      }),
      render_layer = "object"
    },
    {
      sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-base",
      {
        priority = "low",
        scale = 0.5,
        frame_count = 4,
        direction_count = 4
      }),
      render_layer = "transport-belt-reader"
    },
    {
      sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-middle",
      {
        priority = "low",
        scale = 0.5,
        frame_count = 4,
        direction_count = 4
      }),
      render_layer = "floor-mechanics"
    },
    {
      sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-under-middle",
      {
        priority = "low",
        scale = 0.5,
        frame_count = 4,
        direction_count = 4
      }),
      render_layer = "transport-belt-endings"
    },
    {
      sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-bottom",
      {
        priority = "low",
        scale = 0.5,
        frame_count = 4,
        direction_count = 4
      }),
      render_layer = "floor"
    },
    {
      sprites = util.sprite_load("__base__/graphics/entity/transport-belt/belt-reader-shadow",
      {
        priority = "low",
        scale = 0.5,
        frame_count = 4,
        direction_count = 4,
      }),
      render_layer = "floor"
    },
    -- More belt reader layers (with possibly different render layer) should go here
  }
}

meld(orange_belt_animation_set, belt_reader_gfx)
meld(red_belt_animation_set, belt_reader_gfx)
meld(purple_belt_animation_set, belt_reader_gfx)
--I HATE YOU WUBE
data:extend({

    --MARK: High-Denisty Belts
    {
        type = "transport-belt",
        name = "pm-high-density-transport-belt",
        icon = "__periodic-madness__/graphics/icons/buildings/high-density-transport-belt.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "pm-high-density-transport-belt" },
        max_health = 250,
        corpse = "express-transport-belt-remnants",
        dying_explosion = "express-transport-belt-explosion",
        map_color = purple_belt,
        open_sound = sounds.transport_belt_open,
        close_sound = sounds.transport_belt_close,
        resistances =
        {
          {
            type = "fire",
            percent = 50
          }
        },
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/express-transport-belt.ogg",
            volume = 0.3
          },
          persistent = true,
          use_doppler_shift = true,
        },
    
        animation_speed_coefficient = 32,
        belt_animation_set = purple_belt_animation_set,
        related_underground_belt = "pm-high-density-underground-belt",
        fast_replaceable_group = "transport-belt",
        speed = 0.1875,
        connector_frame_sprites = transport_belt_connector_frame_sprites,
        circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
        circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
        circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
    }--[[@as data.TransportBeltPrototype]],
    {
        type = "underground-belt",
        name = "pm-high-density-underground-belt",
        icon = "__periodic-madness__/graphics/icons/buildings/high-density-underground-belt.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "pm-high-density-underground-belt" },
        max_health = 250,
        corpse = "express-underground-belt-remnants",
        dying_explosion = "express-underground-belt-explosion",
        max_distance = 15,
        map_color = purple_belt,
        underground_sprite =
        {
          filename = "__core__/graphics/arrows/underground-lines.png",
          priority = "high",
          width = 64,
          height = 64,
          x = 64,
          scale = 0.5
        },
        underground_remove_belts_sprite =
        {
          filename = "__core__/graphics/arrows/underground-lines-remove.png",
          priority = "high",
          width = 64,
          height = 64,
          x = 64,
          scale = 0.5
        },
        resistances =
        {
          {
            type = "fire",
            percent = 60
          },
          {
            type = "impact",
            percent = 30
          }
        },
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/express-underground-belt.ogg",
            volume = 0.4
          },
          max_sounds_per_type = 2,
          audible_distance_modifier = 0.5,
          persistent = true,
          use_doppler_shift = false
        },
        animation_speed_coefficient = 32,
        belt_animation_set = purple_belt_animation_set,
        connector_frame_sprites = transport_belt_connector_frame_sprites,
        circuit_connector = circuit_connector_definitions["belt"],
        circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
        fast_replaceable_group = "transport-belt",
        speed = 0.1875,
        structure =
        {
          direction_in =
          {
            sheet =
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192,
              scale = 0.5
            }
          },
          direction_out =
          {
            sheet =
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          },
          direction_in_side_loading =
          {
            sheet =
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192 * 3,
              scale = 0.5
            }
          },
          direction_out_side_loading =
          {
            sheet =
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192 * 2,
              scale = 0.5
            }
          },
          back_patch =
          {
            sheet =
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt-structure-back-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          },
          front_patch =
          {
            sheet =
            {
              filename =
              "__periodic-madness__/graphics/entities/buildings/high-density-underground-belt/high-density-underground-belt-structure-front-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          }
        }
      }--[[@as data.UndergroundBeltPrototype]],
      {
        type = "splitter",
        name = "pm-high-density-splitter",
        icon = "__periodic-madness__/graphics/icons/buildings/high-density-splitter.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "pm-high-density-splitter" },
        max_health = 250,
        corpse = "fast-splitter-remnants",
        dying_explosion = "express-splitter-explosion",
        map_color = {r = 0.38, g = 0, b = 0.62},
        open_sound = sounds.transport_belt_open,
        close_sound = sounds.transport_belt_close,
        resistances =
        {
          {
            type = "fire",
            percent = 60
          }
        },
        collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
        selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
        animation_speed_coefficient = 32,
        structure_animation_speed_coefficient = 1.2,
        structure_animation_movement_cooldown = 10,
        belt_animation_set = purple_belt_animation_set,
        fast_replaceable_group = "transport-belt",
        speed = 0.1875,
        structure =
        {
          north =
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-north.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 160,
            height = 70,
            shift = util.by_pixel(7, 0),
            scale = 0.5
          },
          east =
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-east.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 84,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          },
          south =
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-south.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 164,
            height = 64,
            shift = util.by_pixel(4, 0),
            scale = 0.5
          },
          west =
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-west.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 86,
            shift = util.by_pixel(5, 12),
            scale = 0.5
          }
        },
        structure_patch =
        {
          north = util.empty_sprite(),
          east =
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-east-top_patch.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 104,
            shift = util.by_pixel(4, -20),
            scale = 0.5
          },
          south = util.empty_sprite(),
          west =
          {
            filename =
            "__periodic-madness__/graphics/entities/buildings/high-density-splitter/high-density-splitter-west-top_patch.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 96,
            shift = util.by_pixel(5, -18),
            scale = 0.5
          }
        }
      }--[[@as data.SplitterPrototype]],

      -- MARK: Advanced belts
    
      {
        type = "transport-belt",
        name = "pm-advanced-transport-belt",
        icon = "__base__/graphics/icons/fast-transport-belt.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "pm-advanced-transport-belt" },
        max_health = 170,
        corpse = "express-transport-belt-remnants",
        dying_explosion = "express-transport-belt-explosion",
        map_color = red_belt,
        resistances =
        {
          {
            type = "fire",
            percent = 50
          }
        },
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/express-transport-belt.ogg",
            volume = 0.3
          },
          persistent = true,
          use_doppler_shift = true,
        },
        animation_speed_coefficient = 32,
        belt_animation_set = red_belt_animation_set,
        related_underground_belt = "pm-advanced-underground-belt",
        fast_replaceable_group = "transport-belt",
        next_upgrade = "express-transport-belt",
        speed = 0.09375,
        connector_frame_sprites = transport_belt_connector_frame_sprites,
        circuit_connector = circuit_connector_definitions["belt"],
        circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
      }--[[@as data.TransportBeltPrototype]],

      {
        type = "underground-belt",
        name = "pm-advanced-underground-belt",
        icon = "__base__/graphics/icons/fast-underground-belt.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "pm-advanced-underground-belt" },
        max_health = 170,
        corpse = "fast-underground-belt-remnants",
        dying_explosion = "express-underground-belt-explosion",
        max_distance = 9,
        map_color = {r = 0.561, g = 0.278, b = 0},
        open_sound = sounds.transport_belt_open,
        close_sound = sounds.transport_belt_close,
        underground_sprite =
        {
          filename = "__core__/graphics/arrows/underground-lines.png",
          priority = "high",
          width = 64,
          height = 64,
          x = 64,
          scale = 0.5
        },
        underground_remove_belts_sprite =
        {
          filename = "__core__/graphics/arrows/underground-lines-remove.png",
          priority = "high",
          width = 64,
          height = 64,
          x = 64,
          scale = 0.5
        },
        resistances =
        {
          {
            type = "fire",
            percent = 60
          },
          {
            type = "impact",
            percent = 30
          }
        },
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/express-underground-belt.ogg",
            volume = 0.4
          },
          max_sounds_per_type = 2,
          audible_distance_modifier = 0.5,
          persistent = true,
          use_doppler_shift = false
        },
        animation_speed_coefficient = 32,
        belt_animation_set = red_belt_animation_set,
        fast_replaceable_group = "transport-belt",
        next_upgrade = "express-underground-belt",
        speed = 0.09375,
        structure =
        {
          direction_in =
          {
            sheet =
            {
              filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192,
              scale = 0.5
            }
          },
          direction_out =
          {
            sheet =
            {
              filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          },
          direction_in_side_loading =
          {
            sheet =
            {
              filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192 * 3,
              scale = 0.5
            }
          },
          direction_out_side_loading =
          {
            sheet =
            {
              filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192 * 2,
              scale = 0.5
            }
          },
          back_patch =
          {
            sheet =
            {
              filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure-back-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          },
          front_patch =
          {
            sheet =
            {
              filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure-front-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5
            }
          }
        }
      }--[[@as data.UndergroundBeltPrototype]],
      {
        type = "splitter",
        name = "pm-advanced-splitter",
        icon = "__base__/graphics/icons/fast-splitter.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "pm-advanced-splitter" },
        max_health = 170,
        corpse = "fast-splitter-remnants",
        dying_explosion = "express-splitter-explosion",
        map_color = red_belt,
        open_sound = sounds.transport_belt_open,
        close_sound = sounds.transport_belt_close,
        resistances =
        {
          {
            type = "fire",
            percent = 60
          }
        },
        collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
        selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
        animation_speed_coefficient = 32,
        structure_animation_speed_coefficient = 1.2,
        structure_animation_movement_cooldown = 10,
        belt_animation_set = red_belt_animation_set,
        fast_replaceable_group = "transport-belt",
        next_upgrade = "express-splitter",
        speed = 0.09375,
        icon_draw_specification = {scale = 0.5},
        structure =
        {
          north =
          {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-north.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 160,
            height = 70,
            shift = util.by_pixel(7, 0),
            scale = 0.5
          },
          east =
          {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-east.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 84,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          },
          south =
          {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-south.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 164,
            height = 64,
            shift = util.by_pixel(4, 0),
            scale = 0.5
          },
          west =
          {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-west.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 86,
            shift = util.by_pixel(6, 12),
            scale = 0.5
          }
        },
        structure_patch =
        {
          north = util.empty_sprite(),
          east =
          {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-east-top_patch.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 104,
            shift = util.by_pixel(4, -20),
            scale = 0.5
          },
          south = util.empty_sprite(),
          west =
          {
            filename = "__base__/graphics/entity/fast-splitter/fast-splitter-west-top_patch.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 96,
            shift = util.by_pixel(6, -18),
            scale = 0.5
          }
        }
      }--[[@as data.SplitterPrototype]],
})

data.raw["transport-belt"]["fast-transport-belt"].map_color = red_belt
data.raw["underground-belt"]["fast-underground-belt"].map_color = red_belt
data.raw["splitter"]["fast-splitter"].map_color = red_belt
data.raw["transport-belt"]["express-transport-belt"].map_color = blue_belt
data.raw["underground-belt"]["express-underground-belt"].map_color = blue_belt
data.raw["splitter"]["express-splitter"].map_color = blue_belt

data.raw["solar-panel"]["solar-panel"].map_color = {r = 0.356, g = 0.495, b = 0.62}

data.raw["transport-belt"]["fast-transport-belt"].icon = "__periodic-madness__/graphics/icons/buildings/fast-transport-belt.png"
data.raw["splitter"]["fast-splitter"].icon = "__periodic-madness__/graphics/icons/buildings/fast-transport-belt.png"
data.raw["underground-belt"]["fast-underground-belt"].icon = "__periodic-madness__/graphics/icons/buildings/fast-transport-belt.png"

data.raw["transport-belt"]["fast-transport-belt"].belt_animation_set = orange_belt_animation_set
data.raw["splitter"]["fast-splitter"].belt_animation_set = orange_belt_animation_set
data.raw["splitter"]["fast-splitter"].structure =
{
  north =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-north.png",
    frame_count = 32,
    line_length = 8,
    priority = "extra-high",
    width = 160,
    height = 70,
    shift = util.by_pixel(7, 0),
    scale = 0.5
  },
  east =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-east.png",
    frame_count = 32,
    line_length = 8,
    priority = "extra-high",
    width = 90,
    height = 84,
    shift = util.by_pixel(4, 13),
    scale = 0.5
  },
  south =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-south.png",
    frame_count = 32,
    line_length = 8,
    priority = "extra-high",
    width = 164,
    height = 64,
    shift = util.by_pixel(4, 0),
    scale = 0.5
  },
  west =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-west.png",
    frame_count = 32,
    line_length = 8,
    priority = "extra-high",
    width = 90,
    height = 86,
    shift = util.by_pixel(5, 12),
    scale = 0.5
  }
}
data.raw["splitter"]["fast-splitter"].structure_patch =
{
  north = util.empty_sprite(),
  east =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-east-top_patch.png",
    frame_count = 1,
    line_length = 8,
    priority = "extra-high",
    width = 90,
    height = 104,
    shift = util.by_pixel(4, -20),
    scale = 0.5
  },
  south = util.empty_sprite(),
  west =
  {
    filename =
    "__periodic-madness__/graphics/entities/buildings/fast-splitter/fast-splitter-west-top_patch.png",
    frame_count = 1,
    line_length = 8,
    priority = "extra-high",
    width = 94,
    height = 96,
    shift = util.by_pixel(5, -18),
    scale = 0.5
  }
}
data.raw["underground-belt"]["fast-underground-belt"].belt_animation_set = orange_belt_animation_set
data.raw["underground-belt"]["fast-underground-belt"].structure =
{
  direction_in =
  {
    sheet =
    {
      filename =
      "__periodic-madness__/graphics/entities/buildings/fast-underground-belt/fast-underground-belt-structure.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      y = 192,
      scale = 0.5
    }
  },
  direction_out =
  {
    sheet =
    {
      filename =
      "__periodic-madness__/graphics/entities/buildings/fast-underground-belt/fast-underground-belt-structure.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      scale = 0.5
    }
  },
  direction_in_side_loading =
  {
    sheet =
    {
      filename =
      "__periodic-madness__/graphics/entities/buildings/fast-underground-belt/fast-underground-belt-structure.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      y = 192 * 3,
      scale = 0.5
    }
  },
  direction_out_side_loading =
  {
    sheet =
    {
      filename =
      "__periodic-madness__/graphics/entities/buildings/fast-underground-belt/fast-underground-belt-structure.png",
      priority = "extra-high",
      width = 192,
      height = 192,
      y = 192 * 2,
      scale = 0.5
    }
  }
}

data.raw["transport-belt"]["fast-transport-belt"].map_color = orange_belt
data.raw["underground-belt"]["fast-underground-belt"].map_color = orange_belt
data.raw["splitter"]["fast-splitter"].map_color = orange_belt
data.raw["transport-belt"]["express-transport-belt"].speed = 0.125
data.raw["underground-belt"]["express-underground-belt"].speed = 0.125
data.raw["underground-belt"]["express-underground-belt"].max_distance = 12 --TODO: Confirm this is what you wanted
--yes, yes it is what i wanted
data.raw["splitter"]["express-splitter"].speed = 0.125
data.raw["splitter"]["fast-splitter"].next_upgrade = "pm-advanced-splitter"
data.raw["transport-belt"]["fast-transport-belt"].next_upgrade = "pm-advanced-transport-belt"
data.raw["underground-belt"]["fast-underground-belt"].next_upgrade = "pm-advanced-underground-belt"