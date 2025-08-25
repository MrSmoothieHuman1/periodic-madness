--im going insane

data:extend({

  {
    type = "recipe",
    name = "pm-molten-cadmium-telluride",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    allow_productivity = true,
    ingredients = 
    {
      PM.ingredient("pm-cadnium-plate", 6),
      PM.ingredient("pm-tellurium-plate", 6)
    },
    results = 
    {
      PM.product("pm-molten-cadmium-telluride", 2, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-cadmium-telluride",
    enabled = false,
    energy_required = 9,
    category = "pm-coldening",
    allow_productivity = true,
    main_product = "pm-cadmium-telluride",
    ingredients = 
    {
      PM.ingredient("pm-molten-cadmium-telluride", 1, "fluid"),
    },
    results = 
    {
      PM.product("pm-cadmium-telluride", 1),
      PM.product_chance("pm-cadmium-telluride", 1, 0.5),
    }
  },
  {
    type = "recipe",
    name = "pm-molten-uhrlumin-precursor-alloy",
    enabled = false,
    energy_required = 18,
    category = "pm-moltening",
    subgroup = "pm-uhrlumin",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-aluminium-plate", 7),
      PM.ingredient("pm-molten-copper", 5, "fluid"),
      PM.ingredient("pm-magnesium-plate", 2)
    },
    results = 
    {
      PM.product("pm-molten-uhrlumin-precursor-alloy", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-uhrlumin-precursor-billet",
    enabled = false,
    energy_required = 13.5,
    category = "pm-coldening",
    subgroup = "pm-uhrlumin",
    order = "b",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-molten-uhrlumin-precursor-alloy", 5, "fluid")
    },
    results = 
    {
      PM.product("pm-uhrlumin-precursor-billet", 5)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-uhrlumin",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-uhrlumin",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-uhrlumin-precursor-billet", 5),
      PM.ingredient("pm-zinc-plate", 5),
      PM.ingredient("pm-molten-manganese", 2.5, "fluid"),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results = 
    {
      PM.product("pm-molten-uhrlumin", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-uhrlumin-plate",
    enabled = false,
    energy_required = 4.5,
    category = "pm-coldening",
    subgroup = "pm-uhrlumin",
    order = "d",
    main_product = "pm-uhrlumin-plate",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-molten-uhrlumin", 10, "fluid"),
      PM.ingredient("pm-crucible", 2)
    },
    results = 
    {
      PM.product("pm-uhrlumin-plate", 5),
      PM.catalyst_chance("pm-crucible", 2, 0.75, 2)
    }
  },
  {
    type = "recipe",
    name = "pm-inconel-625-precursor-alloy",
    enabled = false,
    energy_required = 18,
    category = "pm-moltening",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 7),
      PM.ingredient("pm-molten-cobalt", 5, "fluid"),
      PM.ingredient("pm-molybdenum-ore", 3)
    },
    results = 
    {
      PM.product("pm-inconel-625-precursor-alloy", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-inconel-625-precursor-billet",
    enabled = false,
    energy_required = 13.5,
    category = "pm-coldening",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-inconel-625-precursor-alloy", 5, "fluid")
    },
    results = 
    {
      PM.product("pm-inconel-625-precursor-billet", 5)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-inconel-625",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    ingredients =
    {
      PM.ingredient("pm-inconel-625-precursor-billet", 5),
      PM.ingredient("pm-chromium-ore", 5),
      PM.ingredient("pm-molten-manganese", 2.5, "fluid"),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results = 
    {
      PM.product("pm-molten-inconel-625", 10, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-inconel-625-plate",
    enabled = false,
    energy_required = 4.5,
    category = "pm-coldening",
    main_product = "pm-inconel-625-plate",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-molten-inconel-625", 10, "fluid"),
      PM.ingredient("pm-crucible", 2)
    },
    results = 
    {
      PM.product("pm-inconel-625-plate", 5),
      PM.catalyst_chance("pm-crucible", 2, 0.75, 2)
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
    icons = 
    {
      {
        icon = "__periodic-madness__/graphics/icons/glass-pane.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-potassium-salts.png",
        icon_size = 64,
      },
    },
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
        icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-borosilicate-glass.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/borosilicate-glass-pane.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-borosilicate-glassing",
    order = "a",
    ingredients =
    {
      PM.ingredient("pm-glass-pane", 5),
      PM.ingredient("pm-boric-oxide", 6),
      PM.ingredient("pm-aluminium-plate", 4),
      PM.ingredient("pm-industrial-grade-silicon-ore", 3),
      PM.ingredient("pm-molten-tin", 2, "fluid")
    },
    results =
    {
      PM.product("pm-molten-borosilicate-glass", 7.5, "fluid")
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
      PM.ingredient("pm-molten-titanium", 5, "fluid"),
      PM.ingredient("pm-cut-sapphire", 2)
    },
    results =
    {
      PM.product("pm-titanium-sapphire", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-strontium-glass",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-intermediates",
    ingredients =
    {
      PM.ingredient("pm-molten-glass", 10, "fluid"),
      PM.ingredient("pm-strontium-ore", 4),
      PM.ingredient("pm-barium-ore", 2)
    },
    results =
    {
      PM.product("pm-molten-strontium-glass", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-strontium-glass",
    enabled = false,
    energy_required = 9,
    category = "pm-coldening",
    subgroup = "pm-intermediates",
    ingredients =
    {
      PM.ingredient("pm-molten-strontium-glass", 5, "fluid"),
    },
    results =
    {
      PM.product("pm-strontium-glass", 3)
    }
  },
  {
    type = "recipe",
    name = "pm-solid-mercury",
    enabled = false,
    energy_required = 3,
    category = "pm-coldening",
    ingredients = 
    {
      PM.ingredient("pm-liquid-mercury", 10, "fluid")
    },
    results = 
    {
      PM.product("pm-solid-mercury", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-mercury-melting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/solid-mercury-melting.png",
    enabled = false,
    energy_required = 3,
    category = "pm-moltening",
    ingredients =
    {
      PM.ingredient("pm-solid-mercury", 1)
    },
    results = 
    {
      PM.product("pm-liquid-mercury", 10, "fluid")
    }
  },

  {
    type = "recipe",
    name = "pm-copper-wire-casting",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-copper.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__base__/graphics/icons/copper-cable.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
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
        icon = "__periodic-madness__/graphics/icons/fluids/molten-gold.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/gold-wire.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
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
        icon = "__periodic-madness__/graphics/icons/fluids/molten-indium.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/indium-wire.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
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
        icon = "__periodic-madness__/graphics/icons/fluids/molten-iron.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__base__/graphics/icons/iron-gear-wheel.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
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
        icon = "__periodic-madness__/graphics/icons/fluids/molten-brass.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/brass-gear.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
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
    name = "pm-molten-glass",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-glass.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/glass-pane.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-glassing",
    order = "h",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    main_product = "pm-molten-glass",
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
    name = "pm-tinned-glass-melting",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-tin.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/glass-pane.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
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
      PM.product("pm-tin-plate", 20)
    }
  },

  --MARK: Cold-inator
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

  --MARK: Alloy recipes

  {
    type = "recipe",
    name = "pm-molten-solder",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-solder.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/solder-plate.png",
        icon_size = 64,
        scale = 0.33,
      },
    },
    subgroup = "pm-alloys",
    order = "g",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    main_product = "pm-molten-solder",
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
    name = "pm-advanced-liquid-solder",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-solder.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/barium-ore-icon.png",
        icon_size = 64,
        scale = 0.33,
        shift = { 0, -6 }
      },
    },
    subgroup = "pm-alloys",
    order = "g",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-red-phosphorus", 6),
      PM.ingredient("pm-barium-ore", 2),
      PM.ingredient("pm-tin-plate", 12),
      PM.ingredient("copper-plate", 12),
      PM.ingredient("pm-molten-zinc", 2.5, "fluid"),
      PM.ingredient("pm-ammonium-chloride", 4)
    },
    results =
    {
      PM.product("pm-molten-solder", 20, "fluid")
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
    name = "pm-molten-steel",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-steel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/steel-plate.png",
        icon_size = 64,
        scale = 0.33,
      },
    },
    subgroup = "pm-alloys",
    order = "ba",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    main_product = "pm-molten-steel",
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
    name = "pm-molten-brass",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-brass.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
        icon_size = 64,
        scale = 0.33,
      },
    },
    subgroup = "pm-alloys",
    order = "cb",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    main_product = "pm-molten-brass",
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
    order = "cc",
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
    name = "pm-molten-stainless-steel",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-stainless-steel.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate.png",
        icon_size = 64,
        scale = 0.33,
      },
    },
    subgroup = "pm-alloys",
    order = "ea",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    main_product = "pm-molten-stainless-steel",
    ingredients =
    {
      PM.ingredient("steel-plate", 8),
      PM.ingredient("pm-manganese-plate", 6),
      PM.ingredient("pm-chromium-ore", 4),
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
    name = "pm-molten-kasethal",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-kasethal.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/kasethal-plate.png",
        icon_size = 64,
        scale = 0.33,
      },
    },
    subgroup = "pm-alloys",
    order = "fa",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    main_product = "pm-molten-kasethal",
    ingredients =
    {
      PM.ingredient("iron-plate", 3),
      PM.ingredient("pm-aluminium-plate", 3),
      PM.ingredient("pm-chromium-ore", 4),
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
    order = "fb",
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

  --MARK: Burn-inator

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
        icon = "__periodic-madness__/graphics/icons/fluids/oil-residuals.png",
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
    emissions_multiplier = 1.25,
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
    emissions_multiplier = 1.1,
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
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/acetone.png",
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
      PM.ingredient("pm-acetone", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-ammonia-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/ammonia.png",
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
    emissions_multiplier = 1.25,
    ingredients =
    {
      PM.ingredient("pm-ammonia-gas", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-syngas-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/syngas.png",
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
    emissions_multiplier = 1.5,
    ingredients =
    {
      PM.ingredient("pm-syngas", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-hydrogen-sulfide-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/hydrogen-sulfide.png",
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
    emissions_multiplier = 2,
    ingredients =
    {
      PM.ingredient("pm-hydrogen-sulfide", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-sulfur-dioxide-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/sulfur-dioxide.png",
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
    emissions_multiplier = 1.5,
    ingredients =
    {
      PM.ingredient("pm-sulfur-dioxide", 25, "fluid"),
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-sulfur-trioxide-voiding",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/sulfur-trioxide.png",
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
    emissions_multiplier = 1.75,
    ingredients =
    {
      PM.ingredient("pm-sulfur-trioxide", 25, "fluid"),
    },
    results = {}
  },
} --[[@as data.RecipePrototype[] ]])
