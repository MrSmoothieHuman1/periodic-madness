require("prototype.recipes.building-recipes.burnining")

for _, machine in pairs(data.raw["assembling-machine"]) do
  if not machine.fluid_boxes then goto continue end
for _, fluidbox in pairs(machine.fluid_boxes) do
  for _, connection in pairs(fluidbox.pipe_connections) do
    
    -- Use this chunk if you want to *add*
    if type(connection.connection_category) ~= "table" then
      connection.connection_category = {connection.connection_category}
    end
    table.insert(connection.connection_category, "pm-osmium-pipes")

  end
end
  ::continue::
end
for _, machine in pairs(data.raw["furnace"]) do
  if not machine.fluid_boxes then goto continue end
for _, fluidbox in pairs(machine.fluid_boxes) do
  for _, connection in pairs(fluidbox.pipe_connections) do
    
    -- Use this chunk if you want to *add*
    if type(connection.connection_category) ~= "table" then
      connection.connection_category = {connection.connection_category}
    end
    table.insert(connection.connection_category, "pm-osmium-pipes")

  end
end
  ::continue::
end
for _, machine in pairs(data.raw["rocket-silo"]) do
  if not machine.fluid_boxes then goto continue end
for _, fluidbox in pairs(machine.fluid_boxes) do
  for _, connection in pairs(fluidbox.pipe_connections) do
    
    -- Use this chunk if you want to *add*
    if type(connection.connection_category) ~= "table" then
      connection.connection_category = {connection.connection_category}
    end
    table.insert(connection.connection_category, "pm-osmium-pipes")

  end
end
  ::continue::
end
