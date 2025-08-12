if not mods["bzzirconium"] or not mods["Krastorio2"] then return end

data.raw["recipe"]["pm-dirty-boiler"].enabled = false
data.raw["recipe"]["pm-science-bottle"].enabled = false
data.raw["recipe"]["pm-burner-crusher"].enabled = false
data.raw["recipe"]["kr-crusher"].subgroup = "pm-crushing-machine"
data.raw["recipe"]["kr-crusher"].order = "d"
data.raw["recipe"]["kr-filtration-plant"].ingredients =
{
  PM.ingredient("pm-glass-pane", 10),
  PM.ingredient("steel-plate", 4),
  PM.ingredient("automation-core", 2),
  PM.ingredient("pm-corrosion-resistant-tubing", 10),
  PM.ingredient("pm-heavyweight-panelling", 8)
}
data.raw["recipe"]["kr-crusher"].ingredients =
{
  PM.ingredient("electric-engine-unit", 6),
  PM.ingredient("advanced-circuit", 15),
  PM.ingredient("concrete", 15),
  PM.ingredient("pm-lightweight-framing", 30),
  PM.ingredient("pm-heavyweight-panelling", 12),
}
data.raw["technology"]["pm-cleaner-power-generation"].prerequisites = { "kr-steam-engine" }
data.raw["technology"]["kr-fluids-chemistry"].prerequisites = { "kr-basic-fluid-handling", "steel-processing",
  "kr-stone-processing" }
data.raw["technology"]["kr-steam-engine"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-dirty-boiler"
  },
  {
    type = "unlock-recipe",
    recipe = "steam-engine"
  },
}