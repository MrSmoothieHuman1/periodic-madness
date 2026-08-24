
---@class pm-pollution-limit
---@field entity data.EntityID
---@field pollutant_type data.AirbornePollutantID
---@field min_pollution number The amount of pollution it needs to work
---@field max_pollution number The amount of pollution where it stops working
---@field min_alert boolean Whether or not the mininum pollution causes it to alert
---@field max_alert boolean Whether or not the maximum pollution causes it to alert

---@param entity data.EntityID
---@param pollutant data.AirbornePollutantID
---@param min number
---@param max number
---@return data.ModData
local function limit_pollution(entity, pollutant, min, max)
	local has_min = min >= 0.05
	local has_max = max <= 1/0

	local pollutant_prototype = PM.get_prototype("airborne-pollutant", pollutant)
	local pollutant_amount_key = pollutant_prototype.localised_name_with_amount or "airborne-pollutant-name-with-amount."..pollutant
	local entity_prototype = PM.get_prototype("entity", entity)
	local tooltips = entity_prototype.custom_tooltip_fields
	if not tooltips then
		tooltips = {}
		entity_prototype.custom_tooltip_fields = tooltips
	end

	if has_min then
		tooltips[#tooltips + 1] = {
			name = {"pm-tooltips.pollutant-min"},
			value = {pollutant_amount_key, tostring(min)},
			order = 101
		}
	end
	if has_max then
		tooltips[#tooltips + 1] = {
			name = {"pm-tooltips.pollutant-max"},
			value = {pollutant_amount_key, tostring(max)},
			--TODO: Choose a tooltip order
			order = 102
		}
	end

	return {
		type = "mod-data",
		name = entity.."-pollution-data",
		data_type = "pm-pollution-limit",
		---@type pm-pollution-limit
		data = {
			entity = entity,
			pollutant_type = pollutant,
			min_pollution = min,
			min_alert = has_min,
			max_pollution = max,
			max_alert = has_max,
		}
	}
end

--   15 pollution in a til is the min. amount needed to have it spread
--   60 pollution is when trees start dying - makes sense thematically, but might be too low?
data:extend{
	limit_pollution("pm-greenhouse", "pollution", 0, 60),
	limit_pollution("pm-factorian-bacteria-greenhouse", "pollution", 0, 60),
	limit_pollution("pm-CO2-nullifer", "pollution", 0, 120),
	limit_pollution("pm-air-filterer", "pollution", 0.01, 1/0),
    --limit_pollution("solar-panel", "pollution", 0, 120),
    --limit_pollution("pm-solar-panel-2", "pollution", 0, 180),
    --limit_pollution("pm-solar-panel-3", "pollution", 0, 240)
}
return limit_pollution