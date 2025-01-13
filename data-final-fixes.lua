require("compatibility.K2")
require("compatibility.BZ.foundry")
require("compatibility.BZ.zirconium")
require("compatibility.colour-theory-circuits")

local throwplosive = data.raw.item.explosives
data.raw.item.explosives = nil
throwplosive.type = "capsule"
data:extend({item})