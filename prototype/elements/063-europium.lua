data:extend({
    {
      type = "item",
      name = "pm-europium-trioxide",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-europium-la",
      order = "b",
      stack_size = 100
    },
    {
      type = "item",
      name = "pm-zinc-amalgam",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-europium-la",
      order = "c",
      stack_size = 25
    },
    {
      type = "item",
      name = "pm-europium",
      icon_size = 64,
      icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
      subgroup = "pm-europium-la",
      order = "e",
      protons = 63,
      neutrons = 89,
      stack_size = 200
    },

    {
        type = "fluid",
        name = "pm-europium-trioxide-concentrate",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/barium-froth.png",
        subgroup = "pm-europium-la",
        order = "a",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },
    {
        type = "fluid",
        name = "pm-molten-europium-chloride",
        icon_size = 64,
        icon = "__periodic-madness__/graphics/icons/fluids/molten-europium-chloride.png",
        subgroup = "pm-europium-la",
        order = "d",
        default_temperature = 15,
        base_color = {r = 0.3, g = 0.3, b = 0.2},
        flow_color = {r = 0.3, g = 0.3, b = 0.2},
    },

    {
        type = "recipe",
        name = "pm-europium-trioxide-concentrate",
        enabled = false,
        energy_required = 8,
        category = "pm-mixing",
        allow_productivity = true,
        main_product = "pm-europium-trioxide-concentrate",
        ingredients =
        {
            PM.ingredient("pm-roasted-bastnasite", 5),
            PM.ingredient("pm-sodium-hydroxide", 25, "fluid"),
            PM.ingredient("pm-acidic-water", 25, "fluid")
        },
        results =
        {
            PM.product("pm-europium-trioxide-concentrate", 20, "fluid"),
            PM.catalyst_range("pm-sodium", 6, 12, 8)
        }
    },
    {
        type = "recipe",
        name = "pm-europium-trioxide",
        enabled = false,
        energy_required = 16,
        category = "chemistry",
        allow_productivity = true,
        main_product = "pm-europium-trioxide",
        ingredients =
        {
            PM.ingredient("pm-europium-trioxide-concentrate", 10, "fluid"),
        },
        results =
        {
            PM.product_range("pm-europium-trioxide", 3, 4),
            PM.catalyst("pm-acidic-water", 12.5, 12.5, "fluid")
        }
    },
    {
        type = "recipe",
        name = "pm-zinc-amalgam",
        enabled = false,
        energy_required = 9,
        category = "pm-moltening",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-molten-zinc", 20, "fluid"),
            PM.ingredient("pm-liquid-mercury", 50, "fluid")
        },
        results =
        {
            PM.product("pm-zinc-amalgam", 4)
        }
    },
    {
        type = "recipe",
        name = "pm-molten-europium-chloride",
        enabled = false,
        energy_required = 27,
        category = "pm-moltening",
        allow_productivity = true,
        ingredients =
        {
            PM.ingredient("pm-europium-trioxide", 4),
            PM.ingredient("pm-barium-ore", 1),
            PM.ingredient("pm-zinc-amalgam", 2),
            PM.ingredient("pm-hydrochloric-acid", 20, "fluid")
        },
        results =
        {
            PM.product("pm-molten-europium-chloride", 7.5, "fluid"),
        }
    },
    {
        type = "recipe",
        name = "pm-europium",
        enabled = false,
        energy_required = 9,
        category = "pm-electrolysis",
        main_product = "pm-europium",
        ingredients =
        {
            PM.ingredient("pm-molten-europium-chloride", 7.5, "fluid"),
            PM.ingredient("pm-carbon", 15)
        },
        results =
        {
            PM.product("pm-europium", 5),
            PM.product("pm-chlorine", 10, "fluid"),
        }
    }
})