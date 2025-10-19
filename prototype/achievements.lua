data:extend({
  {
    type = "use-item-achievement",
    name = "pm-use-more-gun",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/achievements/use-more-gun.png",
    to_use = "defender-capsule",
    limit_quality = "normal",
    amount = 1,
  },
  {
    type = "dont-research-before-researching-achievement",
    name = "pm-legacy-code",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/achievements/legacy-code.png",
    order = "h[limitation]-e[legacy-code]",
    dont_research = {"processing-unit"},
    research_with = {"pm-noble-gas-science-pack"}
  },
  {
    type = "dont-use-entity-in-energy-production-achievement",
    name = "pm-nuclear-power-no-thanks",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/achievements/legacy-code.png",
    order = "h[limitation]-f[nuclear-power-no-thanks]",
    excluded = {"steam-engine", "steam-turbine", "solar-panel", "pm-solar-panel-2", "pm-solar-panel-3", "pm-hydroelectric-plant"},
    included = {"nuclear-reactor", "pm-polonium-reactor", "pm-RTG"},
    objective_condition = "rocket-launched",
  },

  {
    type = "research-with-science-pack-achievement",
    name = "pm-research-with-advanced-advanced-transition-metals",
    icon_size = 128,
    icon = "__base__/graphics/achievement/research-with-utility.png",
    order = "e[research]-a[research-with]-c[AATM]",
    science_pack = "pm-advanced-advanced-transition-metal-science-pack"
  },
  {
    type = "research-with-science-pack-achievement",
    name = "pm-research-with-post-transition-metals",
    icon_size = 128,
    icon = "__base__/graphics/achievement/research-with-chemicals.png",
    order = "e[research]-a[research-with]-d[PTM]",
    science_pack = "pm-advanced-advanced-transition-metal-science-pack"
  },
  {
    type = "research-with-science-pack-achievement",
    name = "pm-research-with-metalloids",
    icon_size = 128,
    icon = "__base__/graphics/achievement/research-with-production.png",
    order = "e[research]-a[research-with]-f[MT]",
    science_pack = "pm-advanced-advanced-transition-metal-science-pack"
  },
  {
    type = "research-with-science-pack-achievement",
    name = "pm-research-with-alkali-metals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/achievements/research-with-alkali-metals.png",
    order = "e[research]-a[research-with]-g[AM]",
    science_pack = "pm-advanced-advanced-transition-metal-science-pack"
  },
  {
    type = "research-with-science-pack-achievement",
    name = "pm-research-with-advanced-advanced-advanced-transition-metals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/achievements/research-with-advanced-advanced-advanced-transition-metals.png",
    order = "e[research]-a[research-with]-h[AAATM]",
    science_pack = "pm-advanced-advanced-transition-metal-science-pack"
  },
  {
    type = "research-with-science-pack-achievement",
    name = "pm-research-with-alkaline-earth-metals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/achievements/research-with-alkaline-earth-metals.png",
    order = "e[research]-a[research-with]-i[AEM]",
    science_pack = "pm-advanced-advanced-transition-metal-science-pack"
  },
  {
    type = "research-with-science-pack-achievement",
    name = "pm-research-with-noble-gas",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/achievements/research-with-noble-gas.png",
    order = "e[research]-a[research-with]-j[NB]",
    science_pack = "pm-advanced-advanced-transition-metal-science-pack"
  },
})

data.raw["complete-objective-achievement"]["there-is-no-spoon"].within = 100 * hour
data.raw["complete-objective-achievement"]["no-time-for-chitchat"].within = 150 * hour
data.raw["complete-objective-achievement"]["there-is-no-spoon"].allowed_without_fight = true
data.raw["complete-objective-achievement"]["no-time-for-chitchat"].allowed_without_fight = true

data.raw["research-with-science-pack-achievement"]["research-with-production"].hidden = true
data.raw["research-with-science-pack-achievement"]["research-with-utility"].hidden = true
data.raw["research-with-science-pack-achievement"]["research-with-military"].hidden = true

data.raw["research-with-science-pack-achievement"]["research-with-chemicals"].order = "e[research]-a[research-with]-e[RNM]"
data.raw["research-with-science-pack-achievement"]["research-with-chemicals"].icon = "__base__/graphics/achievement/research-with-logistics.png"
data.raw["research-with-science-pack-achievement"]["research-with-logistics"].icon = "__periodic-madness__/graphics/achievements/research-with-advanced-transition-metals.png"