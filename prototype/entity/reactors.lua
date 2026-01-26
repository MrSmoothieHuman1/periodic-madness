data:extend({
--MARK: Polonium reactor
    {
        type = "reactor",
        name = "pm-polonium-reactor",
        icon = "__periodic-madness__/graphics/icons/buildings/polonium-reactor.png",
        icon_size = 128,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.7, result = "pm-polonium-reactor" },
        max_health = 250,
        corpse = "nuclear-reactor-remnants",
        dying_explosion  = "nuclear-reactor-explosion",
        consumption = "50MW",
        neighbour_bonus = 0.25,
        energy_source =
        {
          type = "burner",
          fuel_categories = {"pm-polonium"},
          effectivity = 1,
          fuel_inventory_size = 1,
          burnt_inventory_size = 1,
          emissions_per_minute = {pollution = 15},
          light_flicker =
          {
            color = { 0, 0, 0 },
            minimum_intensity = 0.7,
            maximum_intensity = 0.95
          }
        },
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/nuclear-reactor-1.ogg",
              volume = 0.55
            },
            {
              filename = "__base__/sound/nuclear-reactor-2.ogg",
              volume = 0.55
            }
          },
          max_sounds_per_type = 3,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },

        meltdown_action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "atomic-rocket"
              }
            }
          }
        },
        collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        lower_layer_picture =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
          width = 320,
          height = 316,
          scale = 0.5,
          shift = util.by_pixel(-1, -5)
        },
        heat_lower_layer_picture = apply_heat_pipe_glow{
	    		filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
	    		width = 320,
	    		height = 316,
	    		scale = 0.5,
	    		shift = util.by_pixel(-0.5, -4.5)
	    	}--[[@as data.Sprite]],
        working_light_picture =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor.png",
              width = 320,
              height = 320,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              scale = 0.5,
              shift = util.by_pixel(-5, -7)
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor-shadow.png",
              width = 320,
              height = 320,
              line_length = 1,
              frame_count = 1,
              repeat_count = 24,
              scale = 0.5,
              shift = { 1.625, 0 },
              draw_as_shadow = true
            }
          }
        },
        picture =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor.png",
              width = 320,
              height = 320,
              frame_count = 1,
              scale = 0.5,
              shift = util.by_pixel(-5, -7)
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor-shadow.png",
              width = 320,
              height = 320,
              scale = 0.5,
              shift = { 1.625, 0 },
              draw_as_shadow = true
            }
          }
        },
        connection_patches_connected =
        {
          sheet =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
            width = 64,
            height = 64,
            variation_count = 12,
            scale = 0.5
          }
        },

        connection_patches_disconnected =
        {
          sheet =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
            width = 64,
            height = 64,
            variation_count = 12,
            y = 64,
            scale = 0.5
          }
        },

        heat_connection_patches_connected =
        {
          sheet = apply_heat_pipe_glow{
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
            width = 64,
            height = 64,
            variation_count = 12,
            scale = 0.5
          }--[[@as data.SpriteSheet]]
        },

        heat_connection_patches_disconnected =
        {
          sheet = apply_heat_pipe_glow{
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
            width = 64,
            height = 64,
            variation_count = 12,
            y = 64,
            scale = 0.5
          }--[[@as data.SpriteSheet]]
        },
        heat_buffer =
        {
          max_temperature = 850,
          specific_heat = "10MJ",
          max_transfer = "10GW",
          minimum_glow_temperature = 500,
          connections =
          {
            {
              position = { -2, -2 },
              direction = defines.direction.north --[[@as int]]
            },
            {
              position = { 0, -2 },
              direction = defines.direction.north --[[@as int]]
            },
            {
              position = { 2, -2 },
              direction = defines.direction.north --[[@as int]]
            },
            {
              position = { 2, -2 },
              direction = defines.direction.east --[[@as int]]
            },
            {
              position = { 2, 0 },
              direction = defines.direction.east --[[@as int]]
            },
            {
              position = { 2, 2 },
              direction = defines.direction.east --[[@as int]]
            },
            {
              position = { 2, 2 },
              direction = defines.direction.south --[[@as int]]
            },
            {
              position = { 0, 2 },
              direction = defines.direction.south --[[@as int]]
            },
            {
              position = { -2, 2 },
              direction = defines.direction.south --[[@as int]]
            },
            {
              position = { -2, 2 },
              direction = defines.direction.west --[[@as int]]
            },
            {
              position = { -2, 0 },
              direction = defines.direction.west --[[@as int]]
            },
            {
              position = { -2, -2 },
              direction = defines.direction.west --[[@as int]]
            }
          },
        },
    },
