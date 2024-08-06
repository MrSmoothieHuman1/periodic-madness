--for all smelting recipes, e.g plates, glass, etc

data:extend({  
{
    type = "recipe",
    name = "pm-nickel-plate",
    subgroup = "pm-nickel-tm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"pm-nickel-ore", 1}},
    result = "pm-nickel-plate"
},
{
    type = "recipe",
    name = "pm-zinc-plate",
    subgroup = "pm-zinc-tm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"pm-zinc-ore", 1}},
    result = "pm-zinc-plate"
},
{
    type = "recipe",
    name = "pm-manganese-plate",
    subgroup = "pm-manganese-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-manganese-ore", 1}},
    result = "pm-manganese-plate"
},
{
    type = "recipe",
    name = "pm-gold-plate",
    subgroup = "pm-gold-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-gold-ore", 1}},
    result = "pm-gold-plate"
},
{
    type = "recipe",
    name = "pm-silver-plate",
    subgroup = "pm-silver-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-silver-ore", 1}},
    result = "pm-silver-plate"
},
{
    type = "recipe",
    name = "pm-titanium-plate",
    subgroup = "pm-titanium-tm",
    order = "f",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-titanium-ore", 1}},
    result = "pm-titanium-plate"
},
{
    type = "recipe",
    name = "pm-tungsten-plate",
    subgroup = "pm-tungsten-tm",
    order = "f",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-tungsten-ore", 1}},
    result = "pm-tungsten-plate"
},
{
    type = "recipe",
    name = "pm-glass-smelting",
    category = "smelting",
    subgroup = "pm-glassing",
    order = "b",
    energy_required = 3.2,
    ingredients = {{"pm-sand", 4}},
    result = "pm-glass-pane"
},

{
    type = "recipe",
    name = "pm-tin-plate",
    subgroup = "pm-tin-ptm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-tin-ore", 1}},
    result = "pm-tin-plate"
},
{
    type = "recipe",
    name = "pm-aluminium-plate",
    subgroup = "pm-aluminium-ptm",
    order = "c",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"pm-aluminium-ore", 1}},
    result = "pm-aluminium-plate"
},
{
    type = "recipe",
    name = "pm-cadnium-plate",
    subgroup = "pm-cadnium-tm",
    order = "c",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-cadnium-ore", 1}},
    result = "pm-cadnium-plate"
},
{
    type = "recipe",
    name = "pm-palladium-plate",
    subgroup = "pm-palladium-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-palladium-ore", 1}},
    result = "pm-palladium-plate"
},
{
    type = "recipe",
    name = "pm-lead-plate",
    subgroup = "pm-lead-ptm",
    order = "f",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-lead-ore", 1}},
    result = "pm-lead-plate"
},
{
    type = "recipe",
    name = "pm-thallium-plate",
    subgroup = "pm-thallium-ptm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-thallium-ore", 1}},
    result = "pm-thallium-plate"
},
{
    type = "recipe",
    name = "pm-indium-plate",
    subgroup = "pm-indium-ptm",
    order = "c",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-indium-ore", 1}},
    result = "pm-indium-plate"
},
{
    type = "recipe",
    name = "pm-platinum-plate",
    subgroup = "pm-platinum-tm",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-platinum-ore", 1}},
    result = "pm-platinum-plate"
},
{
    type = "recipe",
    name = "pm-cobalt-plate",
    subgroup = "pm-cobalt-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    ingredients = {{"pm-cobalt-ore", 1}},
    result = "pm-cobalt-plate"
},
{
    type = "recipe",
    name = "pm-tellurium-plate",
    subgroup = "pm-tellurium-mt",
    order = "e",
    category = "smelting",
    energy_required = 3.2,
    --enabled = false,
    ingredients = {{"pm-tellurium-ore", 1}},
    result = "pm-tellurium-plate"
},

-- alloys 

{
    type = "recipe",
    name = "pm-brass-plate",
    energy_required = 12,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "c",
    enabled = false,
    ingredients = 
    {
        {"copper-plate", 1},
        {"pm-zinc-plate", 1},
    },
    result = "pm-brass-plate",
    result_count = 2
},
{
    type = "recipe",
    name = "pm-stainless-steel-alloy",
    energy_required = 16,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "d",
    enabled = false,
    ingredients =
    {
        {"steel-plate", 2},
        {"pm-manganese-plate", 3},
    },
    results =
    {
        {"pm-stainless-steel-alloy", 2}
    }
},
{
    type = "recipe",
    name = "pm-better-stainless-steel-alloy",
    energy_required = 16,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "e",
    enabled = false,
    ingredients =
    {
        {"steel-plate", 3},
        {"pm-manganese-plate", 4},
        {"pm-chrominum-ore", 4}
    },
    results =
    {
        {"pm-stainless-steel-alloy", 5}
    }
},
{
    type = "recipe",
    name = "pm-better-steel-plate",
    energy_required = 8,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "b",
    enabled = false,
    ingredients =
    {
        {"iron-plate", 4},
        {"pm-manganese-plate", 4},
        {"pm-vanadium-oxide", 4}
    },
    results = 
    {
        {"steel-plate", 4}
    }
},
{
    type = "recipe",
    name = "pm-kasethal-plate",
    energy_required = 24,
    category = "pm-alloying",
    subgroup = "pm-alloys",
    order = "f",
    enabled = false,
    ingredients = 
    {
        {"iron-plate", 4},
        {"pm-chrominum-ore", 3},
        {"pm-aluminium-plate", 2}
    },
    results = 
    {
        {"pm-kasethal-plate", 2}
    }
}
})

data.raw["recipe"]["iron-plate"].subgroup = "pm-iron-tm"
data.raw["recipe"]["iron-plate"].order = "e"
data.raw["recipe"]["copper-plate"].subgroup = "pm-copper-tm"
data.raw["recipe"]["copper-plate"].order = "e"
data.raw["recipe"]["steel-plate"].category = "pm-alloying"
data.raw["recipe"]["steel-plate"].subgroup = "pm-alloys"
data.raw["recipe"]["steel-plate"].order = "a"
data.raw["recipe"]["steel-plate"].energy_required = 8