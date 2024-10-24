--for any intermediate items that can be made with multiple metals

data:extend({

  {
    type = "item",
    name = "pm-heating-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/heating-plating.png",
    subgroup = "pm-multimetal-temp-plates",
    order = "a",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-cooling-plating",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/cooling-plating.png",
    subgroup = "pm-multimetal-temp-plates",
    order = "b",
    stack_size = 50,
  },

  --Tubing

  {
    type = "item",
    name = "pm-basic-tubing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-tubing.png",
    subgroup = "pm-multimetal-tubing",
    order = "a",
    stack_size = 400,
  },
  {
    type = "item",
    name = "pm-corrosion-resistant-tubing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/corrosion-resistant-tubing.png",
    subgroup = "pm-multimetal-tubing",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "pm-anti-bacterial-tubing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/anti-bacterial-tubing.png",
    subgroup = "pm-multimetal-tubing",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "pm-radiation-resistant-tubing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/radiation-resistant-tubing.png",
    subgroup = "pm-multimetal-tubing",
    order = "d",
    stack_size = 200,
  },

  --Framing

  {
    type = "item",
    name = "pm-basic-framing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-framing.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/basic-framing.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/basic-framing-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-multimetal-framing",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-lightweight-framing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/lightweight-framing.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/lightweight-framing.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/lightweight-framing-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-multimetal-framing",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-heavyweight-framing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/heavyweight-framing.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/heavyweight-framing.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/heavyweight-framing-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-multimetal-framing",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-molten-framing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/molten-framing.png",
    subgroup = "pm-multimetal-framing",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-cooling-framing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cooling-framing.png",
    subgroup = "pm-multimetal-framing",
    order = "e",
    stack_size = 200
  },

  --Panelling

  {
    type = "item",
    name = "pm-basic-panelling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-panelling.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/basic-panelling.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/basic-panelling-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-multimetal-panelling",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-lightweight-panelling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/lightweight-panelling.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/lightweight-panelling.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/lightweight-panelling-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-multimetal-panelling",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-heavyweight-panelling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/heavyweight-panelling.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/heavyweight-panelling.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/heavyweight-panelling-2.png", size = 64, scale = 0.5}
    },
    subgroup = "pm-multimetal-panelling",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-anti-bacterial-panelling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/anti-bacterial-panelling.png",
    subgroup = "pm-multimetal-panelling",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-radiation-resistant-panelling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/radiation-resistant-panelling.png",
    subgroup = "pm-multimetal-panelling",
    order = "e",
    stack_size = 200,
  },


  --Wiring

  {
    type = "item",
    name = "pm-basic-wiring",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/basic-wiring.png",
    subgroup = "pm-multimetal-wiring",
    order = "a",
    stack_size = 400
  },
})