--MARK: Thorium reactor
    {
        type = "reactor",
        name = "pm-molten-salt-thorium-reactor",
        icon = "__periodic-madness__/graphics/icons/buildings/polonium-reactor.png",
        icon_size = 128,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 1.5, result = "pm-polonium-reactor" },
        max_health = 1500,
        corpse = "nuclear-reactor-remnants",
        dying_explosion  = "nuclear-reactor-explosion",
        consumption = "80MW",
        neighbour_bonus = 0.375,
        energy_source =
        {
          type = "burner",
          fuel_categories = {"pm-thorium", "pm-uranium-233"},
          effectivity = 1,
          fuel_inventory_size = 1,
          burnt_inventory_size = 1,
          emissions_per_minute = {pollution = 1},
          light_flicker =
          {
            color = { 0, 0, 0 },
            minimum_intensity = 0.7,
            maximum_intensity = 0.95
          }
        },
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/nuclear-reactor-1.ogg",
              volume = 0.55
            },
            {
              filename = "__base__/sound/nuclear-reactor-2.ogg",
              volume = 0.55
            }
          },
          max_sounds_per_type = 3,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        meltdown_action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "atomic-rocket"
              }
            }
          }
        },
        collision_box = { { -2.8, -2.8 }, { 2.8, 2.8 } },
        selection_box = { { -3, -3 }, { 3, 3 } },
        lower_layer_picture =
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
          width = 320,
          height = 316,
          scale = 0.5,
          shift = util.by_pixel(-1, -5)
        },
        heat_lower_layer_picture = apply_heat_pipe_glow{
	    		filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes-heated.png",
	    		width = 320,
	    		height = 316,
	    		scale = 0.5,
	    		shift = util.by_pixel(-0.5, -4.5)
	    	}--[[@as data.Sprite]],
        working_light_picture =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor.png",
              width = 320,
              height = 320,
              line_length = 6,
              frame_count = 24,
              animation_speed = 0.5,
              scale = 0.5,
              shift = util.by_pixel(-5, -7)
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor-shadow.png",
              width = 320,
              height = 320,
              line_length = 1,
              frame_count = 1,
              repeat_count = 24,
              scale = 0.5,
              shift = { 1.625, 0 },
              draw_as_shadow = true
            }
          }
        },
        picture =
        {
          layers =
          {
            {
              filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor.png",
              width = 320,
              height = 320,
              frame_count = 1,
              scale = 0.5,
              shift = util.by_pixel(-5, -7)
            },
            {
              filename = "__periodic-madness__/graphics/entities/buildings/polonium-reactor/polonium-reactor-shadow.png",
              width = 320,
              height = 320,
              scale = 0.5,
              shift = { 1.625, 0 },
              draw_as_shadow = true
            }
          }
        },
        connection_patches_connected =
        {
          sheet =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
            width = 64,
            height = 64,
            variation_count = 12,
            scale = 0.5
          }
        },

        connection_patches_disconnected =
        {
          sheet =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
            width = 64,
            height = 64,
            variation_count = 12,
            y = 64,
            scale = 0.5
          }
        },

        heat_connection_patches_connected =
        {
          sheet = apply_heat_pipe_glow{
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
            width = 64,
            height = 64,
            variation_count = 12,
            scale = 0.5
          }--[[@as data.SpriteSheet]]
        },

        heat_connection_patches_disconnected =
        {
          sheet = apply_heat_pipe_glow{
            filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches-heated.png",
            width = 64,
            height = 64,
            variation_count = 12,
            y = 64,
            scale = 0.5
          }--[[@as data.SpriteSheet]]
        },
        heat_buffer =
        {
          max_temperature = 1500,
          specific_heat = "10MJ",
          max_transfer = "10GW",
          minimum_glow_temperature = 750,
          connections =
          {
            {
              position = { -2, -2 },
              direction = defines.direction.north --[[@as int]]
            },
            {
              position = { 0, -2 },
              direction = defines.direction.north --[[@as int]]
            },
            {
              position = { 2, -2 },
              direction = defines.direction.north --[[@as int]]
            },
            {
              position = { 2, -2 },
              direction = defines.direction.east --[[@as int]]
            },
            {
              position = { 2, 0 },
              direction = defines.direction.east --[[@as int]]
            },
            {
              position = { 2, 2 },
              direction = defines.direction.east --[[@as int]]
            },
            {
              position = { 2, 2 },
              direction = defines.direction.south --[[@as int]]
            },
            {
              position = { 0, 2 },
              direction = defines.direction.south --[[@as int]]
            },
            {
              position = { -2, 2 },
              direction = defines.direction.south --[[@as int]]
            },
            {
              position = { -2, 2 },
              direction = defines.direction.west --[[@as int]]
            },
            {
              position = { -2, 0 },
              direction = defines.direction.west --[[@as int]]
            },
            {
              position = { -2, -2 },
              direction = defines.direction.west --[[@as int]]
            }
          },
        },
    },
})