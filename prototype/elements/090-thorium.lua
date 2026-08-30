data:extend({

    {
        type = "item",
        name = "pm-thorium-cast-iron-vessel",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png",
        pictures = 
        {
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/thorium-cast-iron-vessel-2.png", size = 64, scale = 0.5}, --thought it'd be funny to only have 1 thats tipped over
        },
        subgroup = "pm-thorium-ac",
        order = "a",
        stack_size = 250
    },

    {
        type = "item",
        name = "pm-fine-monazite-sand",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/fine-monazite-sand.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/fine-monazite-sand.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/fine-monazite-sand-2.png", size = 64, scale = 0.45},
          {filename = "__periodic-madness__/graphics/icons/ores/fine-monazite-sand-3.png", size = 64, scale = 0.5},
          --{filename = "__periodic-madness__/graphics/icons/ores/fine-monazite-sand-4.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-thorium-ac",
        order = "d",
        stack_size = 600
    },
    {
        type = "item",
        name = "pm-thorium-filter-cake",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/thorium-filter-cake.png",
        pictures =
        {
            {
                layers =
                {
                  {
                    size = 64,
                    filename = "__periodic-madness__/graphics/icons/thorium-filter-cake.png",
                    scale = 0.5,
                  },
                  {
                    draw_as_light = true,
                    flags = { "light" },
                    size = 64,
                    filename = "__periodic-madness__/graphics/light/thorium-filter-cake-light.png",
                    scale = 0.5,
                    mipmap_count = 4
                  },
                },
            },
            {
                layers =
                {
                  {
                    size = 64,
                    filename = "__periodic-madness__/graphics/icons/thorium-filter-cake-2.png",
                    scale = 0.5,
                  },
                  {
                    draw_as_light = true,
                    flags = { "light" },
                    size = 64,
                    filename = "__periodic-madness__/graphics/light/thorium-filter-cake-light-2.png",
                    scale = 0.5,
                    mipmap_count = 4
                  },
                },
            },
            {
                layers =
                {
                  {
                    size = 64,
                    filename = "__periodic-madness__/graphics/icons/thorium-filter-cake-3.png",
                    scale = 0.5,
                  },
                  {
                    draw_as_light = true,
                    flags = { "light" },
                    size = 64,
                    filename = "__periodic-madness__/graphics/light/thorium-filter-cake-light-3.png",
                    scale = 0.5,
                    mipmap_count = 4
                  },
                },
            },
            {
                layers =
                {
                  {
                    size = 64,
                    filename = "__periodic-madness__/graphics/icons/thorium-filter-cake-4.png",
                    scale = 0.5,
                  },
                  {
                    draw_as_light = true,
                    flags = { "light" },
                    size = 64,
                    filename = "__periodic-madness__/graphics/light/thorium-filter-cake-light-4.png",
                    scale = 0.5,
                    mipmap_count = 4
                  },
                },
            },
        },
        subgroup = "pm-thorium-ac",
        order = "f",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-trace-thorium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-thorium-ac",
        order = "h",
        stack_size = 400
    },
    {
        type = "item",
        name = "pm-thorium-232",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/thorium-232.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/thorium-232.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/thorium-232-2.png", size = 64, scale = 0.45},
          {filename = "__periodic-madness__/graphics/icons/ores/thorium-232-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-thorium-ac",
        order = "i",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-thorium-233",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/thorium-233.png",
        pictures =
        {
          {filename = "__periodic-madness__/graphics/icons/ores/thorium-233.png", size = 64, scale = 0.5},
          {filename = "__periodic-madness__/graphics/icons/ores/thorium-233-2.png", size = 64, scale = 0.46},
          {filename = "__periodic-madness__/graphics/icons/ores/thorium-233-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-thorium-ac",
        order = "j",
        custom_tooltip_fields =
        {
            {
              name = {"pm-tooltips.beta-decay"},
              value = {"", "[img=item.pm-protactinium-233]", {"item-name.pm-protactinium-233"}}
            },
        },
        stack_size = 100
    },

    {
        type = "item",
        name = "pm-sodium-diuranate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-thorium-ac",
        order = "x",
        stack_size = 400
    },
    {
        type = "item",
        name = "pm-trisodium-phosphate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-thorium-ac",
        order = "x",
        stack_size = 400
    },

    {
      type = "fluid",
      name = "pm-phosphoryl-chloride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/heavy-noble-gas-mixture.png",
      subgroup = "pm-thorium-ac",
      order = "b",
      default_temperature = 15,
      base_color = {0.82, 0.91, 0.733},
      flow_color = {0.72, 0.81, 0.633},
    },
    {
      type = "fluid",
      name = "pm-tributyl-phosphate",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/heavy-noble-gas-mixture.png",
      subgroup = "pm-thorium-ac",
      order = "c",
      default_temperature = 15,
      base_color = {0.82, 0.91, 0.733},
      flow_color = {0.72, 0.81, 0.633},
    },
    {
      type = "fluid",
      name = "pm-thorium-filtered-concentrate",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/heavy-noble-gas-mixture.png",
      subgroup = "pm-thorium-ac",
      order = "e",
      default_temperature = 15,
      base_color = {0.82, 0.91, 0.733},
      flow_color = {0.72, 0.81, 0.633},
    },
    {
      type = "fluid",
      name = "pm-thorium-precipitate",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/heavy-noble-gas-mixture.png",
      subgroup = "pm-thorium-ac",
      order = "g",
      default_temperature = 15,
      base_color = {0.82, 0.91, 0.733},
      flow_color = {0.72, 0.81, 0.633},
    },
    {
      type = "fluid",
      name = "pm-liquid-thorium-fluoride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/heavy-noble-gas-mixture.png",
      subgroup = "pm-thorium-ac",
      order = "k",
      default_temperature = 15,
      fuel_value = "600MW", --fuel value of 10MJ
      spent_fluid =
      {
        name = "pm-liquid-thorium-fluoride-waste",
        amount = 0.25,
      },
      base_color = {0.82, 0.91, 0.733},
      flow_color = {0.72, 0.81, 0.633},
    },
    {
      type = "fluid",
      name = "pm-liquid-thorium-fluoride-waste",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/fluids/heavy-noble-gas-mixture.png",
      subgroup = "pm-thorium-ac",
      order = "l",
      default_temperature = 15,
      base_color = {0.82, 0.91, 0.733},
      flow_color = {0.72, 0.81, 0.633},
    },

    {
        type = "recipe",
        name = "pm-thorium-cast-iron-vessel",
        enabled = false,
        energy_required = 27,
        categories = {"pm-moltening"},
        ingredients =
        {
            PM.ingredient("pm-molten-iron", 15, "fluid"),
            PM.ingredient("pm-boron", 30, "fluid"),
            PM.ingredient("pm-crucible", 3),
            PM.ingredient("pm-graphite", 5)
        },
        results =
        {
            PM.product("pm-thorium-cast-iron-vessel"):amount(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-phosphoryl-chloride",
        enabled = false,
        energy_required = 9,
        categories = {"chemistry"},
        main_product = "pm-phosphoryl-chloride",
        ingredients =
        {
            PM.ingredient("pm-potassium", 6),
            PM.ingredient("pm-red-phosphorus", 4),
            PM.ingredient("pm-oxygen-gas", 30, "fluid"),
            PM.ingredient("pm-chlorine", 90, "fluid")
        },
        results =
        {
            PM.product("pm-phosphoryl-chloride", "fluid"):amount(30):done(),
            PM.product("pm-potassium"):amount(3):catalyst(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-tributyl-phosphate",
        enabled = false,
        energy_required = 18,
        categories = {"chemistry"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-phosphoryl-chloride", 15, "fluid"),
            PM.ingredient("pm-butane-gas", 30, "fluid")
        },
        results =
        {
            PM.product("pm-tributyl-phosphate", "fluid"):amount(20):done()
        }
    },

    {
        type = "recipe",
        name = "pm-fine-monazite-sand",
        enabled = false,
        energy_required = 8,
        categories = {"pm-crushing"},
        allow_productivity = true,
        main_product = "pm-fine-monazite-sand",
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 12)
        },
        results =
        {
            PM.product("pm-monazite-sand"):amount(6):catalyst(5):done(),
            PM.product("pm-fine-monazite-sand"):amount(16):done()
        }
    },
    {
        type = "recipe",
        name = "pm-thorium-filtered-concentrate",
        enabled = false,
        energy_required = 16,
        categories = {"pm-mixing"},
        allow_productivity = true,
        main_product = "pm-thorium-filtered-concentrate",
        ingredients =
        {
            PM.ingredient("pm-sodium-hydroxide", 25, "fluid"),
            PM.ingredient("pm-fine-monazite-sand", 8),
            PM.ingredient("water", 50, "fluid"),
            PM.catalyst_ingredient("pm-rhenium-platinum-catalyst", 3, 3)
        },
        results = 
        {
            PM.product("pm-thorium-filtered-concentrate", "fluid"):amount(10):done(),
            PM.product("pm-acidic-water", "fluid"):amount(30):catalyst(30):done(),
            PM.product("pm-rhenium-platinum-catalyst"):amount(3):chance(0.8):catalyst(3):done(),
            PM.product("pm-catalyst-container"):amount(3):chance(0.2):catalyst(3):done()
        }
    },
    {
        type = "recipe",
        name = "pm-thorium-filter-cake",
        enabled = false,
        energy_required = 36,
        categories = {"pm-washing"},
        main_product = "pm-thorium-filter-cake",
        ingredients =
        {
            PM.ingredient("pm-thorium-filtered-concentrate", 10, "fluid"),
            PM.ingredient("pm-acidic-water", 20, "fluid"),
            PM.ingredient("pm-thorium-cast-iron-vessel", 2)
        },
        results =
        {
            PM.product("pm-thorium-filter-cake"):amount(4, 6):done(),
            PM.product("pm-thorium-cast-iron-vessel"):amount(1, 2):catalyst(2):done()
        }
    },
    {
        type = "recipe",
        name = "pm-thorium-filter-cake-seperation",
        enabled = false,
        energy_required = 24,
        categories = {"centrifuging"},
        allow_productivity = true,
        main_product = "pm-thorium-precipitate",
        ingredients =
        {
            PM.ingredient("pm-thorium-filter-cake", 3),
            PM.ingredient("pm-hydrochloric-acid", 50, "fluid"),
            PM.ingredient("pm-sodium-hydroxide", 25, "fluid")
        },
        results =
        {
            PM.product("pm-sodium-diuranate"):amount(1):chance(0.01):done(),
            PM.product("pm-trisodium-phosphate"):amount(0, 2):done(),
            PM.product("pm-thorium-precipitate", "fluid"):amount(2.5):done()
        }
    },
    {
        type = "recipe",
        name = "pm-trace-thorium",
        enabled = false,
        energy_required = 16,
        categories = {"pm-washing"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-thorium-precipitate", 5, "fluid"),
            PM.ingredient("pm-sodium-hydroxide", 25, "fluid")
        },
        results =
        {
            PM.product("pm-trace-thorium"):amount(2, 8):done()
        }
    },
    {
        type = "recipe",
        name = "pm-thorium-232",
        enabled = false,
        energy_required = 12,
        categories = {"chemistry"},
        ingredients =
        {
            PM.ingredient("pm-trace-thorium", 10),
            PM.ingredient("pm-tributyl-phosphate", 20, "fluid"),
            PM.ingredient("pm-kerosene", 40, "fluid")
        },
        results =
        {
            PM.product("pm-thorium-232"):amount(1, 2):done()
        }
    },

    {
        type = "recipe",
        name = "pm-thorium-233",
        enabled = false,
        energy_required = 24,
        categories = {"pm-cyclotroning"},
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-thorium-232", 10)
        },
        results =
        {
            PM.product("pm-thorium-233"):amount(10):done()
        }
    },
    {
        type = "recipe",
        name = "pm-liquid-thorium-fluoride",
        enabled = false,
        energy_required = 12,
        categories = {"chemistry"},
        main_product = "pm-liquid-thorium-fluoride",
        ingredients =
        {
            PM.ingredient("pm-thorium-233", 5),
            PM.ingredient("pm-molten-potassium-salts", 25, "fluid"),
            PM.catalyst_ingredient("pm-molten-gold", 20, 20, "fluid"),
            PM.ingredient("pm-flourine", 10),
        },
        results =
        {
            PM.product("pm-liquid-thorium-fluoride", "fluid"):amount(30):done(),
            PM.product("pm-molten-gold", "fluid"):amount(20):catalyst(20):done()
        }
    },
    {
        type = "recipe",
        name = "pm-liquid-thorium-fluoride-waste-seperation",
        enabled = false,
        energy_required = 24,
        categories = {"centrifuging"},
        main_product = "pm-uranium-233",
        ingredients =
        {
            PM.ingredient("pm-liquid-thorium-fluoride-waste", 10, "fluid"),
            
        },
        results =
        {
            PM.product("pm-uranium-233"):amount(0, 2):chance(0.96):done(),
            PM.product("pm-liquid-thorium-fluoride", "fluid"):amount(1, 4):chance(0.99):done(),
            PM.product("pm-neodymium-oxide"):amount(0, 1):chance(0.14):done(),
            PM.product("pm-xenon-gas", "fluid"):amount(0.5, 2.5):chance(0.26):done()
        }
    }
})