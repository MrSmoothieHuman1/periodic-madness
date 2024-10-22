local PM = require("__periodic-madness__/library")
if not mods["bzzirconium"] then return end
---@type string
    local explosive_rounds_magazine
    if mods["Krastorio2"] then
      explosive_rounds_magazine = "explosive-rounds-rifle-magazine"
    else
      explosive_rounds_magazine = "explosive-rounds-magazine"
    end
-- Autoplace
for _, name in pairs { "zircon" } do
  data.raw["autoplace-control"][name] = nil
  data.raw["resource"][name].autoplace = nil
  -- Autoplace removal fucks presets
  for _, preset in pairs(data.raw["map-gen-presets"]["default"] --[[@as {[string]:data.MapGenPreset}]]) do
    if preset.basic_settings
    and preset.basic_settings.autoplace_controls then
      preset.basic_settings.autoplace_controls[name] = nil
    end
  end
end
data.raw["recipe"]["zirconium-plate"].ingredients = { PM.ingredient("pm-zirconia", 3) }

data.raw["autoplace-control"]["zircon"] = nil
data.raw["resource"]["zircon"] = nil

PM.set_flag(data.raw["item"]["zircon"], "hidden")
PM.set_flag(data.raw["item"]["zirconia"], "hidden")
data.raw["item"]["zirconium-plate"].subgroup = "pm-zirconium-tm"
data.raw["item"]["zirconium-plate"].order = "g"

data.raw["technology"]["pm-zirconium-processing"] = nil
data.raw["technology"]["cermet"].unit.ingredients =
{
  PM.ingredient("automation-science-pack", 1),
  PM.ingredient("logistic-science-pack", 1),
  PM.ingredient("pm-advanced-advanced-transition-metal-science-pack", 1),
}
data.raw["technology"]["zirconia-processing"].icon_size = 256
data.raw["technology"]["zirconia-processing"].icon = "__periodic-madness__/graphics/technology/zirconium-processing.png"
data.raw["technology"]["zirconia-processing"].effects =
{
  PM.unlock_recipe("pm-zirconium-leeching"),
  PM.unlock_recipe("pm-zirconium-sand-filtering"),
  PM.unlock_recipe("pm-zirconia"),
  PM.unlock_recipe("pm-zirconium"),
  PM.unlock_recipe("zirconium-plate"),
  PM.unlock_recipe("pm-sand-creosote"),
  PM.unlock_recipe("pm-crucible"),
}
data.raw["technology"]["zirconia-processing"].prerequisites = { "pm-advanced-advanced-transition-metal-pack-unlock" }
data.raw["technology"]["pm-tempature-inators"].prerequisites = { "zirconia-processing" }
data.raw["technology"]["military-3"].effects =
{
  PM.unlock_recipe("poison-capsule"),
  PM.unlock_recipe("slowdown-capsule"),
  PM.unlock_recipe("combat-shotgun"),
  PM.unlock_recipe("pm-high-density-magazine"),
  PM.unlock_recipe(explosive_rounds_magazine)
}

data.raw["recipe"][explosive_rounds_magazine].ingredients =
{
  PM.ingredient("zirconium-plate", 1),
  PM.ingredient("piercing-rounds-magazine", 1),
  PM.ingredient("pm-naptha", 2, "fluid")
}

data.raw["recipe"]["zirconium-plate"].subgroup = "pm-zirconium-tm"
data.raw["recipe"]["zirconium-plate"].order = "g"
data.raw["recipe"]["electric-furnace"].ingredients =
{
  PM.ingredient("advanced-circuit", 5), --basic, i know
  PM.ingredient("pm-heating-plating", 6),
  PM.ingredient("pm-heavyweight-panelling", 12),
  PM.ingredient("pm-heavyweight-framing", 4),
  PM.ingredient("pm-zirconia", 5)
}
data.raw["recipe"]["cermet"].ingredients =
{
  PM.ingredient("copper-plate", 2),
  PM.ingredient("pm-zirconia", 1)
}
data.raw["recipe"]["low-density-structure"].ingredients =
{
  PM.ingredient("copper-plate", 10),
  PM.ingredient("cermet", 5),
  PM.ingredient("steel-plate", 2),
  PM.ingredient("pm-polyethylene-plastic", 5)
}
data.raw["recipe"]["stone-furnace"].ingredients =
{
  PM.ingredient("stone", 5)
}
data.raw["recipe"]["steel-furnace"].ingredients =
{
  PM.ingredient("steel-plate", 6),
  PM.ingredient("stone-brick", 10)
}
data.raw["recipe"]["pm-electrolysis-plant-2"].ingredients =
{
  PM.ingredient("pm-electrolysis-plant", 1),
  PM.ingredient("processing-unit", 3),
  PM.ingredient("zirconium-plate", 6),
  PM.ingredient("pm-heavyweight-panelling", 5),
  PM.ingredient("pm-corrosion-resistant-tubing", 12)
}

data.raw["simple-entity"]["rock-huge"].minable.results =
{
  PM.product_range("stone", 24, 50),
  PM.product_range("coal",  24, 50)
}
data.raw["simple-entity"]["rock-big"].minable.results =
{
  PM.product("stone", 20)
}
data.raw["simple-entity"]["rock-big"].loot =
{
  PM.loot("stone", 9, 25)
}
data.raw["simple-entity"]["sand-rock-big"].minable.results =
{
  PM.product_range("stone", 19, 25)
}
data.raw["simple-entity"]["sand-rock-big"].loot =
{
  PM.loot("stone", 10, 15)
}

-- for _, entity in pairs(data.raw["simple-entity"]) do
--   entity.minable.results =
--   {
--     PM.product_range("stone", 24, 50),
--     PM.product_range("coal",  24, 50)
--   }
-- end

if mods["SantasNixieTubeDisplay"] then
  data.raw["technology"]["SNTD-nixie-tubes-1"].prerequisites = { "circuit-network" }
end

if mods["bzaluminum"] then
  data.raw["technology"]["aerospace-alloys"].unit.ingredients =
  {
    PM.ingredient("automation-science-pack", 1),
    PM.ingredient("logistic-science-pack", 1),
    PM.ingredient("pm-advanced-advanced-transition-metal-science-pack", 1),
  }
end
