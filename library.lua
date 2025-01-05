-- Make this a singleton
-- eg, there will only ever be one copy
if ... ~= "library" then
  return require("library")
end

---@alias item_type "fluid"|"item"

---@class PeriodicLibrary
local PM = {}

--MARK: Flag Functions

---Returns whether or not the given flaglist contains the given flag
---@param flagged_obj {flags:string[]?}
---@param flag string
---@return boolean
---@overload fun(flagged_obj:data.SpritePrototype, flag:data.SpriteFlags):boolean
---@overload fun(flagged_obj:data.SpriteParameters, flag:data.SpriteFlags):boolean
---@overload fun(flagged_obj:data.AnimationPrototype, flag:data.SpriteFlags):boolean
---@overload fun(flagged_obj:data.ItemPrototype, flag:data.ItemPrototypeFlags):boolean
---@overload fun(flagged_obj:data.EntityPrototype, flag:data.EntityPrototypeFlags):boolean
---@overload fun(flagged_obj:data.RailSignalPrototype, flag:data.EntityPrototypeFlags):boolean
---@overload fun(flagged_obj:data.TransportBeltConnectablePrototype, flag:data.EntityPrototypeFlags):boolean
function PM.has_flag(flagged_obj, flag)
  -- Does not have the flag if there's no flags
  if not flagged_obj.flags then return false end

  for _, listed_flag in pairs(flagged_obj.flags) do
    if listed_flag == flag then return true end
  end

  return false
end
---Adds the flag if it wasn't already in the list.
---@param flagged_obj {flags:string[]?}
---@param flag string
---@overload fun(flagged_obj:data.SpritePrototype, flag:data.SpriteFlags)
---@overload fun(flagged_obj:data.SpriteParameters, flag:data.SpriteFlags)
---@overload fun(flagged_obj:data.AnimationPrototype, flag:data.SpriteFlags)
---@overload fun(flagged_obj:data.ItemPrototype, flag:data.ItemPrototypeFlags)
---@overload fun(flagged_obj:data.EntityPrototype, flag:data.EntityPrototypeFlags)
---@overload fun(flagged_obj:data.RailSignalPrototype, flag:data.EntityPrototypeFlags)
---@overload fun(flagged_obj:data.TransportBeltConnectablePrototype, flag:data.EntityPrototypeFlags)
function PM.set_flag(flagged_obj, flag)
  if not flagged_obj.flags then
    flagged_obj.flags = {flag}
  else
    if not PM.has_flag(flagged_obj, flag) then
      table.insert(flagged_obj.flags, flag)
    end
  end
end
---Removes every instance of the given flag in the flaglist. Flags should only exist once, but who knows what other mods are doing.
---@param flagged_obj {flags:string[]?}
---@param flag string
---@overload fun(flagged_obj:data.SpritePrototype, flag:data.SpriteFlags)
---@overload fun(flagged_obj:data.SpriteParameters, flag:data.SpriteFlags)
---@overload fun(flagged_obj:data.AnimationPrototype, flag:data.SpriteFlags)
---@overload fun(flagged_obj:data.ItemPrototype, flag:data.ItemPrototypeFlags)
---@overload fun(flagged_obj:data.EntityPrototype, flag:data.EntityPrototypeFlags)
---@overload fun(flagged_obj:data.RailSignalPrototype, flag:data.EntityPrototypeFlags)
---@overload fun(flagged_obj:data.TransportBeltConnectablePrototype, flag:data.EntityPrototypeFlags)
function PM.remove_flag(flagged_obj, flag)
  local flaglist = flagged_obj.flags
  -- Don't do anything if there's no flaglist
  if not flaglist then return end

  ---@type uint[]
  local flag_index = {}
  -- Collect the indexes of the flag we're removing
  for index, listed_flag in pairs(flaglist) do
    if listed_flag == flag then table.insert(flag_index, index) end
  end

  -- Walk backwards to remove the flags.
  -- We'll be shifting the index of the flags ahead of us otherwise.
  for i = #flag_index, 1, -1 do
    table.remove(flaglist, flag_index[i])
  end
end

--MARK: Recipe Functions

---Quickly makes the IngredientPrototype as if by using shorthand
---@param name data.ItemID|data.FluidID
---@param amount number
---@param type item_type?
---@return data.IngredientPrototype
function PM.ingredient(name, amount, type)
  return {
    name = name,
    amount = amount,
    type = type or "item"
  }
end
---Shorthand for an catalyst ingredient
---@param name data.ItemID|data.FluidID
---@param amount number
---@param catalyst number
---@param type item_type?
---@return data.IngredientPrototype
function PM.catalyst_ingredient(name, amount, catalyst, type)
  return {
    name = name,
    amount = amount,
    ignored_by_stats = catalyst,
    type = type or "item"
  }--[[@as data.IngredientPrototype]]
