-- Make this a singleton
-- eg, there will only ever be one copy
if ... ~= "library" then
  return require("library")
end

---@class PeriodicLibraryGlobals
local PM_Global = _ENV.__PM or {}
_ENV.__PM = PM_Global

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
---@param index uint32?
---@overload fun(name:data.ItemID,amount:number,type:"item"|nil):data.ItemIngredientPrototype
---@overload fun(name:data.FluidID,amount:number,type:"fluid",index:uint32):data.FluidIngredientPrototype
---@return data.IngredientPrototype
function PM.ingredient(name, amount, type, index)
  return {
    name = name,
    amount = amount,
    type = type or "item",
    fluidbox_index = index
  }--[[@as data.IngredientPrototype]]
end
---Shorthand for an catalyst ingredient
---@param name data.ItemID|data.FluidID
---@param amount number
---@param catalyst number
---@param type item_type?
---@param index uint32?
---@return data.IngredientPrototype
---@overload fun(name:data.ItemID,amount:number,catalyst:number,type:"item"|nil):data.ItemIngredientPrototype
---@overload fun(name:data.FluidID,amount:number,catalyst:number,type:"fluid",index:uint32):data.FluidIngredientPrototype
function PM.catalyst_ingredient(name, amount, catalyst, type, index)
  return {
    name = name,
    amount = amount,
    ignored_by_stats = catalyst,
    type = type or "item",
    fluidbox_index = index
  }--[[@as data.IngredientPrototype]]
end

