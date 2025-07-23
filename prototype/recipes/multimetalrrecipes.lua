local PM = require("library")
--im so sorry gal-man

data:extend({

  {
    type = "recipe",
    name = "pm-gold-heating-plating",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/heating-plating.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/gold-wire.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "a[pm-heating-plating]",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 2),
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/heating-plating.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/copper-cable.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "a[pm-heating-plating]",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 2),
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/heating-plating.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 1,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-temp-plates",
    order = "a[pm-heating-plating]",
    enabled = false,
    ingredients =
    {
      PM.ingredient("pm-basic-panelling", 2),
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
      PM.ingredient("pm-basic-panelling", 2),
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
      PM.ingredient("pm-basic-panelling", 2),
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
      PM.ingredient("pm-basic-panelling", 2),
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
      PM.ingredient("pm-basic-panelling", 2),
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
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-tubing",
    order = "a",
    ingredients =
    {
      PM.ingredient("iron-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-tubing", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-nickel-basic-tubing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/nickel-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-tubing",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-nickel-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-tubing", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-copper-basic-tubing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-tubing",
    order = "c",
    ingredients =
    {
      PM.ingredient("copper-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-tubing", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-brass-basic-tubing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-brass-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-tubing", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-steel-basic-tubing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/steel-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-tubing",
    order = "e",
    ingredients =
    {
      PM.ingredient("steel-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-tubing", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-corrosion-tubing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/corrosion-resistant-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-cr-tubing",
    order = "c",
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
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/corrosion-resistant-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/gold-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-cr-tubing",
    order = "a",
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
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/corrosion-resistant-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/silver-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-cr-tubing",
    order = "b",
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
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/corrosion-resistant-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-cr-tubing",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-brass-plate", 1),
      PM.ingredient("pm-basic-tubing", 1)
    },
    results =
    {
      PM.product("pm-corrosion-resistant-tubing", 6)
    }
  },

  {
    type = "recipe",
    name = "pm-silver-anti-bacterial-tubing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/anti-bacterial-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/silver-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-ab-tubing",
    order = "b",
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
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/anti-bacterial-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-ab-tubing",
    order = "a",
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
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/anti-bacterial-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-ab-tubing",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-brass-plate", 1),
      PM.ingredient("pm-basic-tubing", 1),
    },
    results =
    {
      PM.product("pm-anti-bacterial-tubing", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-lead-radiation-resistant-tubing",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/radiation-resistant-tubing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/lead-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-rr-tubing",
    order = "a",
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
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-framing.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-framing",
    order = "a",
    ingredients =
    {
      PM.ingredient("iron-plate", 2),
    },
    results =
    {
      PM.product("pm-basic-framing", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-steel-basic-framing",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-framing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/steel-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    order = "c",
    ingredients =
    {
      PM.ingredient("steel-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-framing", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-brass-basic-framing",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-framing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-brass-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-framing", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-basic-framing",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-framing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-framing",
    order = "e",
    ingredients =
    {
      PM.ingredient("pm-stainless-steel-alloy", 1),
    },
    results =
    {
      PM.product("pm-basic-framing", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-tungsten-heavyweight-framing",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/heavyweight-framing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/tungsten-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-hw-framing",
    order = "a",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/heavyweight-framing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/chromium-ore-icon.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-hw-framing",
    order = "b",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/lightweight-framing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/titanium-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-lw-framing",
    order = "b",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/lightweight-framing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/molybdenum-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-lw-framing",
    order = "a",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/lightweight-framing.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/aluminium-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-lw-framing",
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
    subgroup = "pm-multimetal-ht-framing",
    order = "a",
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
    subgroup = "pm-multimetal-cd-framing",
    order = "a",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/steel-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    order = "c",
    ingredients =
    {
      PM.ingredient("steel-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-panelling", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-stainless-steel-panelling",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/stainless-steel-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-panelling",
    order = "d",
    ingredients =
    {
      PM.ingredient("pm-stainless-steel-alloy", 1),
    },
    results =
    {
      PM.product("pm-basic-panelling", 6)
    }
  },
  {
    type = "recipe",
    name = "pm-zinc-panelling",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/basic-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/zinc-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-panelling",
    order = "b",
    ingredients =
    {
      PM.ingredient("pm-zinc-plate", 1),
    },
    results =
    {
      PM.product("pm-basic-panelling", 2)
    }
  },
  {
    type = "recipe",
    name = "pm-titanium-lightweight-panelling",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/lightweight-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/titanium-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-lw-panelling",
    order = "c",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/lightweight-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/molybdenum-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-lw-panelling",
    order = "a",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/lightweight-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/aluminium-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    show_amount_in_title = true,
    enabled = false,
    subgroup = "pm-multimetal-lw-panelling",
    order = "b",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/heavyweight-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/tungsten-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-hw-panelling",
    order = "a",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/heavyweight-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/ores/chromium-ore-icon.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    show_amount_in_title = true,
    subgroup = "pm-multimetal-hw-panelling",
    order = "b",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/anti-bacterial-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/silver-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-ab-panelling",
    order = "b",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/anti-bacterial-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-ab-panelling",
    order = "a",
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
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/anti-bacterial-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-ab-panelling",
    order = "c",
    ingredients =
    {
      PM.ingredient("pm-brass-plate", 1),
      PM.ingredient("pm-basic-panelling", 1),
    },
    results =
    {
      PM.product("pm-anti-bacterial-panelling", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-lead-radiation-resistant-panelling",
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/radiation-resistant-panelling.png",
        icon_size = 64,
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/lead-plate.png",
        icon_size = 64,
        scale = 0.28,
        shift = {10, -6}
      },
    },
    energy_required = 0.5,
    enabled = false,
    subgroup = "pm-multimetal-rr-panelling",
    order = "a",
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
