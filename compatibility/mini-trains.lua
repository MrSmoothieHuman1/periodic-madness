if not mods["Mini_Trains"] then return end
local PM = require("library")

data.raw["recipe"]["mini-locomotive"].ingredients =
{
    PM.ingredient("pm-mini-motor", 20),
    PM.ingredient("steel-plate", 5),
    PM.ingredient("pm-fluid-circuit", 5),
    PM.ingredient("pm-basic-framing", 16)
}
data.raw["recipe"]["mini-cargo-wagon"].ingredients =
{
    PM.ingredient("pm-basic-panelling", 20),
    PM.ingredient("pm-brass-cog", 6),
    PM.ingredient("pm-basic-framing", 16),
    PM.ingredient("pm-vulcanised-rubber", 6)
}
data.raw["recipe"]["mini-fluid-wagon"].ingredients =
{
    PM.ingredient("pm-basic-tubing", 16),
    PM.ingredient("pm-brass-cog", 6),
    PM.ingredient("pm-basic-framing", 20),
    PM.ingredient("pm-vulcanised-rubber", 6)
}

data.raw["recipe"]["train-stop"].ingredients = 
{
    PM.ingredient("pm-glass-pane", 4),
    PM.ingredient("electronic-circuit", 2),
    PM.ingredient("pm-basic-framing", 8)
}
data.raw["recipe"]["rail-signal"].ingredients =
{
  PM.ingredient("pm-glass-pane", 3),
  PM.ingredient("electronic-circuit", 1),
  PM.ingredient("pm-basic-panelling", 4)
}
data.raw["recipe"]["rail-chain-signal"].ingredients =
{
  PM.ingredient("pm-glass-pane", 3),
  PM.ingredient("pm-fluid-circuit", 1),
  PM.ingredient("pm-basic-panelling", 4)
}

data.raw["technology"]["mini-trains"].prerequisites = {"pm-fluid-circuit", "automobilism"}
data.raw["technology"]["automated-rail-transmission"].prerequisites = {"mini-trains"}