local PM = require("__periodic-madness__/library")
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
      PM.ingredient("pm-gold-plating", 1),
      PM.ingredient("pm-gold-wire", 2)
    },
    results =
    {
      PM.product("pm-heating-plating", 2)
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
      PM.ingredient("pm-gold-plating", 1),
      PM.ingredient("copper-cable", 2)
    },
    results =
    {
      PM.product("pm-heating-plating", 2)
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
      PM.ingredient("pm-gold-plating", 1),
      PM.ingredient("pm-brass-plate", 1)
    },
    results =
    {
      PM.product("pm-heating-plating", 2)
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
      PM.ingredient("pm-silver-plating", 1),
      PM.ingredient("pm-silver-plate", 1)
    },
    results =
    {
      PM.product("pm-cooling-plating", 2)
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
      PM.ingredient("pm-silver-plating", 1),
      PM.ingredient("copper-cable", 2)
    },
    results =
    {
      PM.product("pm-cooling-plating", 2)
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
      PM.ingredient("pm-silver-plating", 1),
      PM.ingredient("steel-plate", 1)
    },
    results =
    {
      PM.product("pm-cooling-plating", 2)
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
      PM.ingredient("pm-silver-plating", 1),
      PM.ingredient("pm-manganese-plate", 2)
    },
    results =
    {
      PM.product("pm-cooling-plating", 2)
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
      PM.ingredient("iron-plate", 1),
      PM.ingredient("iron-stick", 1)
    },
    results =
    {
      PM.product("pm-basic-tubing", 2)
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
      PM.ingredient("pm-nickel-plate", 1),
      PM.ingredient("iron-stick", 1)
    },
    results =
    {
      PM.product("pm-basic-tubing", 2)
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
      PM.ingredient("copper-plate", 1),
      PM.ingredient("iron-stick", 1)
    },
    results =
    {
      PM.product("pm-basic-tubing", 2)
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
      PM.ingredient("pm-brass-plate", 1),
      PM.ingredient("iron-stick", 1)
    },
    results =
    {
      PM.product("pm-basic-tubing", 4)
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
      PM.ingredient("steel-plate", 1),
      PM.ingredient("iron-stick", 1)
    },
    results =
    {
      PM.product("pm-basic-tubing", 4)
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
      PM.ingredient("pm-stainless-steel-alloy", 1),
      PM.ingredient("pm-basic-tubing", 1)
    },
    results =
    {
      PM.product("pm-corrosion-resistant-tubing", 4)
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
      PM.ingredient("pm-gold-plate", 1),
      PM.ingredient("pm-basic-tubing", 1)
    },
    results =
    {
      PM.product("pm-corrosion-resistant-tubing", 2)
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
      PM.ingredient("pm-silver-plate", 1),
      PM.ingredient("pm-basic-tubing", 1)
    },
    results =
    {
      PM.product("pm-corrosion-resistant-tubing", 2)
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
      PM.ingredient("pm-brass-plate", 1),
      PM.ingredient("pm-basic-tubing", 1)
    },
    results =
    {
      PM.product("pm-corrosion-resistant-tubing", 4)
    }
  },

  {
    type = "recipe",
    name = "pm-silver-anti-bacterial-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/silver-ab-tubing.png",
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      PM.ingredient("pm-silver-plate", 1),
      PM.ingredient("pm-basic-tubing", 1),
    },
    results =
    {
      PM.product("pm-anti-bacterial-tubing", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-copper-anti-bacterial-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-ab-tubing.png",
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      PM.ingredient("copper-plate", 1),
      PM.ingredient("pm-basic-tubing", 1),
    },
    results =
    {
      PM.product("pm-anti-bacterial-tubing", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-brass-anti-bacterial-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-ab-tubing.png",
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      PM.ingredient("pm-brass-plate", 1),
      PM.ingredient("pm-basic-tubing", 1),
    },
    results =
    {
      PM.product("pm-anti-bacterial-tubing", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-lead-radiation-resistant-tubing",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/lead-rr-tubing.png",
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    ingredients =
    {
      PM.ingredient("pm-lead-plate", 1),
      PM.ingredient("pm-basic-tubing", 1),
    },
    results =
    {
      PM.product("pm-radiation-resistant-tubing", 4)
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
      PM.ingredient("iron-plate", 1),
      PM.ingredient("iron-stick", 2)
    },
    results =
    {
      PM.product("pm-basic-framing", 2)
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
      PM.ingredient("pm-nickel-plate", 1),
      PM.ingredient("iron-stick", 2)
    },
    results =
    {
      PM.product("pm-basic-framing", 2)
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
      PM.ingredient("steel-plate", 1),
      PM.ingredient("iron-stick", 2)
    },
    results =
    {
      PM.product("pm-basic-framing", 4)
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
      PM.ingredient("pm-brass-plate", 1),
      PM.ingredient("iron-stick", 2)
    },
    results =
    {
      PM.product("pm-basic-framing", 4)
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
      PM.ingredient("pm-stainless-steel-alloy", 1),
      PM.ingredient("iron-stick", 2)
    },
    results =
    {
      PM.product("pm-basic-framing", 6)
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
      PM.ingredient("pm-tungsten-plate", 1),
      PM.ingredient("pm-basic-framing", 1)
    },
    results =
    {
      PM.product("pm-heavyweight-framing", 2)
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
      PM.ingredient("pm-chrominum-ore", 1),
      PM.ingredient("pm-basic-framing", 1)
    },
    results =
    {
      PM.product("pm-heavyweight-framing", 2)
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
      PM.ingredient("pm-titanium-plate", 1),
      PM.ingredient("pm-basic-framing", 1)
    },
    results =
    {
      PM.product("pm-lightweight-framing", 4)
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
      PM.ingredient("pm-tin-plate", 1),
      PM.ingredient("pm-basic-framing", 1)
    },
    results =
    {
      PM.product("pm-lightweight-framing", 2)
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
      PM.ingredient("pm-aluminium-plate", 1),
      PM.ingredient("pm-basic-framing", 1)
    },
    results =
    {
      PM.product("pm-lightweight-framing", 4)
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
      PM.ingredient("pm-heating-plating", 1),
      PM.ingredient("pm-basic-framing", 1)
    },
    results =
    {
      PM.product("pm-molten-framing", 2)
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
      PM.ingredient("pm-cooling-plating", 1),
      PM.ingredient("pm-basic-framing", 1)
    },
    results =
    {
      PM.product("pm-cooling-framing", 2)
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
      PM.ingredient("iron-plate", 2)
    },
    results =
    {
      PM.product("pm-basic-panelling", 2)
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
      PM.ingredient("steel-plate", 1),
      PM.ingredient("iron-plate", 1)
    },
    results =
    {
      PM.product("pm-basic-panelling", 4)
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
      PM.ingredient("pm-stainless-steel-alloy", 1),
      PM.ingredient("iron-plate", 1)
    },
    results =
    {
      PM.product("pm-basic-panelling", 6)
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
      PM.ingredient("pm-zinc-plate", 1),
      PM.ingredient("iron-plate", 1)
    },
    results =
    {
      PM.product("pm-basic-panelling", 2)
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
      PM.ingredient("pm-titanium-plate", 1),
      PM.ingredient("pm-basic-panelling", 1)
    },
    results =
    {
      PM.product("pm-lightweight-panelling", 4)
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
      PM.ingredient("pm-tin-plate", 1),
      PM.ingredient("pm-basic-panelling", 1)
    },
    results =
    {
      PM.product("pm-lightweight-panelling", 2)
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
      PM.ingredient("pm-aluminium-plate", 1),
      PM.ingredient("pm-basic-panelling", 1)
    },
    results =
    {
      PM.product("pm-lightweight-panelling", 4)
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
      PM.ingredient("pm-tungsten-plate", 1),
      PM.ingredient("pm-basic-panelling", 1)
    },
    results =
    {
      PM.product("pm-heavyweight-panelling", 2)
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
      PM.ingredient("pm-chrominum-ore", 1),
      PM.ingredient("pm-basic-panelling", 1)
    },
    results =
    {
      PM.product("pm-heavyweight-panelling", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-silver-anti-bacterial-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/silver-ab-panelling.png",
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      PM.ingredient("pm-silver-plate", 1),
      PM.ingredient("pm-basic-panelling", 1),
    },
    results =
    {
      PM.product("pm-anti-bacterial-panelling", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-copper-anti-bacterial-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-ab-panelling.png",
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      PM.ingredient("copper-plate", 1),
      PM.ingredient("pm-basic-panelling", 1),
    },
    results =
    {
      PM.product("pm-anti-bacterial-panelling", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-brass-anti-bacterial-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/brass-ab-panelling.png",
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      PM.ingredient("pm-brass-plate", 1),
      PM.ingredient("pm-basic-panelling", 1),
    },
    results =
    {
      PM.product("pm-anti-bacterial-panelling", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-lead-radiation-resistant-panelling",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/lead-rr-panelling.png",
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    ingredients =
    {
      PM.ingredient("pm-lead-plate", 1),
      PM.ingredient("pm-basic-panelling", 1),
    },
    results =
    {
      PM.product("pm-radiation-resistant-panelling", 2)
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
      PM.ingredient("copper-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-wiring", 2)
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
      PM.ingredient("pm-aluminium-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-wiring", 4)
    }
  },
})
