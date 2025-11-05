---@class PollutionData : data.ModData
---@field data_type "pm-pollution-limit"
---@field data PollutionData.data

---@class LuaPollutionData : LuaModData
---@field data_type "pm-pollution-limit"
---@field data PollutionData.data

---@class PollutionData.data
---@field entity data.EntityID
---@field min_pollution number The amount of pollution it needs to work
---@field max_pollution number The amount of pollution where it stops working

---@param entity data.EntityID
---@param min number
---@param max number
---@return PollutionData
local function limit_pollution(entity, min, max)
	return {
		type = "mod-data",
		name = entity.."-pollution-data",
		data_type = "pm-pollution-limit",
		data = {
			entity = entity,
			min_pollution = min,
			max_pollution = max,
		}
	}--[[@as PollutionData]]
end

--   15 pollution in a til is the min. amount needed to have it spread
--   60 pollution is when trees start dying - makes sense thematically, but might be too low?
data:extend{
	limit_pollution("pm-greenhouse", 0, 60),
	limit_pollution("pm-factorian-bacteria-greenhouse", 0, 60),
	limit_pollution("pm-CO2-nullifer", 0, 120),
	limit_pollution("pm-air-filterer", 0.01, 1/0),
    --limit_pollution("solar-panel", 0, 120),
    --limit_pollution("pm-solar-panel-2" , 0, 180),
    --limit_pollution("pm-solar-panel-3", 0, 240)
}
return limit_pollution