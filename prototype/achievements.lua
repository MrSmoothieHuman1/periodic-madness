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
    dont_research = {"processing-unit"},
    research_with = {"pm-noble-gas-science-pack"}
  },
{
    type = "dont-use-entity-in-energy-production-achievement",
    name = "pm-nuclear-power-no-thanks",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/achievements/legacy-code.png",
    excluded = {"steam-engine", "steam-turbine", "solar-panel", "pm-solar-panel-2", "pm-solar-panel-3", "pm-hydroelectric-plant"},
    included = {"nuclear-reactor", "pm-polonium-reactor", "pm-RTG"},
    objective_condition = "rocket-launched",
  },
})

data.raw["complete-objective-achievement"]["there-is-no-spoon"].within = 100 * hour
data.raw["complete-objective-achievement"]["no-time-for-chitchat"].within = 150 * hour
data.raw["complete-objective-achievement"]["there-is-no-spoon"].allowed_without_fight = true
data.raw["complete-objective-achievement"]["no-time-for-chitchat"].allowed_without_fight = true
