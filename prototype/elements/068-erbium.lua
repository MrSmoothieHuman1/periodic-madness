data:extend({
    {
      type = "item",
      name = "pm-euxenite",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-erbium-la",
      order = "a",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-erbium-salts",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-erbium-la",
      order = "b",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-erbium-oxide",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-erbium-la",
      order = "c",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-erbium-bromide",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-erbium-la",
      order = "d",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-erbium-iodide",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-erbium-la",
      order = "e",
      stack_size = 200
    },
    {
      type = "item",
      name = "pm-impure-erbium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-erbium-la",
      order = "f",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-erbium-fluoride",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-erbium-la",
      order = "g",
      stack_size = 150
    },
    {
      type = "item",
      name = "pm-erbium-plate",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-erbium-la",
      order = "i",
      stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-molten-erbium",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-froth.png",
        subgroup = "pm-erbium-la",
        order = "g",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },

    {
        type = "recipe",
        name = "pm-euxenite",
        enabled = false,
        energy_required = 8,
        category = "pm-acids",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-pure-monazite", 4),
            PM.ingredient("pm-patina", 5),
            PM.ingredient("pm-ion-exchange-beads", 6)
        },
        results =
        {
            PM.product("pm-euxenite", 6),
        }
    },
    {
        type = "recipe",
        name = "pm-erbium-salts",
        enabled = false,
        energy_required = 4,
        category = "pm-crystallisation",
        main_product = "pm-erbium-salts",
        ingredients =
        {
            PM.ingredient("pm-euxenite", 5),
            PM.ingredient("pm-magnesium-oxide", 8),
            PM.ingredient("pm-light-coolant", 10, "fluid", 1)
        },
        results =
        {
            PM.product("pm-erbium-salts", 8),
            PM.product("pm-magnesium-oxide", 4),
            PM.ingredient("pm-hot-light-coolant", 10, "fluid", 1)
        }
    },
    {
        type = "recipe",
        name = "pm-erbium-salt-seperation",
        enabled = false,
        energy_required = 8,
        category = "centrifuging",
        subgroup = "pm-erbium-la",
        order = "b",
        main_product = "pm-erbium-oxide",
        ingredients =
        {
            PM.product("pm-erbium-salts", 8),
        },
        results =
        {
            PM.product_range("pm-erbium-oxide", 1, 3),
            PM.product_range("pm-erbium-bromide", 1, 3),
            PM.product_range("pm-erbium-iodide", 1, 3),
            PM.product_range("pm-ion-exchange-beads", 3, 4)
        }
    },
    {
        type = "recipe",
        name = "pm-erbium-oxide-to-impure-erbium",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-erbium-la",
        order = "c",
        allow_productivity = true,
        main_product = "pm-impure-erbium",
        ingredients =
        {
            PM.ingredient("pm-erbium-oxide", 4),
            PM.ingredient("pm-1-10-phenanthroline", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-erbium", 3),
            PM.product_range("pm-oxygen-gas", 2.5, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-erbium-bromide-to-impure-erbium",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-erbium-la",
        order = "d",
        allow_productivity = true,
        main_product = "pm-impure-erbium",
        ingredients =
        {
            PM.ingredient("pm-erbium-bromide", 4),
            PM.ingredient("pm-1-10-phenanthroline", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-erbium", 3),
            PM.product_range("pm-boron", 2.5, 5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-erbium-iodide-to-impure-erbium",
        enabled = false,
        energy_required = 10,
        category = "chemistry",
        subgroup = "pm-erbium-la",
        order = "e",
        allow_productivity = true,
        main_product = "pm-impure-erbium",
        ingredients =
        {
            PM.ingredient("pm-erbium-iodide", 4),
            PM.ingredient("pm-1-10-phenanthroline", 2.5, "fluid")
        },
        results =
        {
            PM.product("pm-impure-erbium", 3),
            PM.product_range("pm-iodine", 1, 3)
        }
    },
    {
        type = "recipe",
        name = "pm-erbium-fluoride",
        enabled = false,
        energy_required = 5,
        category = "pm-moltening", --should be in blast/reverb furnace
        ingredients =
        {
            PM.ingredient("pm-impure-erbium", 6),
            PM.ingredient("pm-flourine", 4),
            PM.ingredient("pm-ammonium-chloride", 2)
        },
        results =
        {
            PM.ingredient("pm-erbium-fluoride", 6)
        }
    },
    {
        type = "recipe",
        name = "pm-molten-erbium",
        enabled = false,
        energy_required = 15,
        category = "pm-moltening",
        ingredients =
        {
            PM.ingredient("pm-erbium-fluoride", 5),
            PM.ingredient("steam", 25, "fluid")
        },
        results =
        {
            PM.product("pm-molten-erbium", 2.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-erbium-plate",
        enabled = false,
        energy_required = 15,
        category = "pm-coldening",
        main_product = "pm-erbium-plate",
        ingredients =
        {
            PM.ingredient("pm-molten-erbium", 5, "fluid"),
            PM.ingredient("pm-crucible", 2)
        },
        results =
        {
            PM.product("pm-erbium-plate", 10),
            PM.catalyst_chance("pm-crucible", 2, 0.75, 2)
        }
    }
})