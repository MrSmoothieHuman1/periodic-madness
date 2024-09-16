---@class PM.color_lib
local colors = {}

---@enum PM.belt_colours
colors.list = {
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "purple",
  "pink",
  "black",
  "white",
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
  ["pink"]    = {"b-a-g", "b-b-g", "b-c-g"},

  ["black"]   = {"b-a-h", "b-b-h", "b-c-h"},
  ["white"]   = {"b-a-i", "b-b-i", "b-c-i"},
}
---@type table<PM.belt_colours, Color>
colors.values = {
  ["red"]			= {239,  77,  69},
  ["orange"]	= {242, 124,  71},
  ["yellow"]	= {254, 230, 120},
  ["green"]		= {178, 249,  91},
  ["blue"]		= {130, 227, 248},
  ["purple"]	= {142,  97, 218},
  ["pink"]    = {238,  84, 187},

  ["black"]   = {  0,   0,   0},
  ["white"]   = {255, 255, 255},

  ["debug"]   = {0.5, 0.5, 0.5}, -- So you can set the default.
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