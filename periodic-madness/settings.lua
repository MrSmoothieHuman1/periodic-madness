data:extend({
    {
        type = "string-setting",
        name = "pm-vanadium-robot-speed-multiplier",
        setting_type = "startup",
        default_value = "1x",
        allowed_values = {"0.25x", "0.5x", "0.75x", "1x", "1.25x", "1.5x", "1.75x", "2x"}
    },
    {
        type = "string-setting",
        name = "pm-lithium-robot-speed-multiplier",
        setting_type = "startup",
        default_value = "1x",
        allowed_values = {"0.25x", "0.5x", "0.75x", "1x", "1.25x", "1.5x", "1.75x", "2x"}
    },
    {
        type = "bool-setting",
        name = "pm-circuit-colourblind-friendly-icons",
        setting_type = "startup",
        default_value = false
    },
    {
        type = "int-setting",
        name = "pm-building-module-extra-slots",
        setting_type = "startup",
        default_value = 0,
        minimum_value = -2,
        maximum_value = 4
    }
})