data:extend({

  {
    type = "recipe",
    name = "pm-arsenopyrite-leeching",
    enabled = false,
    energy_required = 8,
    category = "pm-acids",
    subgroup = "pm-arsenic-mt",
    order = "a",
    ingredients = 
    {
      {"pm-metalloid-ore", 16},
      {type = "fluid", name = "pm-chromic-acid", amount = 20}
    },
    results = 
    {
      {"pm-arsenopyrite", 4}
    }
  },
  {
    type = "recipe",
    name = "pm-arsenopyrite-sublimation",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-arsenic-mt",
    order = "b",
    ingredients = 
    {
      {"pm-arsenopyrite", 3},
      {type = "fluid", name = "pm-oxygen-gas", amount = 25},
      {"pm-vanadium-oxide-catalyst", 2}
    },
    results = 
    {
      {
        name = "pm-impure-arsenic",
        amount_min = 2,
        amount__max = 6
      },
      {
        name = "pm-catalyst-container",
        amount_min = 1,
        amount__max = 2
      },
    }
  },
  {
    type = "recipe",
    name = "pm-arsenic-purifying",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-arsenic-mt",
    order = "c",
    ingredients = 
    {
      {"pm-impure-arsenic", 4},
      {type = "fluid", name = "pm-molten-lead", amount = 12.5}
    },
    results = 
    {
      {"pm-arsenic-oxide", 6},
      {
        name = "pm-ferrum",
        amount_min = 2,
        amount_max = 4
      },
      {
        name = "pm-impure-lead-ore",
        amount_min = 0,
        amount_max = 3
      },
    }
  },
  {
    type = "recipe",
    name = "pm-arsine",
    enabled = false,
    energy_required = 4,
    category = "pm-washing",
    subgroup = "pm-arsenic-mt",
    order = "d",
    ingredients = 
    {
      {"pm-arsenic-oxide", 3},
      {"pm-zinc-plate", 12}, --catalyst for hard mode
      {type = "fluid", name = "pm-hydrochloric-acid", amount = 24}
    },
    results = 
    {
      {type = "fluid", name = "pm-arsine", amount = 5},
      {
        type = "fluid",
        name = "water",
        amount_min = 12,
        amoun_max = 20
      }
    }
  },
  {
    type = "recipe",
    name = "pm-arsine-seperation",
    enabled = false,
    energy_required = 8,
    category = "chemistry",
    subgroup = "pm-arsenic-mt",
    order = "e",
    ingredients =
    {
      {type = "fluid", name = "pm-arsine", amount = 10},
    },
    results = 
    {
      {
        name = "pm-arsenic",
        amount_min = 6,
        amount_max = 10
      },
      {type = "fluid", name = "pm-hydrogen-gas", amount = 30}
    }
  }

})