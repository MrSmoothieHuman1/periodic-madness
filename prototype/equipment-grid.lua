data:extend({
  {
    type = "equipment-grid",
    name = "pm-modular-armor-equipment-grid",
    width = 7,
    height = 7,
    equipment_categories = {"armor"}
  },
  {
    type = "equipment-grid",
    name = "pm-power-armor-equipment-grid",
    width = 10,
    height = 10,
    equipment_categories = {"armor"}
  },
  {
    type = "equipment-grid",
    name = "pm-power-armor-MK2-equipment-grid",
    width = 15,
    height = 15,
    equipment_categories = {"armor"}
  },
  {
    type = "equipment-grid",
    name = "pm-power-armor-MK3-equipment-grid",
    width = 24,
    height = 24,
    equipment_categories = {"armor"}
  },
})

data.raw["equipment-grid"]["spidertron-equipment-grid"].width = 14
data.raw["equipment-grid"]["spidertron-equipment-grid"].height = 8

data.raw["armor"]["modular-armor"].equipment_grid = "pm-modular-armor-equipment-grid"
data.raw["armor"]["power-armor"].equipment_grid = "pm-power-armor-equipment-grid"
data.raw["armor"]["power-armor-mk2"].equipment_grid = "pm-power-armor-mk2-equipment-grid"
