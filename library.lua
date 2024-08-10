-- Make this a singleton
-- eg, there will only ever be one copy
if ... ~= "__periodic-madness__/library" then
  return require("__periodic-madness__/library")
end

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
---@param type "fluid"|"item"?
---@return data.IngredientPrototype
function PM.ingredient(name, amount, type)
  return {
    name = name,
    amount = amount,
    type = type or "item"
  }
end
---Quickly makes the Prodcut result as if using shorthand
---@param name data.ItemID|data.FluidID
---@param amount number
---@param type "fluid"|"item"?
---@return data.ProductPrototype
function PM.product(name, amount, type)
  return {
    name = name,
    type = type or "item",
    amount = amount,
  } --[[@as data.ProductPrototype]]
end
---Acts like its own short-hand for a product with a range of possible amounts
---@param name data.ItemID|data.FluidID
---@param amount_min number
---@param amount_max number
---@param type "fluid"|"item"?
---@return data.ProductPrototype
function PM.product_range(name, amount_min, amount_max, type)
  return {
    name = name,
    type = type or "item",
    amount_min = amount_min,
    amount_max = amount_max,
  } --[[@as data.ProductPrototype]]
end
---Acts like its own short-hand for a probabilistic product
---@param name data.ItemID|data.FluidID
---@param amount number
---@param probability number
---@param type "fluid"|"item"?
---@return data.ProductPrototype
function PM.product_chance(name, amount, probability, type)
  return {
    name = name,
    type = type or "item",
    amount = amount,
    probability = probability
  } --[[@as data.ProductPrototype]]
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