end

---A local function to localize the product function implementaton
---@param name data.ItemID|data.FluidID
---@param type item_type?
---@param amount number?
---@param amount_min number?
---@param amount_max number?
---@param probability number?
---@param ignored_by_stats number?
---@param ignored_by_productivity number?
---@return data.ProductPrototype
local function super_product(name, type, amount, amount_min, amount_max, probability, ignored_by_stats, ignored_by_productivity)
  return {
    name = name,
    type = type or "item",
    amount = amount,
    amount_min = amount_min,
    amount_max = amount_max,
    probability = probability,
    ignored_by_stats = ignored_by_stats,
    ignored_by_productivity = ignored_by_productivity,
  }--[[@as data.ProductPrototype]]
end
---Quickly makes the Prodcut result as if using shorthand
---@param name data.ItemID|data.FluidID
---@param amount number
---@param type item_type?
---@return data.ProductPrototype
function PM.product(name, amount, type)
  return super_product(name, type, amount)
end
---Acts like its own short-hand for a product with a range of possible amounts
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param type item_type?
---@return data.ProductPrototype
function PM.product_range(name, amount_min, amount_max, type)
  return super_product(name, type, nil, amount_min, amount_max)
end
---Acts like its own short-hand for a probabilistic product
---@param name data.ItemID|data.FluidID
---@param amount number
---@param probability number
---@param type item_type?
---@return data.ProductPrototype
function PM.product_chance(name, amount, probability, type)
  return super_product(name, type, amount, nil, nil, probability)
end
---Builds a probabilistic product with a range of output
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param probability number
---@param type item_type?
---@return data.ProductPrototype
function PM.product_range_chance(name, amount_min, amount_max, probability, type)
  return super_product(name, type, nil, amount_min, amount_max, probability)
end
---Builds a product that acts as a catalyst
---@param name data.ItemID|data.FluidID
---@param amount number
---@param catalyst number
---@param type item_type?
---@return data.ProductPrototype
function PM.catalyst(name, amount, catalyst, type)
  return super_product(name, type, amount, nil, nil, nil, catalyst, catalyst)
end
---Builds a catalyst product that has a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param catalyst number
---@param type item_type?
---@return data.ProductPrototype
function PM.catalyst_range(name, amount_min, amount_max, catalyst, type)
  return super_product(name, type, nil, amount_min, amount_max, nil, catalyst, catalyst)
end
---Builds a catalyst product that has a chance of being returned
---@param name data.ItemID|data.FluidID
---@param amount number
---@param probability number
---@param catalyst number
---@param type item_type?
---@return data.ProductPrototype
function PM.catalyst_chance(name, amount, probability, catalyst, type)
  return super_product(name, type, amount, nil, nil, probability, catalyst, catalyst)
end
---Builds a catalyst product that has a chance to return a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param probability number
---@param catalyst number
---@param type item_type?
---@return data.ProductPrototype
function PM.catalyst_range_chance(name, amount_min, amount_max, probability, catalyst, type)
  return super_product(name, type, nil, amount_min, amount_max, probability, catalyst, catalyst)
end
---Builds a product that is ignored by stats
---@param name data.ItemID|data.FluidID
---@param amount number
---@param ignored_by_stats number
---@param type item_type?
---@return data.ProductPrototype
function PM.ignored(name, amount, ignored_by_stats, type)
  return super_product(name, type, amount, nil, nil, nil, ignored_by_stats)
end
---Builds an ignorable by stats product that has a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param ignored_by_stats number
---@param type item_type?
---@return data.ProductPrototype
function PM.ignored_range(name, amount_min, amount_max, ignored_by_stats, type)
  return super_product(name, type, nil, amount_min, amount_max, nil, ignored_by_stats)
end
---Builds an ignorable by stats product that has a chance of being returned
---@param name data.ItemID|data.FluidID
---@param amount number
---@param probability number
---@param ignored_by_stats number
---@param type item_type?
---@return data.ProductPrototype
function PM.ignored_chance(name, amount, probability, ignored_by_stats, type)
  return super_product(name, type, amount, nil, nil, probability, ignored_by_stats)
end
---Builds an ignorable by stats product that has a chance to return a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param probability number
---@param ignored_by_stats number
---@param type item_type?
---@return data.ProductPrototype
function PM.ignored_range_chance(name, amount_min, amount_max, probability, ignored_by_stats, type)
  return super_product(name, type, nil, amount_min, amount_max, probability, ignored_by_stats)
end
-- MARK: Entity Functions

