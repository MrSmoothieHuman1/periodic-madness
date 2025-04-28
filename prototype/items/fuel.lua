--fuels

data:extend({

  {
    type = "item",
    name = "pm-empty-fuel-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/empty-fuel-canister.png",
    subgroup = "pm-fuels",
    order = "b",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-diesel-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/diesel-fuel-canister.png",
    fuel_value = "12MJ",
    fuel_category = "pm-oil-canisters",
    fuel_acceleration_multiplier = 1.3,
    fuel_top_speed_multiplier = 1.3,
    subgroup = "pm-fuels",
    order = "c",
    burnt_result = "pm-empty-fuel-canister",
    stack_size = 100
  },
  {
    type = "item",
    name = "pm-petrol-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/petrol-fuel-canister.png",
    fuel_value = "3MJ",
    fuel_category = "pm-oil-canisters",
    fuel_acceleration_multiplier = 1.75,
    fuel_top_speed_multiplier = 2,
    subgroup = "pm-fuels",
    order = "d",
    burnt_result = "pm-empty-fuel-canister",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-kerosene-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/kerosene-fuel-canister.png",
    fuel_value = "24MJ",
    fuel_category = "pm-oil-canisters",
    fuel_acceleration_multiplier = 1,
    fuel_top_speed_multiplier = 1.05,
    subgroup = "pm-fuels",
    order = "e",
    burnt_result = "pm-empty-fuel-canister",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-naptha-canister",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/naptha-fuel-canister.png",
    fuel_value = "30MJ",
    fuel_category = "pm-oil-canisters",
    fuel_acceleration_multiplier = 0.75,
    fuel_top_speed_multiplier = 0.95,
    subgroup = "pm-fuels",
    order = "f",
    burnt_result = "pm-empty-fuel-canister",
    stack_size = 150
  },
  {
    type = "item",
    name = "pm-hydrogen-fuel",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/hydrogen-fuel.png",
    subgroup = "pm-fuels",
    order = "a",
    fuel_category = "pm-oxidiser",
    fuel_value = "64MJ",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-polonium-fuel-rod",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/polonium-fuel-rod.png",
    subgroup = "pm-fuel-rods",
    order = "c",
    fuel_category = "pm-fuel-rods",
    burnt_result = "pm-spent-fuel-rod",
    fuel_value = "25MJ",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-strontium-fuel-rod",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/strontium-fuel-rod.png",
    subgroup = "pm-fuel-rods",
    order = "c",
    fuel_category = "pm-strontium",
    burnt_result = "pm-spent-fuel-rod",
    fuel_value = "25MJ",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-empty-fuel-rod",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/empty-fuel-rod.png",
    subgroup = "pm-fuel-rods",
    order = "a",
    stack_size = 10
  },
  {
    type = "item",
    name = "pm-spent-fuel-rod",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/spent-fuel-rod.png",
    subgroup = "pm-fuel-rods",
    order = "b",
    stack_size = 10
  },
}--[[@as data.ItemPrototype[] ]])

data.raw["item"]["rocket-fuel"].subgroup = "pm-fuels"
data.raw["item"]["rocket-fuel"].order = "g"
data.raw["recipe"]["rocket-fuel"].subgroup = "pm-fuels"
data.raw["recipe"]["rocket-fuel"].order = "g"
data.raw["item"]["nuclear-fuel"].subgroup = "pm-fuels"
data.raw["item"]["nuclear-fuel"].order = "h"

table.insert(data.raw["inserter"]["burner-inserter"].energy_source.fuel_categories, "pm-oil-canisters")
table.insert(data.raw["car"]["car"].energy_source.fuel_categories, "pm-oil-canisters")
table.insert(data.raw["car"]["tank"].energy_source.fuel_categories, "pm-oil-canisters")
table.insert(data.raw["boiler"]["boiler"].energy_source.fuel_categories, "pm-oil-canisters")
table.insert(data.raw["locomotive"]["locomotive"].energy_source.fuel_categories, "pm-oil-canisters")
