local PM = require("library")
--im going insane

data:extend({

  {
    type = "recipe",
    name = "pm-ferrum",
    enabled = false,
    energy_required = 18,
    subgroup = "pm-iron-tm",
    order = "x",
    category = "pm-moltening",
    ingredients =
    {
      PM.ingredient("pm-oxygen-gas", 30, "fluid"),
      PM.ingredient("iron-plate", 10),
      PM.ingredient("pm-sodium-bicarbonate", 5)
    },
    results =
    {
      PM.product("pm-ferrum", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-patina",
    enabled = false,
    energy_required = 18,
    subgroup = "pm-copper-tm",
    order = "x",
    category = "pm-moltening",
    ingredients =
    {
      PM.ingredient("sulfuric-acid", 30, "fluid"),
      PM.ingredient("copper-plate", 10),
    },
    results =
    {
      PM.product("pm-patina", 10)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-potassium-salts",
    enabled = false,
    energy_required = 2.5,
    category = "pm-moltening",
    subgroup = "pm-glassing",
    order = "aa",
    ingredients =
    {
      PM.ingredient("pm-molten-zinc", 5, "fluid"),
      PM.ingredient("pm-potassium", 5),
      PM.ingredient("pm-sodium", 10)
    },
    results =
    {
      PM.product("pm-molten-potassium-salts", 12, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-potassium-salt-glass",
    enabled = false,
    energy_required = 3,
    category = "pm-coldening",
    subgroup = "pm-glassing",
    order = "ba",
    ingredients =
    {
      PM.ingredient("pm-molten-potassium-salts", 2, "fluid"),
      PM.ingredient("pm-sand", 8)
    },
    results =
    {
      PM.product("pm-glass-pane", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-borosilicate-glass",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/borosillicate-glass-melting.png",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-borosilicate-glassing",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 10),
      PM.ingredient("pm-boric-oxide", 8),
      PM.ingredient("pm-aluminium-plate", 4),
      PM.ingredient("pm-sea-salt", 8),
      PM.ingredient("pm-molten-tin", 5, "fluid")
    },
    results =
    {
      PM.product("pm-molten-borosilicate-glass", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-borosilicate-glass-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/borosillicate-glass-cooling.png",
    enabled = false,
    energy_required = 9,
    category = "pm-coldening",
    subgroup = "pm-borosilicate-glassing",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-molten-borosilicate-glass", 5, "fluid"),
      PM.ingredient("pm-crucible", 2)
    },
    results =
    {
      PM.product("pm-borosilicate-glass", 5),
      PM.product_range("pm-crucible", 1, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-borosilicate-glass-fibers",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/glass-fibers.png",
        icon_size = 64
      },
      {
        icon = "__periodic-madness__/graphics/icons/borosilicate-glass-pane.png",
        icon_size = 64
      },
    },
    enabled = false,
    energy_required = 1,
    category = "pm-moltening",
    subgroup = "pm-borosilicate-glassing",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-molten-borosilicate-glass", 2.5, "fluid"),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results =
    {
      PM.product("pm-glass-fibers", 15),
      PM.product_chance("pm-flux-container", 1, 0.9),
    }
  },
  {
    type = "recipe",
    name = "pm-titanium-sapphire",
    enabled = false,
    energy_required = 10,
    category = "pm-moltening",
    subgroup = "pm-sapphire-ptm",
    order = "d",
    ingredients = 
    {
      PM.ingredient("pm-molten-titanium", 10, "fluid"),
      PM.ingredient("pm-cut-sapphire", 2)
    },
    results =
    {
      PM.product("pm-titanium-sapphire", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-copper-wire-casting",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-copper.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__base__/graphics/icons/copper-cable.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-coldening",
    subgroup = "pm-wires",
    order = "ab",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-molten-copper", 2.5, "fluid"),
      PM.ingredient("pm-germanium-ore", 3),
      PM.ingredient("pm-borax", 2)
    },
    results =
    {
      PM.product("copper-cable", 15)
    }
  },
  {
    type = "recipe",
    name = "pm-gold-wire-casting",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-gold.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/gold-wire.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-coldening",
    subgroup = "pm-wires",
    order = "bb",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-molten-gold", 2.5, "fluid"),
      PM.ingredient("pm-palladium-plate", 2),
      PM.ingredient("pm-cobalt-plate", 3),
      PM.ingredient("pm-borax", 2)
    },
    results =
    {
      PM.product("pm-gold-wire", 15)
    }
  },
  {
    type = "recipe",
    name = "pm-indium-wire-casting",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-indium.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/indium-wire.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-coldening",
    subgroup = "pm-wires",
    order = "db",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-molten-indium", 2.5, "fluid"),
      PM.ingredient("pm-thallium-plate", 3),
      PM.ingredient("pm-borax", 2)
    },
    results =
    {
      PM.product("pm-indium-wire", 15)
    }
  },
  {
    type = "recipe",
    name = "pm-iron-gear-casting",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-iron.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__base__/graphics/icons/iron-gear-wheel.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-coldening",
    subgroup = "pm-gears",
    order = "ab",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-molten-iron", 2.5, "fluid"),
      PM.ingredient("pm-industrial-grade-silicon-ore", 3),
      PM.ingredient("pm-coke", 2),
      PM.ingredient("pm-borax", 2)
    },
    results =
    {
      PM.product("iron-gear-wheel", 5)
    }
  },
  {
    type = "recipe",
    name = "pm-brass-gear-casting",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-brass.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/brass-gear.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    enabled = false,
    energy_required = 6,
    category = "pm-coldening",
    subgroup = "pm-gears",
    order = "bb",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-molten-brass", 2.5, "fluid"),
      PM.ingredient("pm-industrial-grade-silicon-ore", 3),
      PM.ingredient("pm-antimony-ore", 3),
      PM.ingredient("pm-borax", 2)
    },
    results =
    {
      PM.product("pm-brass-cog", 5)
    }
  },

  {
    type = "recipe",
    name = "pm-molten-iron",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-iron.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-iron-tm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("iron-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-iron", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-copper",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-copper.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-copper-tm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("copper-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-copper", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-nickel",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-nickel.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/nickel-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-nickel-tm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-nickel", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-zinc",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-zinc.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/zinc-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-zinc-tm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-zinc-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-zinc", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-manganese",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-manganese.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/manganese-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-manganese-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-manganese-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-manganese", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-gold",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-gold.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/gold-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-gold-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-gold-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-gold", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-silver",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-silver.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/silver-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-silver-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-silver-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-silver", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-tin",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-tin.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/molybdenum-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-tin-ptm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-tin-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-tin", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-titanium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-titanium.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/titanium-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-titanium-tm",
    order = "g",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-titanium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-titanium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-tungsten",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-tungsten.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/tungsten-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-tungsten-tm",
    order = "g",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-tungsten-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-tungsten", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-cadnium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-cadnium.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/cadnium-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-cadnium-tm",
    order = "d",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-cadnium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-cadnium", 5, "fluid")
    }
  },


  {
    type = "recipe",
    name = "pm-molten-aluminium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-aluminium.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/aluminium-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-aluminium-ptm",
    order = "d",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-aluminium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-aluminium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-platinum",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-platinum.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/platinum-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-platinum-tm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-platinum-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-platinum", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-glass",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/glass-melting.png",
    subgroup = "pm-glassing",
    order = "h",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product_range("pm-molten-glass", 3, 5, "fluid"),
      PM.product_range("pm-glass-shards", 4, 6)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-lead",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-lead.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/lead-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-lead-ptm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-lead-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-lead", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-thallium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-thallium.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/thallium-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-thallium-ptm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-thallium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-thallium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-indium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-indium.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/indium-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-indium-ptm",
    order = "f",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-indium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-indium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-cobalt",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-cobalt.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/cobalt-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-cobalt-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-cobalt-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-cobalt", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-molten-palladium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/liquid-palladium.png",
        icon_size = 64,
        scale = 0.2,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/palladium-plate.png",
        icon_size = 64,
        scale = 0.11,
        shift = { 0, -3 }
      },
    },
    subgroup = "pm-palladium-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-palladium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-palladium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-tinned-glass-melting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tinned-glass-melting.png",
    subgroup = "pm-glassing",
    order = "ha",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 10),
      PM.ingredient("pm-molten-tin", 10, "fluid")
    },
    results =
    {
      PM.product("pm-molten-glass", 5, "fluid"),     --im sweating tf out URGHHH literally
      --the amount o time i spent staring at my code in disgust is TOO damn long
      -- fr!! comments, who needs those? i just Dont Stop.
      --tbf when i worked on my first game in unity the ariable for ground detection was called "GroundDontHurtMeNoMo"
      --least its memorable
    }
  },

  {
    type = "recipe",
    name = "pm-iron-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/iron-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-iron-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-iron", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("iron-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-copper-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-copper-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-copper", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("copper-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-nickel-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-nickel", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-nickel-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/zinc-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-zinc-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-zinc", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-zinc-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-manganese-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/manganese-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-manganese-tm",
    order = "e",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-manganese", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-manganese-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-gold-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/gold-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-gold-tm",
    order = "f",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-gold", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-gold-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-silver-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/silver-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-silver-tm",
    order = "f",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-silver", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-silver-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-tin-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tin-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-tin-ptm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-tin", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-tin-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-titanium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/titanium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-titanium-tm",
    order = "i",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-titanium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-titanium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tungsten-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-tungsten-tm",
    order = "i",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-tungsten", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-tungsten-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-cadnium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cadnium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-cadnium-tm",
    order = "e",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-cadnium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-cadnium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/aluminium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-aluminium-ptm",
    order = "d",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-aluminium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-aluminium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-platinum-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/platinum-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-platinum-tm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-platinum", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-platinum-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-lead-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lead-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-lead-ptm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-lead", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-lead-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-thallium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/thallium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-thallium-ptm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-thallium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-thallium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-indium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/indium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-indium-ptm",
    order = "g",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-indium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-indium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-glass-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/glass-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-glassing",
    order = "i",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-glass", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-glass-pane", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-cobalt-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cobalt-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-cobalt-tm",
    order = "f",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-cobalt", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-cobalt-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/palladium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-palladium-tm",
    order = "f",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-palladium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-palladium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },

  {
    type = "recipe",
    name = "pm-liquid-solder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/solder-melting.png",
    subgroup = "pm-alloys",
    order = "g",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-tin-plate", 10),
      PM.ingredient("copper-plate", 10),
      PM.ingredient("pm-molten-iron", 2.5, "fluid"),
      PM.ingredient("pm-ammonium-chloride", 3)
    },
    results =
    {
      PM.product("pm-molten-solder", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-lead-liquid-solder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/lead-solder-melting.png",
    subgroup = "pm-alloys",
    order = "ga",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    emissions_multiplier = 2.5,
    ingredients =
    {
      PM.ingredient("pm-tin-plate", 6),
      PM.ingredient("pm-lead-plate", 4),
      PM.ingredient("pm-nickel-plate", 4),
      PM.ingredient("pm-molten-iron", 1, "fluid"),
    },
    results =
    {
      PM.product("pm-molten-solder", 10, "fluid"),
      PM.product_range_chance("pm-polonium-210", 0, 2, 0.25)
    }
  },
  {
    type = "recipe",
    name = "pm-bismuth-liquid-solder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/bismuth-solder-melting.png",
    subgroup = "pm-alloys",
    order = "gb",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-tin-plate", 6),
      PM.ingredient("pm-bismuth-ore", 4),
      PM.ingredient("pm-filled-flux-container", 2),
      PM.ingredient("pm-molten-iron", 5, "fluid")
    },
    results =
    {
      PM.product("pm-molten-solder", 10, "fluid"),
      PM.product_range("pm-flux-container", 1, 2),
    }
  },
  {
    type = "recipe",
    name = "pm-solder-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/solder-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-alloys",
    order = "h",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    main_product = "pm-solder-plate",
    ingredients =
    {
      PM.ingredient("pm-molten-solder", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-solder-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-liquid-steel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/steel-alloy-melting.png",
    subgroup = "pm-alloys",
    order = "ba",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("iron-plate", 8),
      PM.ingredient("pm-manganese-plate", 8),
      PM.ingredient("pm-vanadium-oxide", 4),
      PM.ingredient("pm-filled-flux-container", 2)
    },
    results =
    {
      PM.product("pm-molten-steel", 10, "fluid"),
      PM.product_range("pm-flux-container", 1, 2),
    }
  },
  {
    type = "recipe",
    name = "pm-steel-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/steel-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-alloys",
    order = "bb",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-steel", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("steel-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-liquid-brass",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-alloy-melting.png",
    subgroup = "pm-alloys",
    order = "ca",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("copper-plate", 8),
      PM.ingredient("pm-zinc-plate", 8),
      PM.ingredient("pm-lead-plate", 2),
      PM.ingredient("pm-arsenic-ore", 2),
      PM.ingredient("pm-filled-flux-container", 2)
    },
    results =
    {
      PM.product("pm-molten-brass", 10, "fluid"),
      PM.product_range("pm-flux-container", 1, 2),
    }
  },
  {
    type = "recipe",
    name = "pm-brass-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-alloys",
    order = "ca",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-brass", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-brass-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-liquid-stainless-steel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/stainless-steel-alloy-melting.png",
    subgroup = "pm-alloys",
    order = "ea",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("steel-plate", 8),
      PM.ingredient("pm-manganese-plate", 6),
      PM.ingredient("pm-chrominum-ore", 4),
      PM.ingredient("pm-molybdenum-ore", 4),
      PM.ingredient("pm-filled-flux-container", 2)
    },
    results =
    {
      PM.product("pm-molten-stainless-steel", 10, "fluid"),
      PM.product_range("pm-flux-container", 1, 2),
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/stainless-steel-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-alloys",
    order = "eb",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-stainless-steel", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-stainless-steel-alloy", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
  {
    type = "recipe",
    name = "pm-liquid-kasethal",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kasethal-melting.png",
    subgroup = "pm-alloys",
    order = "fa",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("iron-plate", 3),
      PM.ingredient("pm-aluminium-plate", 3),
      PM.ingredient("pm-chrominum-ore", 4),
      PM.ingredient("pm-filled-flux-container", 2)
    },
    results =
    {
      PM.product("pm-molten-kasethal", 10, "fluid"),
      PM.product_range("pm-flux-container", 1, 2),
    }
  },
  {
    type = "recipe",
    name = "pm-kasethal-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/kasethal-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-alloys",
    order = "eb",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-kasethal", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-kasethal-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },

  --burn-inator recipes

  {
    type = "recipe",
    name = "pm-refinery-gas-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/refinery-gases.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-refinery-gases", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-petrol-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/petrol.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-petrol", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-naptha-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/naptha.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-naptha", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-diesel-gas-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/diesel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-diesel", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-kerosene-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/kerosene.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-kerosene", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-fuel-oils-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/fuel-oils.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-fuel-oils", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-lubricating-oils-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/lubricating-oils.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-lubricating-oils", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-oil-residuals-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residual.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-oil-residuals", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-common-diesel-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/common-diesel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    emissions_multiplier = 2,
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-common-diesel", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-legendary-diesel-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/legendary-diesel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-legendary-diesel", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-butene-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/butene-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-butene-gas", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-butane-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/butane-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-butane-gas", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-ethylene-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/ethylene-gas.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-ethylene-gas", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-methanol-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/methanol.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh-uh-64.png",
        icon_size = 64,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-methanol", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-acetone-voiding",
    icon_size = 128,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acetone.png",
        icon_size = 128,
      },
      {
        icon = "__periodic-madness__/graphics/icons/nuh uh.png",
        icon_size = 128,
      },
    },
    subgroup = "pm-voiding",
    category = "pm-burnining",
    energy_required = 3,
    hide_from_player_crafting = true,
    ingredients =
    {
      PM.ingredient("pm-acetone", 25, "fluid"),
    },
    results = {}
  },
} --[[@as data.RecipePrototype[] ]])