---A local function to localize the product function implementaton
---@param name data.ItemID|data.FluidID
---@param type "research-progress"|item_type?
---@param index uint32?
---@param amount number?
---@param amount_min number?
---@param amount_max number?
---@param probability number?
---@param ignored_by_stats number?
---@param ignored_by_productivity number?
---@return data.ProductPrototype
local function super_product(name, type, index, amount, amount_min, amount_max, probability, ignored_by_stats, ignored_by_productivity)
  if probability and probability <= 0.0 then error("Probability is 0. Did you mean to do this?") end
  return {
    name = name,
    type = type or "item",
    fluidbox_index = index,
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
---@param type "research-progress"|item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.product(name, amount, type, index)
  return super_product(name, type, index, amount)
end
---Acts like its own short-hand for a product with a range of possible amounts
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.product_range(name, amount_min, amount_max, type, index)
  return super_product(name, type, index, nil, amount_min, amount_max)
end
---Acts like its own short-hand for a probabilistic product
---@param name data.ItemID|data.FluidID
---@param amount number
---@param probability number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.product_chance(name, amount, probability, type, index)
  return super_product(name, type, index, amount, nil, nil, probability)
end
---Builds a probabilistic product with a range of output
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param probability number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.product_range_chance(name, amount_min, amount_max, probability, type, index)
  return super_product(name, type, index, nil, amount_min, amount_max, probability)
end
---Builds a product that acts as a catalyst
---@param name data.ItemID|data.FluidID
---@param amount number
---@param catalyst number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.catalyst(name, amount, catalyst, type, index)
  return super_product(name, type, index, amount, nil, nil, nil, catalyst, catalyst)
end
---Builds a catalyst product that has a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param catalyst number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.catalyst_range(name, amount_min, amount_max, catalyst, type, index)
  return super_product(name, type, index, nil, amount_min, amount_max, nil, catalyst, catalyst)
end
---Builds a catalyst product that has a chance of being returned
---@param name data.ItemID|data.FluidID
---@param amount number
---@param probability number
---@param catalyst number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.catalyst_chance(name, amount, probability, catalyst, type, index)
  return super_product(name, type, index, amount, nil, nil, probability, catalyst, catalyst)
end
---Builds a catalyst product that has a chance to return a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param probability number
---@param catalyst number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.catalyst_range_chance(name, amount_min, amount_max, probability, catalyst, type, index)
  return super_product(name, type, index, nil, amount_min, amount_max, probability, catalyst, catalyst)
end
---Builds a product that is ignored by stats
---@param name data.ItemID|data.FluidID
---@param amount number
---@param ignored_by_stats number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.ignored(name, amount, ignored_by_stats, type, index)
  return super_product(name, type, index, amount, nil, nil, nil, ignored_by_stats)
end
---Builds an ignorable by stats product that has a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param ignored_by_stats number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.ignored_range(name, amount_min, amount_max, ignored_by_stats, type, index)
  return super_product(name, type, index, nil, amount_min, amount_max, nil, ignored_by_stats)
end
---Builds an ignorable by stats product that has a chance of being returned
---@param name data.ItemID|data.FluidID
---@param amount number
---@param probability number
---@param ignored_by_stats number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.ignored_chance(name, amount, probability, ignored_by_stats, type, index)
  return super_product(name, type, index, amount, nil, nil, probability, ignored_by_stats)
end
---Builds an ignorable by stats product that has a chance to return a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param probability number
---@param ignored_by_stats number
---@param type item_type?
---@param index uint32?
---@return data.ProductPrototype
function PM.ignored_range_chance(name, amount_min, amount_max, probability, ignored_by_stats, type, index)
  return super_product(name, type, index, nil, amount_min, amount_max, probability, ignored_by_stats)
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
---@param hidden? boolean
---@return data.UnlockRecipeModifier
function PM.unlock_recipe(recipe, hidden)
  return {
    type = "unlock-recipe",
    recipe = recipe,
    hidden = hidden,
  }--[[@as data.UnlockRecipeModifier]]
end
---Shorthand for the effect of unlocking a space location (aka planet)
---@param location data.SpaceLocationID
---@param hidden? boolean
---@return data.UnlockSpaceLocationModifier
function PM.unlock_location(location, hidden)
  return {
    type = "unlock-space-location",
    space_location = location,
    hidden = hidden,
  }--[[@as data.UnlockSpaceLocationModifier]]
end
---Shorthand for the effect of unlocking a quality level
---@param quality data.QualityID
---@param hidden? boolean
---@return data.UnlockQualityModifier
function PM.unlock_quality(quality, hidden)
  return {
    type = "unlock-quality",
    quality = quality,
    hidden = hidden,
  }--[[@as data.UnlockQualityModifier]]
end
---Shorthand for giving an item
---@param item data.ItemID
---@param count int?
---@param hidden? boolean
---@return data.GiveItemModifier
function PM.give_item(item, count, hidden)
  return {
    type = "give-item",
    item = item,
    count = count,
    hidden = hidden,
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
---@param hidden? boolean
---@return SimpleModifiers
function PM.modify(property, modifier, hidden)
  return {
    type = property,
    modifier = modifier,
    hidden = hidden,
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
---@param hidden? boolean
---@return BoolModifiers
function PM.enable(type, hidden)
  return {
    type = type,
    modifier = true,
    hidden = hidden,
  } --[[@as BoolModifiers]]
end
---Shorthand for disabling features
---@param type BoolModifierTypes
---@param hidden? boolean
---@return BoolModifiers
function PM.disable(type, hidden)
  return {
    type = type,
    modifier = false,
    hidden = hidden,
  } --[[@as BoolModifiers]]
end
---Shorthand for changing the productivity of a recipe
---@param recipe data.RecipeID
---@param change data.EffectValue
---@param hidden? boolean
---@return data.ChangeRecipeProductivityModifier
function PM.modify_recipe_productivity(recipe, change, hidden)
  return {
    type = "change-recipe-productivity",
    recipe = recipe,
    change = change,
    hidden = hidden,
  } --[[@as data.ChangeRecipeProductivityModifier]]
end
---Shorthand for modifying the damage or shooting speed of ammo
---@param type "ammo-damage"|"gun-speed"
---@param ammo_category data.AmmoCategoryID
---@param modifier number
---@param hidden? boolean
---@return data.AmmoDamageModifier|data.GunSpeedModifier
function PM.modify_ammo(type, ammo_category, modifier, hidden)
  return {
    type = type,
    ammo_category = ammo_category,
    modifier = modifier,
    hidden = hidden,
  } --[[@as data.AmmoDamageModifier|data.GunSpeedModifier]]
end
---Shorthand for modifying the turret damage(?)
---@param turret_id data.EntityID
---@param modifier number
---@param hidden? boolean
---@return data.TurretAttackModifier
function PM.modify_turret(turret_id, modifier, hidden)
  return {
    type = "turret-attack",
    turret_id = turret_id,
    modifier = modifier,
    hidden = hidden,
  } --[[@as data.TurretAttackModifier]]
end
---Shorthand for an dummy modifier
---@param hidden? boolean
---@return data.NothingModifier
function PM.modify_nothing(hidden)
  return {
    type = "nothing",
    hidden = hidden,
  } --[[@as data.NothingModifier]]
end

--MARK: Custom Modifiers

---@type table<string, data.IconData[]>
local custom_modifiers = PM_Global.custom_modifiers or {}
PM_Global.custom_modifiers = custom_modifiers

---Defines the icon of the custom modifier when later used by `PM.custom_modifier`
---@see PeriodicLibrary.custom_modifier
---@param name string
---@param icons data.IconData[]
function PM.define_modifier(name, icons)
  if custom_modifiers[name] then
    error("Custom modifier already defined: "..name)
  end

  custom_modifiers[name] = icons
end

---Shorthand for a custom modifier. To have an icon defined, please use `PM.define_modifier`
---@see PeriodicLibrary.define_modifier
---@param name string
---@param param number
---@param hidden? boolean
---@return data.NothingModifier
function PM.custom_modifier(name, param, hidden)
  local icons = custom_modifiers[name]
  if not icons then log("Custom modifer was used without defining an icon for it: "..name) end
  return {
    type = "nothing",
    effect_description = {"pm-modifier."..name, tostring(param)},
    hidden = hidden,
    icons = icons,
  }--[[@as data.NothingModifier]]
end

---Go over the effects of a technology and add up the numbers of the given custom modifier.
---@param technology LuaTechnology|LuaTechnologyPrototype
---@return number change
function PM.get_custom_modification(name, technology)
  if technology.object_name == "LuaTechnology" then
    technology = technology.prototype
  end
  local effects = technology.effects
  local locale_key = "pm-modifier."..name

  local change = 0
  for _, modifier in pairs(effects) do
    if modifier.type == "nothing"
    and modifier.effect_description[1] == locale_key then
      change = change + tonumber(modifier.effect_description[2])
    end
  end

  return change
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
  for _, effect in pairs({...}) do
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

--MARK: Module Categories

---@generic T : string
---@param array T[]
---@return table<T,true>
local function array_to_lookup(array)
  local lookup = {}
  for _, item in pairs(array) do
    lookup[item] = true
  end
  return lookup
end

---@param blacklist? data.ModuleCategoryID[]
---@return data.ModuleCategoryID[]
function PM.all_module_categories(blacklist)
  local blacklist_lookup = array_to_lookup(blacklist or {})

  local list, count = {}, 0
  for category, _ in pairs(data.raw["module-category"]) do
    if not blacklist_lookup[category] then
      count = count + 1
      list[count] = category
    end
  end

  return list
end

---@param list data.ModuleCategoryID[]
---@param blacklist data.ModuleCategoryID[]
---@return data.ModuleCategoryID[]
function PM.remove_module_categories(list, blacklist)
  if not list then
    return PM.all_module_categories(blacklist)
  end

  local blacklist_lookup = array_to_lookup(blacklist)
  for i = #list, 1, -1 do
    if blacklist_lookup[list[i]] then
      table.remove(list, i)
    end
  end

  return list
end

---@param list? data.ModuleCategoryID[]
---@param new_categories data.ModuleCategoryID[]
---@return data.ModuleCategoryID[]
function PM.add_module_categories(list, new_categories)
  if not list then
    return PM.all_module_categories()
  end

  local whitelist_lookup = array_to_lookup(new_categories)
  for _, category in pairs(list) do
    whitelist_lookup[category] = nil
  end

  local count = #list
  for category in pairs(whitelist_lookup) do
    count = count + 1
    list[count] = category
  end
  return list
end

--MARK: Trigger

---Will create an instant and direct script trigger if not given a trigger
---
---If given a trigger, it will try and find a direct trigger to add a delivery to. Otherwise, will add a trigger
---
---You *have* to overwrite where you got the trigger from, as it converts everything into the array format
---@param effect_id string
---@param triggers data.Trigger?
---@return data.Trigger
---@nodiscard
function PM.script_trigger(effect_id, triggers)
  -- Return trigger directly if not given one
  if not triggers then
    return {{
      type = "direct",
      action_delivery = PM.script_trigger_delivery(effect_id)
    }--[[@as data.DirectTriggerItem]]}
  end

  -- Make sure it's an array
  if triggers.type then
    triggers = {triggers}
  end

  -- Find a direct trigger to add to the delivery
  local has_direct = false
  for _, trigger in pairs(triggers) do
    if trigger.type == "direct" then
      has_direct = true
      trigger.action_delivery = PM.script_trigger_delivery(effect_id, trigger.action_delivery)
      break
    end
  end

  -- Create new trigger item if there was no direct
  if not has_direct then
    triggers[#triggers+1] = {
      type = "direct",
      action_delivery = PM.script_trigger_delivery(effect_id)
    }
  end

  -- return triggers to overwrite
  return triggers
end

---Will create an instant script delivery if not given a delivery
---
---If given a delivery, it will try and find an instant delivery to add an effects to. Otherwise, will add an instant script delivery
---
---You *have* to overwrite where you got the delivery from, as it converts everything into the array format
---@param effect_id string
---@param deliveries data.TriggerDelivery[]|data.TriggerDelivery?
---@return data.TriggerDelivery[]
---@nodiscard
function PM.script_trigger_delivery(effect_id, deliveries)
  -- Return delivery directly if not given one
  if not deliveries then
    return {{
      type = "instant",
      source_effects = PM.script_trigger_effect(effect_id)
    }--[[@as data.InstantTriggerDelivery]]}
  end

  -- Make sure it's an array
  if deliveries.type then
    deliveries = {deliveries}
  end

  -- Find an instant delivery to add to the effects
  local has_instant = false
  for _, delivery in pairs(deliveries) do
    if delivery.type == "instant" then
      has_instant = true
      delivery.source_effects = PM.script_trigger_effect(effect_id, delivery.source_effects)
      break
    end
  end

  -- Create new delivery item if there was no instant
  if not has_instant then
    deliveries[#deliveries+1] = {
      type = "instant",
      source_effects = PM.script_trigger_effect(effect_id)
    }
  end

  -- return deliveries to overwrite
  return deliveries
end

---Will create a script effect if not given an effect
---
---If given a effect, it will append a script effect to the array (converting if not already an array)
---
---You *have* to overwrite where you got the effect from, as it converts everything into the array format
---@param effect_id string
---@param effects data.TriggerEffect[]|data.TriggerEffect?
---@return data.TriggerEffect[]
---@nodiscard
function PM.script_trigger_effect(effect_id, effects)
  -- Return effect directly if not given one
  if not effects then
    return {{
      type = "script",
      effect_id = effect_id,
    }--[[@as data.ScriptTriggerEffectItem]]}
  end

  -- Make sure it's an array
  if effects.type then
    effects = {effects}
  end

  -- Create new effect
  effects[#effects+1] = {
    type = "script",
    effect_id = effect_id,
  }

  -- return effects to overwrite
  return effects
end

--MARK: Runtime library

---@type boolean?
local has_better_chat = nil
local send_levels = {
  ["LuaGameScript"] = "global",
  ["LuaForce"] = "force",
  ["LuaPlayer"] = "player",
  ["LuaSurface"] = "surface",
}
--- Safely attempts to print via the Better Chatting's interface
---@param recipient LuaGameScript|LuaForce|LuaPlayer|LuaSurface
---@param msg LocalisedString
---@param print_settings PrintSettings?
function PM.compat_send(recipient, msg, print_settings)
  if has_better_chat == nil then
    local better_chat = remote.interfaces["better-chat"]
		has_better_chat = better_chat and better_chat["send"] or false
  end

  if not has_better_chat then return recipient.print(msg, print_settings) end
  print_settings = print_settings or {}


  local send_level = send_levels[recipient.object_name]
  ---@type int?
  local send_index
  if send_level ~= "global" then
    send_index = recipient.index
    if not send_index then
      error("Invalid Recipient", 2)
    end
  end

  remote.call("better-chat", "send", {
    message = msg,
    send_level = send_level,
    color = print_settings.color,
    recipient = send_index,
    clear = false,

    sound = print_settings.sound,
    sound_path = print_settings.sound_path,
    volume_modifier = print_settings.volume_modifier
  })
end


--MARK : Global variables: -- Doesn't work. shhh

-- ---@class PM.beltTier
-- ---@field [1] string  Belt
-- ---@field [2] string  Underground
-- ---@field [3] string  Splitter
-- ---@field [4] string? Loader

-- ---@type PM.beltTier[]
-- PM.belts = {
--   {"transport-belt",                  "underground-belt",                 "splitter",                 "loader"        },
--   {"fast-transport-belt",             "fast-underground-belt",            "fast-splitter",            "fast-loader"   },
--   {"pm-advanced-transport-belt",      "pm-advanced-underground-belt",     "pm-advanced-splitter",     nil             },
--   {"express-transport-belt",          "express-underground-belt",         "express-splitter",         "express-loader"},
--   {"pm-high-density-transport-belt",  "pm-high-density-underground-belt", "pm-high-density-splitter", nil             },
-- }

return PM
-- as it says on the tin