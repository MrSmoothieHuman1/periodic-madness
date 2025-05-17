local PM = require("library")

local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")

if not data.raw.tile["empty-space"] then
    local empty_space = table.deepcopy(data.raw.tile["out-of-map"])
    empty_space.name = "empty-space"
    data:extend{empty_space}
end
if feature_flags["space_travel"] then
data:extend({

{
    type = "item",
    name = "pm-stack-inserter",
    icon = "__periodic-madness__/graphics/icons/buildings/stack-inserter.png",
    subgroup = "inserter",
    order = "h",
    inventory_move_sound = item_sounds.wire_inventory_move,
    pick_sound = item_sounds.wire_inventory_pickup,
    drop_sound = item_sounds.wire_inventory_move,
    place_result = "stack-inserter",
    stack_size = 50,
},
})
end