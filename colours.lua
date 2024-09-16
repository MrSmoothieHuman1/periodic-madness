---@class PM.color_lib
local colors = {}

---@enum PM.belt_colours
colors.list = {
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

---The order of the corpse prototypes
---@type table<PM.belt_colours,{[1]:string,[2]:string,[3]:string}>
colors.orders = {
  ["red"]			= {"b-a-a", "b-b-a", "b-c-a"},
  ["orange"]	= {"b-a-b", "b-b-b", "b-c-b"},
  ["yellow"]	= {"b-a-c", "b-b-c", "b-c-c"},
  ["green"]		= {"b-a-d", "b-b-d", "b-c-d"},
  ["blue"]		= {"b-a-e", "b-b-e", "b-c-e"},
  ["purple"]	= {"b-a-f", "b-b-f", "b-c-f"},
}
---@type table<PM.belt_colours, Color>
colors.values = {
  ["red"]			= {0.886, 0.090, 0.024},
  ["orange"]	= {0.898, 0.435, 0.031},
  ["yellow"]	= {0.898, 0.659, 0.031},
  ["green"]		= {0.302, 0.847, 0.196},
  ["blue"]		= {0.024, 0.596, 0.816},
  ["purple"]	= {0.322, 0.086, 1.000},

  ["debug"]   = {0.5, 0.5, 0.5},
}

if mods["debugadapter"] then
  colors.list[#colors.list+1] = "debug"
  colors.orders["debug"] = {"z1","z2","z3"}
  if settings then
    --NOTE My code expects the array format. We can't use the engine's struct
    local color = settings.startup["pm-debug-colour"].value
    colors.values["debug"] = {color.r,color.g,color.b}
  end
end

return colors