---@diagnostic disable: assign-type-mismatch, missing-fields
---@enum PM.belt_colours
local belt_colours = {
  "red", -- Finished
  "orange",
  -- [ ] Fix the mipmaps
  -- [ ] Add the underground patches
  -- [ ] Make remnant graphics
  -- [ ] Add a (temp) loader icon?
  "yellow",
  -- [ ] Remake to make the arrows match
  -- "green",
  -- TODO: Make (also make sure the arbitrary color I picked isn't bad)
  "blue", -- Finished
  "purple",
  -- [ ] Fix the mipmaps
  -- [ ] Add a (temp) loader icon?
}
--[[NOTE:
  When adding a color, you need to also add it to the
  order and colour table at the bottom of belt-colours.lua.

  I feel like the *how* is pretty self explanatory
]]

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
    localised_name = {"mod-setting-name.pm-belt-colour-tier", 1},
    setting_type = "startup",
    default_value = "yellow",
    allowed_values = belt_colours,
    order = "a1"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-2",
    localised_name = {"mod-setting-name.pm-belt-colour-tier", 2},
    setting_type = "startup",
    default_value = "orange",
    allowed_values = belt_colours,
    order = "a2"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-3",
    localised_name = {"mod-setting-name.pm-belt-colour-tier", 3},
    setting_type = "startup",
    default_value = "red",
    allowed_values = belt_colours,
    order = "a3"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-4",
    localised_name = {"mod-setting-name.pm-belt-colour-tier", 4},
    setting_type = "startup",
    default_value = "blue",
    allowed_values = belt_colours,
    order = "a4"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-5",
    localised_name = {"mod-setting-name.pm-belt-colour-tier", 5},
    setting_type = "startup",
    default_value = "purple",
    allowed_values = belt_colours,
    order = "a5"
  },
  {
    type = "string-setting",
    name = "pm-belt-colour-tier-6",
    localised_name = {"mod-setting-name.pm-belt-colour-tier", 6},
    hidden = true, -- So we can conditonally support another tier of belts
    setting_type = "startup",
    -- default_value = "green",
    default_value = "yellow",
    allowed_values = belt_colours,
    order = "a6"
  }
})
