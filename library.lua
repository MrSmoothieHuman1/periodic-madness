-- Make this a singleton
-- eg, there will only ever be one copy
if ... ~= "__periodic-madness__/library" then
  return require("__periodic-madness__/library")
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
---@return data.FluidIngredientPrototype|data.ItemIngredientPrototype.struct
function PM.ingredient(name, amount, type)
  return {
    name = name,
    amount = amount,
    type = type or "item"
  }
end

---A local function to localize the product function implementaton
---@param name data.ItemID|data.FluidID
---@param type item_type?
---@param amount number?
---@param amount_min number?
---@param amount_max number?
---@param probability number?
---@param catalyst_amount number?
---@return data.FluidProductPrototype|data.ItemProductPrototype.struct
local function super_product(name, type, amount, amount_min, amount_max, probability, catalyst_amount)
  return {
    name = name,
    type = type or "item",
    amount = amount,
    amount_min = amount_min,
    amount_max = amount_max,
    probability = probability,
    catalyst_amount = catalyst_amount,
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
---@param catalyst_amount number
---@param type item_type?
---@return data.FluidProductPrototype|data.ItemProductPrototype.struct
function PM.catalyst(name, amount, catalyst_amount, type)
  return super_product(name, type, amount, nil, nil, nil, catalyst_amount)
end
---Builds a catalyst product that has a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param catalyst_amount number
---@param type item_type?
---@return data.FluidProductPrototype|data.ItemProductPrototype.struct
function PM.catalyst_range(name, amount_min, amount_max, catalyst_amount, type)
  return super_product(name, type, nil, amount_min, amount_max, nil, catalyst_amount)
end
---Builds a catalyst product that has a chance of being returned
---@param name data.ItemID|data.FluidID
---@param amount number
---@param probability number
---@param catalyst_amount number
---@param type item_type?
---@return data.FluidProductPrototype|data.ItemProductPrototype.struct
function PM.catalyst_chance(name, amount, probability, catalyst_amount, type)
  return super_product(name, type, amount, nil, nil, probability, catalyst_amount)
end
---Builds a catalyst product that has a chance to return a range of results
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param probability number
---@param catalyst_amount number
---@param type item_type?
---@return data.FluidProductPrototype|data.ItemProductPrototype.struct
function PM.catalyst_range_chance(name, amount_min, amount_max, probability, catalyst_amount, type)
  return super_product(name, type, nil, amount_min, amount_max, probability, catalyst_amount)
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


return PM