---A shorthand for the LootItem
---@param item data.ItemID
---@param count_min number? Default is `1`
---@param count_max number? must be `> 0`, Default is `1`
---@param probability number? must be between `0` and `1`, Default is `1`
---@return data.LootItem
function PM.loot(item, count_min, count_max, probability)
  return {
    item = item,
    count_min = count_min,
    count_max = count_max,
    probability = probability,
  } --[[@as data.LootItem]]
end

-- MARK: Technology Functions

---Shorthand for the effect of unlocking a recipe
---@param recipe data.RecipeID
---@return data.UnlockRecipeModifier
function PM.unlock_recipe(recipe)
  return {
    type = "unlock-recipe",
    recipe = recipe
  }--[[@as data.UnlockRecipeModifier]]
end
---Shorthand for the effect of unlocking a space location (aka planet)
---@param location data.SpaceLocationID
---@return data.UnlockSpaceLocationModifier
function PM.unlock_location(location)
  return {
    type = "unlock-space-location",
    space_location = location
  }--[[@as data.UnlockSpaceLocationModifier]]
end
---Shorthand for the effect of unlocking a quality level
---@param quality data.QualityID
---@return data.UnlockQualityModifier
function PM.unlock_quality(quality)
  return {
    type = "unlock-quality",
    quality = quality
  }--[[@as data.UnlockQualityModifier]]
end
---Shorthand for giving an item
---@param item data.ItemID
---@param count int?
---@return data.GiveItemModifier
function PM.give_item(item, count)
  return {
    type = "give-item",
    item = item,
    count = count
  } --[[@as data.GiveItemModifier]]
end
---@alias SimpleModifierTypes
---| "artillery-range"
---| "beacon-distribution"
---| "belt-stack-size-bonus"
---| "bulk-inserter-capacity-bonus"
---| "cargo-landing-pad-count"
---| "character-build-distance"
---| "character-crafting-speed"
---| "character-health-bonus"
---| "character-inventory-slots-bonus"
---| "character-item-drop-distance"
---| "character-item-pickup-distance"
---| "character-logistic-trash-slots"
---| "character-loot-pickup-distance"
---| "character-mining-speed"
---| "character-reach-distance"
---| "character-resource-reach-distance"
---| "character-running-speed"
---| "deconstruction-time-to-live"
---| "follower-robot-lifetime"
---| "inserter-stack-size-bonus"
---| "laboratory-productivity"
---| "laboratory-speed"
---| "max-failed-attempts-per-tick-per-construction-queue"
---| "max-successful-attempts-per-tick-per-construction-queue"
---| "maximum-following-robots-count"
---| "mining-drill-productivity-bonus"
---| "train-braking-force-bonus"
---| "worker-robot-battery"
---| "worker-robot-speed"
---| "worker-robot-storage"
---@alias SimpleModifiers
---| data.ArtilleryRangeModifier
---| data.BeaconDistributionModifier
---| data.BeltStackSizeBonusModifier
---| data.BulkInserterCapacityBonusModifier
---| data.CargoLandingPadLimitModifier
---| data.CharacterBuildDistanceModifier
---| data.CharacterCraftingSpeedModifier
---| data.CharacterHealthBonusModifier
---| data.CharacterInventorySlotsBonusModifier
---| data.CharacterItemDropDistanceModifier
---| data.CharacterItemPickupDistanceModifier
---| data.CharacterLogisticTrashSlotsModifier
---| data.CharacterLootPickupDistanceModifier
---| data.CharacterMiningSpeedModifier
---| data.CharacterReachDistanceModifier
---| data.CharacterResourceReachDistanceModifier
---| data.CharacterRunningSpeedModifier
---| data.DeconstructionTimeToLiveModifier
---| data.FollowerRobotLifetimeModifier
---| data.InserterStackSizeBonusModifier
---| data.LaboratoryProductivityModifier
---| data.LaboratorySpeedModifier
---| data.MaxFailedAttemptsPerTickPerConstructionQueueModifier
---| data.MaxSuccessfulAttemptsPerTickPerConstructionQueueModifier
---| data.MaximumFollowingRobotsCountModifier
---| data.MiningDrillProductivityBonusModifier
---| data.TrainBrakingForceBonusModifier
---| data.WorkerRobotBatteryModifier
---| data.WorkerRobotSpeedModifier
---| data.WorkerRobotStorageModifier
---Shorthand for technology modifiers
---@param property SimpleModifierTypes
---@param modifier number
---@return SimpleModifiers
function PM.modify(property, modifier)
  return {
    type = property,
    modifier = modifier
  } --[[@as SimpleModifiers]]
