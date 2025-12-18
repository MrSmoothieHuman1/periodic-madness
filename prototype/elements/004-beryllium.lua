local item_sounds = require("__base__.prototypes.item_sounds")
data:extend({

    {
        type = "item",
        name = "pm-beryl",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/beryl.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/ores/beryl.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/beryl-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/beryl-3.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/beryl-4.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-beryllium-aem",
        order = "a",
        stack_size = 100
    },
    {
        type = "item",
        name = "pm-beryl-powder",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/beryl-powder.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/beryl-powder.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/beryl-powder-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/beryl-powder-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-beryllium-aem",
        order = "b",
        stack_size = 250
    },
    {
        type = "item",
        name = "pm-beryllium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/beryllium-sulfate.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/beryllium-sulfate.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/beryllium-sulfate-2.png", size = 64, scale = 0.5}
        },
        subgroup = "pm-beryllium-aem",
        order = "c",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-aluminium-sulfate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/aluminium-sulfate.png",
        pictures =
        {
            {filename = "__periodic-madness__/graphics/icons/aluminium-sulfate.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/aluminium-sulfate-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/aluminium-sulfate-3.png", size = 64, scale = 0.5},
        },
        subgroup = "pm-beryllium-aem",
        order = "d",
        stack_size = 200
    },
    {
        type = "item",
        name = "pm-beryllium-ore",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/ores/beryllium-ore-icon.png",
        {
            {filename = "__periodic-madness__/graphics/icons/ores/beryllium-ore-icon.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/beryllium-ore-icon-2.png", size = 64, scale = 0.5},
            {filename = "__periodic-madness__/graphics/icons/ores/beryllium-ore-icon-3.png", size = 64, scale = 0.5},
        },
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        subgroup = "pm-germanium-mt",
        order = "e",
        stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-beryllium-hydroxide",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/beryllium-hydroxide.png",
        subgroup = "pm-beryllium-aem",
        order = "e",
        default_temperature = 15,
        base_color = {0.851, 0.851, 0.569},
        flow_color = {0.851, 0.851, 0.569},
    },
    {
        type = "fluid",
        name = "pm-ammonium-tetrafluoroberyllate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/ammonium-tetrafluoroberyllate.png",
        subgroup = "pm-beryllium-aem",
        order = "f",
        default_temperature = 15,
        base_color = {0.592, 0.902, 0.749},
        flow_color = {0.592, 0.902, 0.749},
    },

    {
        type = "recipe",
        name = "pm-beryl",
        enabled = false,
        energy_required = 10,
        category = "pm-acids",
        subgroup = "pm-beryllium-aem",
        order = "a",
        ingredients = 
        {
            PM.ingredient("pm-alkaline-earth-metals-ore", 20),
            PM.ingredient("pm-chromic-acid", 25, "fluid"),
        },
        results = 
        {
            PM.product("pm-beryl", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-beryl-powder",
        enabled = false,
        energy_required = 10,
        category = "pm-crushing",
        subgroup = "pm-beryllium-aem",
        order = "b",
        main_product = "pm-beryl-powder",
        ingredients = 
        {
            PM.ingredient("pm-beryl", 6)
        },
        results =
        {
            PM.product_range("pm-beryl-powder", 7, 12),
            PM.product_range("pm-bauxite-powder", 0, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-beryllium-sulfate",
        enabled = false,
        energy_required = 12,
        category = "pm-moltening",
        subgroup = "pm-beryllium-aem",
        order = "c",
        main_product = "pm-beryllium-sulfate",
        ingredients = 
        {
            PM.ingredient("pm-beryl-powder", 8),
            PM.ingredient("sulfuric-acid", 8, "fluid"),
        },
        results = 
        {
            PM.product_range_chance("pm-beryllium-sulfate", 2, 4, 0.8),
            PM.product_range_chance("pm-aluminium-sulfate", 2, 4, 0.2)
        }
    },
    {
        type = "recipe",
        name = "pm-beryllium-hydroxide",
        crafting_machine_tint =
        {
            primary = {0.851, 0.851, 0.569},
            secondary = tints.ammonia,
            tertiary = {0.851, 0.851, 0.569, 0.5},
            quaternary = tints.ammonia
        },
        enabled = false,
        energy_required = 12,
        category = "chemistry",
        subgroup = "pm-beryllium-aem",
        order = "d",
        ingredients = 
        {
            PM.ingredient("pm-beryllium-sulfate", 3),
            PM.ingredient("pm-ammonia-gas", 5, "fluid"),
            PM.ingredient("pm-sodium-hydroxide", 5, "fluid")
        },
        results = 
        {
            PM.product("pm-beryllium-hydroxide", 10, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-cold-ammonium-tetrafluoroberyllate",
        crafting_machine_tint = 
        {
            primary = {0.592, 0.902, 0.749},
            secondary = {0.851, 0.851, 0.569},
            tertiary = {0.592, 0.902, 0.749, 0.5},
            quaternary = {0.851, 0.851, 0.569}
        },
        enabled = false,
        energy_required = 18,
        category = "pm-acids",
        subgroup = "pm-beryllium-aem",
        order = "e",
        main_product = "pm-ammonium-tetrafluoroberyllate",
        ingredients = 
        {
            PM.ingredient("pm-beryllium-hydroxide", 10, "fluid"),
            PM.ingredient("pm-hydrogen-flouride", 5, "fluid"),
            PM.ingredient("pm-palladium-catalyst", 2)
        },
        results = 
        {
            PM.product("pm-ammonium-tetrafluoroberyllate", 7.5, "fluid"),
            PM.product_chance("pm-palladium-catalyst", 2, 0.85),
            PM.product_chance("pm-catalyst-container", 2, 0.15)
        }
    },
    {
        type = "recipe",
        name = "pm-ammonium-tetrafluoroberyllate",
        enabled = false,
        energy_required = 9,
        category = "pm-moltening",
        subgroup = "pm-beryllium-aem",
        order = "ea",
        ingredients = 
        {
            PM.ingredient("pm-beryllium-hydroxide", 10, "fluid"),
            PM.ingredient("pm-hydrogen-flouride", 5, "fluid"),
        },
        results = 
        {
            PM.product("pm-ammonium-tetrafluoroberyllate", 10, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-beryllium-ore",
        enabled = false,
        energy_required = 9,
        category = "pm-moltening",
        subgroup = "pm-beryllium-aem",
        order = "f",
        main_product = "pm-beryllium-ore",
        ingredients = 
        {
            PM.ingredient("pm-ammonium-tetrafluoroberyllate", 5, "fluid"),
            PM.ingredient("pm-magnesium-ore", 2)
        },
        results = 
        {
            PM.product_range("pm-beryllium-ore", 2, 5),
            PM.product_range_chance("pm-hydrogen-flouride", 0, 4, 0.75, "fluid")
        }
    },
    {
    type = "recipe",
    name = "pm-beryllium-plate",
    subgroup = "pm-beryllium-aem",
    order = "g",
    category = "smelting",
    energy_required = 6.4,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-beryllium-ore", 1) },
    results = 
        {
            PM.product("pm-beryllium-plate", 1)
        }
    },
    {
    type = "recipe",
    name = "pm-molten-beryllium",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-beryllium.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/beryllium-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-beryllium-aem",
    order = "h",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-beryllium-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-beryllium", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-beryllium-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/beryllium-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-beryllium-aem",
    order = "i",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-beryllium", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-beryllium-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },

  {
    type = "recipe",
    name = "pm-aluminium-sulfate-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/aluminium-sulfate-seperation.png",
    crafting_machine_tint = 
    {
        primary = {0.969, 0.847, 0.914}
    },
    enabled = false,
    energy_required = 5,
    category = "pm-mixing",
    subgroup = "pm-beryllium-aem",
    order = "j",
    allow_decomposition = true,
    ingredients = 
    {
        PM.ingredient("pm-aluminium-sulfate", 10),
        PM.ingredient("water", 25, "fluid")
    },
    results = 
    {
        PM.product("pm-aluminium-hydroxide-slurry", 5, "fluid"),
        PM.product("pm-acidic-water", 15, "fluid")
    }
  }
})