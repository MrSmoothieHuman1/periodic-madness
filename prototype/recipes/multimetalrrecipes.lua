--im so sorry gal-man

data:extend({

  {
    type = "recipe",
    name = "pm-gold-heating-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/gold-heating-plating.png",
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "a[pm-heating-plating]",
    enabled = false,
    ingredients =
    {
      { "pm-gold-plating", 1 },
      { "pm-gold-wire",    2 }
    },
    results =
    {
      { "pm-heating-plating", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-copper-heating-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-heating-plating.png",
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "a[pm-heating-plating]",
    enabled = false,
    ingredients =
    {
      { "pm-gold-plating", 1 },
      { "copper-cable",    2 }
    },
    results =
    {
      { "pm-heating-plating", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-brass-heating-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-heating-plating.png",
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "a[pm-heating-plating]",
    enabled = false,
    ingredients =
    {
      { "pm-gold-plating", 1 },
      { "pm-brass-plate",  1 }
    },
    results =
    {
      { "pm-heating-plating", 2 }
    }
  },

  {
    type = "recipe",
    name = "pm-silver-cooling-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/silver-cooling-plating.png",
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "b[pm-cooling-plating]",
    enabled = false,
    ingredients =
    {
      { "pm-silver-plating", 1 },
      { "pm-silver-plate",   1 }
    },
    results =
    {
      { "pm-cooling-plating", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-copper-cooling-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-cooling-plating.png",
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "b[pm-cooling-plating]",
    enabled = false,
    ingredients =
    {
      { "pm-silver-plating", 1 },
      { "copper-cable",      2 }
    },
    results =
    {
      { "pm-cooling-plating", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-steel-cooling-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/steel-cooling-plating.png",
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "b[pm-cooling-plating]",
    enabled = false,
    ingredients =
    {
      { "pm-silver-plating", 1 },
      { "steel-plate",       1 }
    },
    results =
    {
      { "pm-cooling-plating", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-manganese-cooling-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/manganese-cooling-plating.png",
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "b[pm-cooling-plating]",
    enabled = false,
    ingredients =
    {
      { "pm-silver-plating",  1 },
      { "pm-manganese-plate", 2 }
    },
    results =
    {
      { "pm-cooling-plating", 2 }
    }
  },

  --Tubing

  {
    type = "recipe",
    name = "pm-iron-basic-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/iron-basic-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "iron-plate", 1 },
      { "iron-stick", 1 }
    },
    results =
    {
      { "pm-basic-tubing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-basic-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-basic-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-nickel-plate", 1 },
      { "iron-stick",      1 }
    },
    results =
    {
      { "pm-basic-tubing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-copper-basic-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-basic-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "copper-plate", 1 },
      { "iron-stick",   1 }
    },
    results =
    {
      { "pm-basic-tubing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-brass-basic-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-basic-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-brass-plate", 1 },
      { "iron-stick",     1 }
    },
    results =
    {
      { "pm-basic-tubing", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-steel-basic-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/steel-basic-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "steel-plate", 1 },
      { "iron-stick",  1 }
    },
    results =
    {
      { "pm-basic-tubing", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-corrosion-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/stainless-steel-cr-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-stainless-steel-alloy", 1 },
      { "pm-basic-tubing",          1 }
    },
    results =
    {
      { "pm-corrosion-resistant-tubing", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-gold-corrosion-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/gold-cr-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-gold-plate",   1 },
      { "pm-basic-tubing", 1 }
    },
    results =
    {
      { "pm-corrosion-resistant-tubing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-silver-corrosion-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/silver-cr-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-silver-plate", 1 },
      { "pm-basic-tubing", 1 }
    },
    results =
    {
      { "pm-corrosion-resistant-tubing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-brass-corrosion-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-cr-tubing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-brass-plate",  1 },
      { "pm-basic-tubing", 1 }
    },
    results =
    {
      { "pm-corrosion-resistant-tubing", 4 }
    }
  },

  {
    type = "recipe",
    name = "pm-silver-anti-bacterial-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/silver-ab-tubing.png",
    energy_required = 0.4 + 0.1,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-silver-plate", 1 },
      { "pm-basic-tubing", 1 },
    },
    results =
    {
      { "pm-anti-bacterial-tubing", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-copper-anti-bacterial-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-ab-tubing.png",
    energy_required = 0.4 + 0.1,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "copper-plate",    1 },
      { "pm-basic-tubing", 1 },
    },
    results =
    {
      { "pm-anti-bacterial-tubing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-brass-anti-bacterial-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-ab-tubing.png",
    energy_required = 0.4 + 0.1,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-brass-plate",  1 },
      { "pm-basic-tubing", 1 },
    },
    results =
    {
      { "pm-anti-bacterial-tubing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-lead-radiation-resistant-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/lead-rr-tubing.png",
    energy_required = 0.4 + 0.1,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      { "pm-lead-plate",   1 },
      { "pm-basic-tubing", 1 },
    },
    results =
    {
      { "pm-radiation-resistant-tubing", 4 }
    }
  },

  --Framing

  {
    type = "recipe",
    name = "pm-iron-basic-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/iron-basic-framing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-framing",
    ingredients =
    {
      { "iron-plate", 1 },
      { "iron-stick", 2 }
    },
    results =
    {
      { "pm-basic-framing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-basic-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/nickel-basic-framing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-framing",
    ingredients =
    {
      { "pm-nickel-plate", 1 },
      { "iron-stick",      2 }
    },
    results =
    {
      { "pm-basic-framing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-steel-basic-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/steel-basic-framing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    ingredients =
    {
      { "steel-plate", 1 },
      { "iron-stick",  2 }
    },
    results =
    {
      { "pm-basic-framing", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-brass-basic-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-basic-framing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    ingredients =
    {
      { "pm-brass-plate", 1 },
      { "iron-stick",     2 }
    },
    results =
    {
      { "pm-basic-framing", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-basic-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/stainless-steel-basic-framing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    ingredients =
    {
      { "pm-stainless-steel-alloy", 1 },
      { "iron-stick",               2 }
    },
    results =
    {
      { "pm-basic-framing", 6 }
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-heavyweight-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/tungsten-hw-framing.png",
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-framing",
    order = "f",
    ingredients =
    {
      { "pm-tungsten-plate", 1 },
      { "pm-basic-framing",  1 }
    },
    results =
    {
      { "pm-heavyweight-framing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-chrominum-heavyweight-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/chrominum-hw-framing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    order = "g",
    ingredients =
    {
      { "pm-chrominum-ore", 1 },
      { "pm-basic-framing", 1 }
    },
    results =
    {
      { "pm-heavyweight-framing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-titanium-lightweight-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/titanium-lw-framing.png",
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-framing",
    order = "e",
    ingredients =
    {
      { "pm-titanium-plate", 1 },
      { "pm-basic-framing",  1 }
    },
    results =
    {
      { "pm-lightweight-framing", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-tin-lightweight-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/tin-lw-framing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    order = "d",
    ingredients =
    {
      { "pm-tin-plate",     1 },
      { "pm-basic-framing", 1 }
    },
    results =
    {
      { "pm-lightweight-framing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-lightweight-framing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/aluminium-lw-framing.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    order = "c",
    ingredients =
    {
      { "pm-aluminium-plate", 1 },
      { "pm-basic-framing",   1 }
    },
    results =
    {
      { "pm-lightweight-framing", 4 }
    }
  },

  {
    type = "recipe",
    name = "pm-molten-framing",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    order = "f",
    ingredients =
    {
      { "pm-heating-plating", 1 },
      { "pm-basic-framing",   1 }
    },
    results =
    {
      { "pm-molten-framing", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-cooling-framing",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    order = "f",
    ingredients =
    {
      { "pm-cooling-plating", 1 },
      { "pm-basic-framing",   1 }
    },
    results =
    {
      { "pm-cooling-framing", 2 }
    }
  },

  --Panelling

  {
    type = "recipe",
    name = "pm-iron-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/iron-panelling.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-panelling",
    order = "a",
    ingredients =
    {
      { "iron-plate", 2 }
    },
    results =
    {
      { "pm-basic-panelling", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-steel-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/steel-panelling.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    order = "a",
    ingredients =
    {
      { "steel-plate", 1 },
      { "iron-plate",  1 }
    },
    results =
    {
      { "pm-basic-panelling", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/stainless-steel-panelling.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    order = "a",
    ingredients =
    {
      { "pm-stainless-steel-alloy", 1 },
      { "iron-plate",               1 }
    },
    results =
    {
      { "pm-basic-panelling", 6 }
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/zinc-panelling.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-panelling",
    order = "a",
    ingredients =
    {
      { "pm-zinc-plate", 1 },
      { "iron-plate",    1 }
    },
    results =
    {
      { "pm-basic-panelling", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-titanium-lightweight-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/titanium-lw-panelling.png",
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "pm-titanium-plate",  1 },
      { "pm-basic-panelling", 1 }
    },
    results =
    {
      { "pm-lightweight-panelling", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-tin-lightweight-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/tin-lw-panelling.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "pm-tin-plate",       1 },
      { "pm-basic-panelling", 1 }
    },
    results =
    {
      { "pm-lightweight-panelling", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-lightweight-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/tin-lw-panelling.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "pm-aluminium-plate", 1 },
      { "pm-basic-panelling", 1 }
    },
    results =
    {
      { "pm-lightweight-panelling", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-heavyweight-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/tungsten-hw-panelling.png",
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "pm-tungsten-plate",  1 },
      { "pm-basic-panelling", 1 }
    },
    results =
    {
      { "pm-heavyweight-panelling", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-chrominum-heavyweight-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/chrominum-hw-panelling.png",
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "pm-chrominum-ore",   1 },
      { "pm-basic-panelling", 1 }
    },
    results =
    {
      { "pm-heavyweight-panelling", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-silver-anti-bacterial-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/silver-ab-panelling.png",
    energy_required = 0.4 + 0.1,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "pm-silver-plate",    1 },
      { "pm-basic-panelling", 1 },
    },
    results =
    {
      { "pm-anti-bacterial-panelling", 4 }
    }
  },
  {
    type = "recipe",
    name = "pm-copper-anti-bacterial-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-ab-panelling.png",
    energy_required = 0.4 + 0.1,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "copper-plate",       1 },
      { "pm-basic-panelling", 1 },
    },
    results =
    {
      { "pm-anti-bacterial-panelling", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-brass-anti-bacterial-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-ab-panelling.png",
    energy_required = 0.4 + 0.1,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "pm-brass-plate",     1 },
      { "pm-basic-panelling", 1 },
    },
    results =
    {
      { "pm-anti-bacterial-panelling", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-lead-radiation-resistant-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/lead-rr-panelling.png",
    energy_required = 0.4 + 0.1,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      { "pm-lead-plate",      1 },
      { "pm-basic-panelling", 1 },
    },
    results =
    {
      { "pm-radiation-resistant-panelling", 2 }
    }
  },

  --Wiring

  {
    type = "recipe",
    name = "pm-copper-basic-wiring",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-basic-wiring.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-wiring",
    ingredients =
    {
      { "copper-plate", 1 },
      { "copper-cable", 1 }
    },
    results =
    {
      { "pm-basic-wiring", 2 }
    }
  },
  {
    type = "recipe",
    name = "pm-aluminium-basic-wiring",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/aluminium-basic-wiring.png",
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-wiring",
    ingredients =
    {
      { "pm-aluminium-plate", 1 },
      { "copper-cable",       1 }
    },
    results =
    {
      { "pm-basic-wiring", 4 }
    }
  },
})
