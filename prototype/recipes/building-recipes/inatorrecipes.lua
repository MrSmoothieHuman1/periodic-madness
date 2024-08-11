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
      { type = "fluid",          name = "pm-oxygen-gas", amount = 30 },
      { "iron-plate",10 },
      { "pm-sodium-bicarbonate", 5 }
    },
    results =
    {
      { "pm-ferrum", 10 }
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
      { type = "fluid", name = "pm-molten-zinc", amount = 5 },
      { "pm-potassium", 5 },
      { "pm-sodium",    10 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-potassium-salts", amount = 12 }
    }
  },
  {
    type = "recipe",
    name = "pm-potassium-salt-glass",
    enabled = false,
    energy_required = 6,
    category = "pm-coldening",
    subgroup = "pm-glassing",
    order = "ba",
    ingredients =
    {
      { type = "fluid", name = "pm-molten-potassium-salts", amount = 3 },
      { "pm-sand",      8 }
    },
    results =
    {
      { "pm-glass-pane", 4 }
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
    subgroup = "pm-glassing",
    order = "e",
    ingredients =
    {
      { "pm-glass-pane",      10 },
      { "pm-boric-oxide",     8 },
      { "pm-aluminium-plate", 4 },
      { "pm-sea-salt",        8 },
      { type = "fluid",       name = "pm-molten-tin", amount = 5 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-borosilicate-glass", amount = 5 }
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
    subgroup = "pm-glassing",
    order = "f",
    ingredients =
    {
      {type = "fluid", name = "pm-molten-borosilicate-glass", amount = 5},
      {"pm-crucible", 2}
    },
    results =
    {
      {"pm-borosilicate-glass", 5},
      {
        name = "pm-crucible",
        amount_min = 1,
        amount_max = 2,
      }
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
    main_product = "pm-glass-fibers",
    category = "pm-moltening",
    ingredients =
    {
      { type = "fluid", name = "pm-molten-borosilicate-glass", amount = 2.5 },
      { "pm-filled-flux-container", 1 }
    },
    results =
    {
      { "pm-glass-fibers", 15 },
      {
        name = "pm-flux-container",
        amount = 1,
        probability = 0.9
      },
    }
  },

  {
    type = "recipe",
    name = "pm-iron-melting",
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
      { "iron-plate",   10 },
      { type = "fluid", name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-iron", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-copper-melting",
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
      { "copper-plate", 10 },
      { type = "fluid", name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-copper", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-melting",
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
      { "pm-nickel-plate", 10 },
      { type = "fluid",    name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-nickel", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-melting",
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
      { "pm-zinc-plate", 10 },
      { type = "fluid",  name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-zinc", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-manganese-melting",
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
      { "pm-manganese-plate", 10 },
      { type = "fluid",       name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-manganese", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-gold-melting",
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
      { "pm-gold-plate", 10 },
      { type = "fluid",  name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-gold", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-silver-melting",
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
      { "pm-silver-plate", 10 },
      { type = "fluid",    name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-silver", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-tin-melting",
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
      { "pm-tin-plate", 10 },
      { type = "fluid", name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-tin", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-titanium-melting",
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
      { "pm-titanium-plate", 10 },
      { type = "fluid",      name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-titanium", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-melting",
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
      { "pm-tungsten-plate", 10 },
      { type = "fluid",      name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-tungsten", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-cadnium-melting",
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
      { "pm-cadnium-plate", 10 },
      { type = "fluid",     name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-cadnium", amount = 4 + 1 }
    }
  },


  {
    type = "recipe",
    name = "pm-aluminium-melting",
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
      { "pm-aluminium-plate", 10 },
      { type = "fluid",       name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-aluminium", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-platinum-melting",
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
      { "pm-platinum-plate", 10 },
      { type = "fluid",      name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-platinum", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-glass-melting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/glass-melting.png",
    subgroup = "pm-processing",
    order = "h",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      { "pm-glass-pane", 10 },
      { type = "fluid",  name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-glass", amount_min = 3, amount_max = 4 + 1 },
      {
        name = "pm-glass-shards",
        amount_min = 4,
        amount_max = 6,
      }
    }
  },
  {
    type = "recipe",
    name = "pm-lead-melting",
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
      { "pm-lead-plate", 10 },
      { type = "fluid",  name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-lead", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-thallium-melting",
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
      { "pm-thallium-plate", 10 },
      { type = "fluid",      name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-thallium", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-indium-melting",
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
      { "pm-indium-plate", 10 },
      { type = "fluid",    name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-indium", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-cobalt-melting",
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
      { "pm-cobalt-plate", 10 },
      { type = "fluid",    name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-cobalt", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-palladium-melting",
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
      { "pm-palladium-plate", 10 },
      { type = "fluid",       name = "steam", amount = 50 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-palladium", amount = 4 + 1 }
    }
  },
  {
    type = "recipe",
    name = "pm-tinned-glass-melting",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/tinned-glass-melting.png",
    subgroup = "pm-processing",
    order = "ha",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      { "pm-glass-pane", 10 },
      { type = "fluid",  name = "pm-molten-tin", amount = 10 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-glass", amount = 5 },     --im sweating tf out URGHHH literally
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
      { type = "fluid", name = "pm-molten-iron", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "iron-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-copper", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "copper-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-nickel", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-nickel-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-zinc", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-zinc-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-manganese", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-manganese-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-gold", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-gold-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-silver", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-silver-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-tin", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-tin-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-titanium", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-titanium-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-tungsten", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-tungsten-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-cadnium", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-cadnium-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-aluminium", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-aluminium-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-platinum", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-platinum-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-lead", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-lead-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-thallium", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-thallium-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-indium", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-indium-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
    }
  },
  {
    type = "recipe",
    name = "pm-glass-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/glass-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-processing",
    order = "i",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      { type = "fluid", name = "pm-molten-glass", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-glass-pane", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-cobalt", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-cobalt-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-molten-palladium", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-palladium-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { "pm-tin-plate",         10 },
      { "copper-plate",         10 },
      { type = "fluid",         name = "pm-molten-iron", amount = 2.4 + 0.1 },
      { "pm-ammonium-chloride", 3 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-solder", amount = 10 }
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
      { "pm-tin-plate",    6 },
      { "pm-lead-plate",   4 },
      { "pm-nickel-plate", 4 },
      { type = "fluid",    name = "pm-molten-iron", amount = 1 },
    },
    results =
    {
      { type = "fluid", name = "pm-molten-solder", amount = 10 },
      {
        name = "pm-polonium-210",
        amount_min = 0,
        amount_max = 2,
      }
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
      { "pm-tin-plate", 6 },
      { "pm-bismuth-ore",           4 },
      { "pm-filled-flux-container", 2 },
      { type = "fluid", name = "pm-molten-iron", amount = 5 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-solder", amount = 10 },
      {
        name = "pm-flux-container",
        amount_min = 1,
        amount_max = 2,
      },
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
      { type = "fluid", name = "pm-molten-solder", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-solder-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { "iron-plate",   8 },
      { "pm-manganese-plate",       8 },
      { "pm-vanadium-oxide",        4 },
      { "pm-filled-flux-container", 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-steel", amount = 10 },
      { name = "pm-flux-container", amount_min = 1,           amount_max = 2 },
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
      { type = "fluid", name = "pm-molten-steel", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "steel-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { "copper-plate", 10 },
      { "pm-zinc-plate",10 },
      { "pm-filled-flux-container", 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-brass", amount = 10 },
      { name = "pm-flux-container", amount_min = 1,           amount_max = 2 },
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
      { type = "fluid", name = "pm-molten-brass", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-brass-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { "steel-plate",  8 },
      { "pm-manganese-plate",       8 },
      { "pm-chrominum-ore",         4 },
      { "pm-filled-flux-container", 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-stainless-steel", amount = 10 },
      { name = "pm-flux-container", amount_min = 1,         amount_max = 2 },
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
      { type = "fluid", name = "pm-molten-stainless-steel", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-stainless-steel-alloy", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { "iron-plate",   3 },
      { "pm-aluminium-plate",       3 },
      { "pm-chrominum-ore",         4 },
      { "pm-filled-flux-container", 2 }
    },
    results =
    {
      { type = "fluid", name = "pm-molten-kasethal", amount = 10 },
      { name = "pm-flux-container", amount_min = 1,  amount_max = 2 },
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
      { type = "fluid", name = "pm-molten-kasethal", amount = 20 / 4 },
      { "pm-crucible",  1 },
    },
    results =
    {
      { "pm-kasethal-plate", 10 },
      {
        name = "pm-crucible",
        amount = 1,
        probability = 0.8
      }
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
      { type = "fluid", name = "pm-refinery-gases", amount = 25 },
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
      { type = "fluid", name = "pm-petrol", amount = 25 },
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
      { type = "fluid", name = "pm-naptha", amount = 25 },
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
      { type = "fluid", name = "pm-diesel", amount = 25 },
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
      { type = "fluid", name = "pm-kerosene", amount = 25 },
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
      { type = "fluid", name = "pm-fuel-oils", amount = 25 },
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
      { type = "fluid", name = "pm-lubricating-oils", amount = 25 },
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
      { type = "fluid", name = "pm-oil-residuals", amount = 25 },
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
      { type = "fluid", name = "pm-common-diesel", amount = 25 },
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
      { type = "fluid", name = "pm-legendary-diesel", amount = 25 },
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-butene-voiding",
    icon_size = 128,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/butene-gas.png",
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
      { type = "fluid", name = "pm-butene-gas", amount = 25 },
    },
    results = {}
  },
  {
    type = "recipe",
    name = "pm-butane-voiding",
    icon_size = 128,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/butane-gas.png",
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
      { type = "fluid", name = "pm-butane-gas", amount = 25 },
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
      { type = "fluid", name = "pm-ethylene-gas", amount = 25 },
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
      { type = "fluid", name = "pm-methanol", amount = 25 },
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
      { type = "fluid", name = "pm-acetone", amount = 25 },
    },
    results = {}
  },
} --[[@as data.RecipePrototype[] ]])
