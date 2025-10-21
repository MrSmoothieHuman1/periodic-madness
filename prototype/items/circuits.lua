--for all items related to circuits
local item_sounds = require("__base__.prototypes.item_sounds")
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
  --green circuits are 'c'

  {
    type = "item",
    name = "pm-fluid-breadboard",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluid-circuit-breadboard.png",
    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move,
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
    order = "e",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-transistors",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/transistors.png",
    pictures = 
    {
      {filename = "__periodic-madness__/graphics/icons/transistors.png", size = 64, scale = 0.5},
      {filename = "__periodic-madness__/graphics/icons/transistors-2.png", size = 64, scale = 0.5},
    },
    subgroup = "pm-circuits",
    order = "f",
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
    order = "i",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-solder",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/solder.png",
    subgroup = "pm-circuits",
    order = "j",
    stack_size = 75,
  },
  --red circuits are 'k'

  {
    type = "item",
    name = "pm-processing-breadboard",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-breadboard.png",
    subgroup = "pm-processing-units",
    order = "a",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-processing-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/processing-integrated-circuits.png",
    subgroup = "pm-processing-units",
    order = "b",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-semiconductor",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/semiconfuctors.png",
    subgroup = "pm-processing-units",
    order = "c",
    stack_size = 25,
  },

  {
    type = "item",
    name = "pm-advanced-processing-breadboard",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-processing-breadboard.png",
    subgroup = "pm-processing-units",
    order = "e",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-advanced-processing-integrated-circuits",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-processing-integrated-circuits.png",
    subgroup = "pm-processing-units",
    order = "f",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-supercapacitor",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/supercapacitor.png",
    subgroup = "pm-processing-units",
    order = "g",
    stack_size = 50,
  },
  {
    type = "item",
    name = "pm-advanced-processing-unit",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/advanced-processing-unit.png",
    subgroup = "pm-processing-units",
    order = "h",
    stack_size = 200
  },
  
  {
    type = "item",
    name = "pm-space-processing-unit",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/space-processing-unit.png",
    subgroup = "pm-processing-units",
    order = "i",
    stack_size = 200
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
})
data.raw["item"]["electronic-circuit"].subgroup = "pm-circuits"
data.raw["item"]["electronic-circuit"].order = "c"
data.raw["item"]["advanced-circuit"].subgroup = "pm-circuits"
data.raw["item"]["advanced-circuit"].order = "k"

data.raw["item"]["processing-unit"].subgroup = "pm-processing-units"
data.raw["item"]["processing-unit"].order = "d"
