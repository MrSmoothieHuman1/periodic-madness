if not mods["bzchlorine"] then return end -- Leave if not relevant
local PM = require("__periodic-madness__/library")

data.raw["recipe"]["pm-seawater-evaporation"].ingredients =
{
  PM.ingredient("pm-seawater", 50, "fluid")
}
data.raw["recipe"]["pm-seawater-evaporation"].results =
{
  PM.product("salt", 5),
  PM.product("water", 25, "fluid"),
}
data.raw["recipe"]["pm-seawater-desaltination"].ingredients =
{
  PM.ingredient("pm-seawater", 100, "fluid")
}
data.raw["recipe"]["pm-seawater-desaltination"].results =
{
  PM.product("water", 50, "fluid"),
  PM.product("salt", 10),
}

data.raw["technology"]["chlorine-processing"].effects =
{
  PM.unlock_recipe("pm-seawater-evaporation"),
  PM.unlock_recipe("pm-salt-electroylsis"),
  PM.unlock_recipe("pm-hydrochloric-acid")
}
data.raw["technology"]["chlorine-processing"].unit =
{
  count = 10,
  ingredients =
  {
    PM.ingredient("automation-science-pack", 1)
  },
  time = 5
}
data.raw["technology"]["chlorine-processing"].prerequisites = {}
data.raw["technology"]["pm-ezekiel-ore-purifying"].prerequisites = { "automation", "chlorine-processing" }

data.raw["recipe"]["chlorine"].hidden = true

data:extend({
  {
    type = "technology",
    name = "pm-ferric-chloride-processing",
    icon_size = 64,
    icon = "__bzchlorine__/graphics/icons/ferric-chloride.png",
    mipmap_count = 4,
    effects =
    {
      PM.unlock_recipe("ferric-chloride"),
      PM.unlock_recipe("ferric-chloride-hcl"),
    },
    prerequisites = { "chlorine-processing" },
    unit =
    {
      count = 25,
      ingredients =
      {
        PM.ingredient("automation-science-pack", 1)
      },
      time = 10
    }
  },
  {
    type = "technology",
    name = "pm-advanced-chlorine-processing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/hydrochloric-acid.png",
    effects =
    {
      PM.unlock_recipe("hydrogen-chloride-salt"),
    },
    prerequisites = { "chlorine-processing", "oil-processing" },
    unit =
    {
      count = 25,
      ingredients =
      {
        PM.ingredient("automation-science-pack", 1),
        PM.ingredient("logistic-science-pack", 1),
        PM.ingredient("pm-advanced-advanced-transition-metal-science-pack", 1)
      },
      time = 10
    }
  },
})
data.raw["technology"]["pm-advanced-transition-metal-refining"].prerequisites =
{
  "pm-mercury-processing",
  "pm-ferric-chloride-processing",
  "pm-transition-metal-refining"
}

data.raw["recipe"]["pm-water-acifying"].ingredients =
{
  PM.ingredient("water", 50, "fluid"),
  PM.ingredient("ferric-chloride", 2),
  PM.ingredient("sulfur", 3)
}
data.raw["recipe"]["ferric-chloride"].ingredients =
{
  PM.ingredient("pm-ferrum", 2),
  PM.ingredient("pm-chlorine", 10, "fluid")
}
data.raw["recipe"]["ferric-chloride-hcl"].ingredients =
{
  PM.ingredient("pm-ferrum", 4),
  PM.ingredient("pm-hydrochloric-acid", 30, "fluid")
}
data.raw["recipe"]["hydrogen-chloride-salt"].ingredients =
{
  PM.ingredient("salt", 2),
  PM.ingredient("pm-hydrogen", 10),
  PM.ingredient("sulfuric-acid", 5, "fluid")
}
data.raw["recipe"]["ferric-chloride"].category = "pm-acids"
data.raw["recipe"]["ferric-chloride-hcl"].category = "pm-acids"
data.raw["recipe"]["hydrogen-chloride-salt"].results =
{
  PM.product("pm-hydrochloric-acid", 10, "fluid"),
  PM.product_range("pm-oxygen", 2, 5, "item")
}
data.raw["recipe"]["hydrogen-chloride-salt"].icon_size = 64
data.raw["recipe"]["hydrogen-chloride-salt"].icon =
"__periodic-madness__/graphics/icons/recipes/hydrochloric-acid-salt.png"
data.raw["recipe"]["accumulator"].ingredients =
{
  PM.ingredient("pm-vanadium-redox-battery", 4),
  PM.ingredient("pm-basic-wiring", 5),
  PM.ingredient("pm-heavyweight-framing", 8),
  PM.ingredient("ferric-chloride", 2)
}

data.raw["technology"]["pm-chlorine-processing"] = nil
