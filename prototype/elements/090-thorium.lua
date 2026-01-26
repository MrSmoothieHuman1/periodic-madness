data:extend({

    {
        type = "item",
        name = "pm-thorium-cast-iron-vessel",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-thorium-ac",
        order = "a",
        stack_size = 250
    },

    {
        type = "item",
        name = "pm-fine-monazite-sand",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-thorium-ac",
        order = "d",
        stack_size = 600
    },
    {
        type = "item",
        name = "pm-thorium-filter-cake",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
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
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-thorium-ac",
        order = "i",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-thorium-233",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/placeholder-item.png",
        subgroup = "pm-thorium-ac",
        order = "j",
        stack_size = 100
    },
    {
      type = "item",
      name = "pm-liquid-thorium-fluoride-fuel-cell",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/liquid-thorium-fluoride-fuel-cell.png",
      pictures =
      {
        layers =
        {
          {
            size = 64,
            filename = "__periodic-madness__/graphics/icons/polonium-fuel-cell.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = { "light" },
            size = 64,
            filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
            scale = 0.5,
          }
        }
      },
      subgroup = "pm-thorium-ac",
      burnt_result = "pm-liquid-thorium-fluoride-residue",
      fuel_category = "pm-polonium",
      fuel_value = "20GJ",
      order = "l",
      stack_size = 50
    },
    {
      type = "item",
      name = "pm-liquid-thorium-fluoride-residue",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/used-up-polonium-fuel-cell.png",
      subgroup = "pm-thorium-ac",
      order = "m",
      stack_size = 50
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
      gas_temperature = 15,
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
      gas_temperature = 15,
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
      gas_temperature = 15,
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
      gas_temperature = 15,
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
      gas_temperature = 15,
      base_color = {0.82, 0.91, 0.733},
      flow_color = {0.72, 0.81, 0.633},
    },

    {
        type = "recipe",
        name = "pm-thorium-cast-iron-vessel",
        enabled = false,
        energy_required = 27,
        category = "pm-moltening",
        ingredients =
        {
            PM.ingredient("pm-molten-iron", 15, "fluid"),
            PM.ingredient("pm-boron", 30, "fluid"),
            PM.ingredient("pm-crucible", 3),
            PM.ingredient("pm-graphite", 5)
        },
        results =
        {
            PM.product("pm-thorium-cast-iron-vessel", 3)
        }
    },
    {
        type = "recipe",
        name = "pm-phosphoryl-chloride",
        enabled = false,
        energy_required = 9,
        category = "chemistry",
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
            PM.product("pm-phosphoryl-chloride", 30, "fluid"),
            PM.catalyst("pm-potassium", 3, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-tributyl-phosphate",
        enabled = false,
        energy_required = 18,
        category = "chemistry",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-phosphoryl-chloride", 15, "fluid"),
            PM.ingredient("pm-butane-gas", 30, "fluid")
        },
        results =
        {
            PM.product("pm-tributyl-phosphate", 20, "fluid")
        }
    },

    {
        type = "recipe",
        name = "pm-fine-monazite-sand",
        enabled = false,
        energy_required = 8,
        category = "pm-crushing",
        allow_productivity = true,
        main_product = "pm-fine-monazite-sand",
        ingredients =
        {
            PM.ingredient("pm-monazite-sand", 12)
        },
        results =
        {
            PM.catalyst("pm-monazite-sand", 6, 5),
            PM.product("pm-fine-monazite-sand", 16)
        }
    },
    {
        type = "recipe",
        name = "pm-thorium-filtered-concentrate",
        enabled = false,
        energy_required = 16,
        category = "pm-mixing",
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
            PM.product("pm-thorium-filtered-concentrate", 10, "fluid"),
            PM.catalyst("pm-acidic-water", 30, 30, "fluid"),
            PM.catalyst_chance("pm-rhenium-platinum-catalyst", 3, 0.8, 3),
            PM.catalyst_chance("pm-catalyst-container", 3, 0.2, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-thorium-filter-cake",
        enabled = false,
        energy_required = 36,
        category = "pm-washing",
        main_product = "pm-thorium-filter-cake",
        ingredients =
        {
            PM.ingredient("pm-thorium-filtered-concentrate", 10, "fluid"),
            PM.ingredient("pm-acidic-water", 20, "fluid"),
            PM.ingredient("pm-thorium-cast-iron-vessel", 2)
        },
        results =
        {
            PM.product_range("pm-thorium-filter-cake", 4, 6),
            PM.catalyst_range("pm-thorium-cast-iron-vessel", 1, 2, 2)
        }
    },
    {
        type = "recipe",
        name = "pm-thorium-filter-cake-seperation",
        enabled = false,
        energy_required = 24,
        category = "centrifuging",
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
            PM.product_chance("pm-sodium-diuranate", 1, 0.01),
            PM.product_range("pm-trisodium-phosphate", 0, 2),
            PM.product("pm-thorium-precipitate", 2, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-trace-thorium",
        enabled = false,
        energy_required = 16,
        category = "pm-washing",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-thorium-precipitate", 5, "fluid"),
            PM.ingredient("pm-sodium-hydroxide", 25, "fluid")
        },
        results =
        {
            PM.product_range("pm-trace-thorium", 2, 8)
        }
    },
    {
        type = "recipe",
        name = "pm-thorium-232",
        enabled = false,
        energy_required = 12,
        category = "chemistry",
        ingredients =
        {
            PM.ingredient("pm-trace-thorium", 10),
            PM.ingredient("pm-tributyl-phosphate", 20, "fluid"),
            PM.ingredient("pm-kerosene", 40, "fluid")
        },
        results =
        {
            PM.product_range("pm-thorium-232", 1, 2)
        }
    },

    {
        type = "recipe",
        name = "pm-thorium-233",
        enabled = false,
        energy_required = 24,
        category = "pm-cyclotroning",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-thorium-232", 10)
        },
        results =
        {
            PM.product("pm-thorium-233", 10)
        }
    },
    {
        type = "recipe",
        name = "pm-liquid-thorium-fluoride",
        enabled = false,
        energy_required = 12,
        category = "chemistry",
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
            PM.product("pm-liquid-thorium-fluoride", 30, "fluid"),
            PM.catalyst("pm-molten-gold", 20, 20, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-liquid-thorium-fluoride-fuel-cell",
        enabled = false,
        energy_required = 32,
        category = "crafting-with-fluid",
        ingredients =
        {
            PM.ingredient("pm-liquid-thorium-fluoride", 15, "fluid"),
            PM.ingredient("pm-empty-reactor-cell", 5)
        },
        results =
        {
            PM.product("pm-liquid-thorium-fluoride-fuel-cell", 5)
        }
    }
})