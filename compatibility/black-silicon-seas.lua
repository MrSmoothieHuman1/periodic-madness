if mods["BlackSiliconSeas"] then 
    data.raw["solar-panel"]["pm-solar-panel-2"].collision_mask =
    {
        layers = {
	    water_tile = true,
        is_lower_object = true}
    }
    data.raw["solar-panel"]["pm-solar-panel-3"].collision_mask =
    {
        layers = {
	    water_tile = true,
        is_lower_object = true}
    }
end