end
---@alias BoolModifierTypes
---| "character-logistic-requests"
---| "unlock-circuit-network"
---| "cliff-deconstruction-enabled"
---| "create-ghost-on-entity-death"
---| "mining-with-fluid"
---| "rail-planner-allow-elevated-rails"
---| "rail-support-on-deep-oil-ocean"
---| "unlock-space-platforms"
---| "vehicle-logistics"
---@alias BoolModifiers
---| data.CharacterLogisticRequestsModifier
---| data.CircuitNetworkModifier
---| data.CliffDeconstructionEnabledModifier
---| data.CreateGhostOnEntityDeathModifier
---| data.MiningWithFluidModifier
---| data.RailPlannerAllowElevatedRailsModifier
---| data.RailSupportOnDeepOilOceanModifier
---| data.SpacePlatformsModifier
---| data.VehicleLogisticsModifier
---Shorthand for enabling features
---@param type BoolModifierTypes
---@return BoolModifiers
function PM.enable(type)
  return {
    type = type,
    modifier = true
  } --[[@as BoolModifiers]]
end
---Shorthand for disabling features
---@param type BoolModifierTypes
---@return BoolModifiers
function PM.disable(type)
  return {
    type = type,
    modifier = false
  } --[[@as BoolModifiers]]
end
---Shorthand for changing the productivity of a recipe
---@param recipe data.RecipeID
---@param change data.EffectValue
---@return data.ChangeRecipeProductivityModifier
function PM.modify_recipe_productivity(recipe, change)
  return {
    type = "change-recipe-productivity",
    recipe = recipe,
    change = change
  } --[[@as data.ChangeRecipeProductivityModifier]]
end
---Shorthand for modifying the damage or shooting speed of ammo
---@param type "ammo-damage"|"gun-speed"
---@param ammo_category data.AmmoCategoryID
---@param modifier number
---@return data.AmmoDamageModifier|data.GunSpeedModifier
function PM.modify_ammo(type, ammo_category, modifier)
  return {
    type = type,
    ammo_category = ammo_category,
    modifier = modifier
  } --[[@as data.AmmoDamageModifier|data.GunSpeedModifier]]
end
---Shorthand for modifying the turret damage(?)
---@param turret_id data.EntityID
---@param modifier number
---@return data.TurretAttackModifier
function PM.modify_turret(turret_id, modifier)
  return {
    type = "turret-attack",
    turret_id = turret_id,
    modifier = modifier
  } --[[@as data.TurretAttackModifier]]
end
---Shorthand for an dummy modifier
---@return data.NothingModifier
function PM.modify_nothing()
  return {
    type = "nothing"
  } --[[@as data.NothingModifier]]
end

--MARK: Module Effects

---Returns an effect type limitation of every effect
---@return data.EffectTypeLimitation
function PM.all_effects()
  return {
    "speed",
    "productivity",
    "consumption",
    "pollution",
    "quality",
  }--[[@as data.EffectTypeLimitation]]
end

---Returns all effects except the given ones
---@param ... data.EffectTypeLimitation
---@return data.EffectTypeLimitation[]
function PM.all_effects_but(...)
  ---@type table<data.EffectTypeLimitation,true>
  local effects = {
    ["speed"] = true,
    ["productivity"] = true,
    ["consumption"] = true,
    ["pollution"] = true,
    ["quality"] = true,
  }
  for _, effect in pairs({...}--[[@as table<int,data.EffectTypeLimitation>]]) do
    effects[effect] = nil
  end
  ---@type data.EffectTypeLimitation[]
  local limitation, count = {}, 0
  for effect in pairs(effects) do
    count = count + 1
    limitation[count] = effect
  end

  return limitation
end

---Returns an array of the given effects
---
---Only exists to get intellisense to help you fill the values,
---as well as to match the other functions
---@param ... data.EffectTypeLimitation
---@return data.EffectTypeLimitation[]
function PM.effects(...)
  return {...}
end

--MARK: Global variables:

---@class PM.beltTier
---@field [1] string  Belt
---@field [2] string  Underground
---@field [3] string  Splitter
---@field [4] string? Loader

---@type PM.beltTier[]
PM.belts = {
  {"transport-belt",                  "underground-belt",                 "splitter",                 "loader"        },
  {"fast-transport-belt",             "fast-underground-belt",            "fast-splitter",            "fast-loader"   },
  {"pm-advanced-transport-belt",      "pm-advanced-underground-belt",     "pm-advanced-splitter",     nil             },
  {"express-transport-belt",          "express-underground-belt",         "express-splitter",         "express-loader"},
  {"pm-high-density-transport-belt",  "pm-high-density-underground-belt", "pm-high-density-splitter", nil             },
}

return PM