if settings.startup["pm-zirconium-pants"].value then
  data.raw["technology"]["pm-zirconium-processing"].effects =
  {
    {
      type = "unlock-recipe",
      recipe = "pm-zirconium-leeching"
    },
    {
      type = "unlock-recipe",
      recipe = "pm-zirconium-sand-filtering"
    },
    {
      type = "unlock-recipe",
      recipe = "pm-zirconia"
    },
    {
      type = "unlock-recipe",
      recipe = "pm-zirconium"
    },
    {
      type = "unlock-recipe",
      recipe = "pm-creosote"
    },
    {
      type = "unlock-recipe",
      recipe = "pm-crucible"
    },
    {
      type = "unlock-recipe",
      recipe = "pm-zirconium-pants"
    }
  }
  data.raw["recipe"]["power-armor"].ingredients =
  {
    { "pm-zirconium-pants",       1 },
    { "processing-unit",          30 },
    { "electric-engine-unit",     20 },
    { "pm-lightweight-framing",   49 + 1 },
    { "pm-stainless-steel-alloy", 20 },
    { "pm-cadnium-plate",         24 },
    { "pm-lead-plate",            12 }
  }
end
