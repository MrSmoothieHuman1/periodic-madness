data:extend({

    {
        type = "burner-usage",
        name = "pm-particle-accelerator-maintenance",
        icon = 
        {
            filename = "__core__/graphics/icons/alerts/food-icon-red.png",
            priority = "extra-high-no-scale",
            width = 64,
            height = 64,
            flags = {"icon"}
        },
        empty_slot_sprite =
        {
          filename = "__periodic-madness__/graphics/icons/GUI/maintenance-slot-icon-white.png",
          priority = "extra-high-no-scale",
          size = 64,
          mipmap_count = 2,
          flags = {"gui-icon"},
        },
        empty_slot_caption = {"entity-name.pm-cryogenic-plant"},
        empty_slot_description = {"entity-name.pm-crusher-1"},
        accepted_fuel_key = "pm-burner-usage.pm-particle-accelerator-accepted-fuel",
        burned_in_key = "pm-burner-usage.pm-paricle-accelerator-burned-in", -- factoriopedia
        no_fuel_status = {"pm-burner-usage.pm-particle-accelerator-no-fuel"}
    }
})