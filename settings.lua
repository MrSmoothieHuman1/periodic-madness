---@diagnostic disable: assign-type-mismatch, missing-fields
local colours = require("__periodic-madness__/colours")
local colour_list = colours.list

local is_debug = not not mods["debugadapter"]

data:extend({
  {
    type = "bool-setting",
    name = "pm-zirconium-pants",
    setting_type = "startup",
    default_value = false,
    order = "z"
  },

  {
    type = "string-setting",
    name = "pm-belt-colour-tier-1",
    localised_name = "mod-setting-name.pm-belt-colour-tier", 1,
    setting_type = "startup",
    default_value = is_debug and "debug" or "yellow",
    allowed_values = colour_list,
    order = "a1"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-2",
    localised_name = "mod-setting-name.pm-belt-colour-tier", 2,
    setting_type = "startup",
    default_value = "orange",
    allowed_values = colour_list,
    order = "a2"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-3",
    localised_name = "mod-setting-name.pm-belt-colour-tier", 3,
    setting_type = "startup",
    default_value = "red",
    allowed_values = colour_list,
    order = "a3"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-4",
    localised_name = "mod-setting-name.pm-belt-colour-tier", 4,
    setting_type = "startup",
    default_value = "blue",
    allowed_values = colour_list,
    order = "a4"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-5",
    localised_name = "mod-setting-name.pm-belt-colour-tier", 5,
    setting_type = "startup",
    default_value = "purple",
    allowed_values = colour_list,
    order = "a5"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-6",
    localised_name = "mod-setting-name.pm-belt-colour-tier", 6,
    hidden = true, -- So we can conditonally support another tier of belts
    setting_type = "startup",
    -- default_value = "green",
    default_value = "yellow",
    allowed_values = colour_list,
    order = "a6"
  },

  is_debug and {
    type = "color-setting",
    name = "pm-debug-colour",
    setting_type = "startup",
    default_value = colours.values["debug"],
    order = "z"
  } or nil,
})
