--for all items related to circuits

data:extend({

  {
    type = "item",
    name = "pm-electronic-breadboard",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/circuit-breadboard.png",
    subgroup = "pm-circuits",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-electronic-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-integrated-circuits.png",
    subgroup = "pm-circuits",
    order = "b",
    stack_size = 250
  },

  {
    type = "item",
    name = "pm-fluid-breadboard",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-circuit-breadboard.png",
    subgroup = "pm-circuits",
    order = "d",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-fluid-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-integrated-circuits.png",
    subgroup = "pm-circuits",
    order = "f",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-transistors",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/transistors.png",
    subgroup = "pm-circuits",
    order = "e",
    stack_size = 500
  },
  {
    type = "item",
    name = "pm-fluid-circuit",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-circuit.png",
    subgroup = "pm-circuits",
    order = "g",
    stack_size = 200
  },

  {
    type = "item",
    name = "pm-advanced-circuit-breadboard",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-circuit-breadboard.png",
    subgroup = "pm-circuits",
    order = "h",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-advanced-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-integrated-circuits.png",
    subgroup = "pm-circuits",
    order = "j",
    stack_size = 250
  },

  {
    type = "item",
    name = "pm-processing-breadboard",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-breadboard.png",
    subgroup = "pm-circuits",
    order = "m",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-processing-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-integrated-circuits.png",
    subgroup = "pm-circuits",
    order = "n",
    stack_size = 250
  },

  {
    type = "item",
    name = "pm-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "a",
    stack_size = 100,
  },
  {
    type = "item",
    name = "pm-electronic-breadboard-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/green-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "c",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-fluid-breadboard-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "e",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-advanced-breadboard-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "g",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-processing-breadboard-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-circuitboard-mold.png",
    subgroup = "pm-molded-circuits",
    order = "i",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-integrated-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "b",
    stack_size = 100,
  },
  {
    type = "item",
    name = "pm-electronic-integrated-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/basic-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "d",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-fluid-integrated-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "f",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-advanced-integrated-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "h",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-processing-integrated-circuit-mold",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-integrated-circuit-mold.png",
    subgroup = "pm-molded-circuits",
    order = "j",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-solder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/solder.png",
    subgroup = "pm-circuits",
    order = "i",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-semiconductor",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/semiconfuctors.png",
    subgroup = "pm-circuits",
    order = "i",
    stack_size = 50,
  },
})

local GreenCircuitMove = data.raw["item"]["electronic-circuit"]

GreenCircuitMove.subgroup = "pm-circuits"
GreenCircuitMove.order = "c"

local RedCircuitMove = data.raw["item"]["advanced-circuit"]

RedCircuitMove.subgroup = "pm-circuits"
RedCircuitMove.order = "k"

data.raw["item"]["processing-unit"].subgroup = "pm-circuits"
data.raw["item"]["processing-unit"].order = "o"
