-- i will probably never have a use for this file apart from one, maybe two recipes - but it felt weird putting the recipes in the normal recipe file

data:extend({

  {
    type = "recipe",
    name = "pm-electric-steam",
    energy_required = 1,
    enabled = true,
    hidden = true,
    hidden_in_factoriopedia = true,
    category = "pm-steamed-hams",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("water", 6, "fluid"),
    },
    results =
    {
      PM.product("steam", 60, "fluid")
    }
  },
})