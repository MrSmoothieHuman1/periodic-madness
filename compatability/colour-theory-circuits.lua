if not mods["ColourTheoryCircuits"] then return end

data.raw["item"]["pm-fluid-circuit"].icon_size = 128
data.raw["item"]["pm-fluid-circuit"].icon = "__periodic-madness__/graphics/compat/ctc/orange-circuits.png"
data.raw["item"]["pm-fluid-circuit"].icon_mipmaps = 4
data.raw["item"]["pm-fluid-circuit"].localised_name = { "OR-Aspected chip" }

data.raw["technology"]["electronics"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-mini-motor"
  },
  {
    type = "unlock-recipe",
    recipe = "electronic-circuit"
  },
  {
    type = "unlock-recipe",
    recipe = "electronic-parts-1"
  }
}
data.raw["technology"]["advanced-electronics"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-advanced-circuit-breadboard"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-advanced-integrated-circuits"
  },
  {
    type = "unlock-recipe",
    recipe = "electronic-parts-2"
  },
  {
    type = "unlock-recipe",
    recipe = "advanced-circuit"
  },
}
data.raw["technology"]["advanced-electronics-2"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "pm-ferrum-ferric-chloride"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-metal-ferric-chloride"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-processing-breadboard"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-processing-integrated-circuits"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-semiconductor"
  },
  {
    type = "unlock-recipe",
    recipe = "pm-better-transistors"
  },
  {
    type = "unlock-recipe",
    recipe = "electronic-parts-3"
  },
  {
    type = "unlock-recipe",
    recipe = "processing-unit"
  },
}
