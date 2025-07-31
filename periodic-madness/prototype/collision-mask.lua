local tile_collision_masks = {}

tile_collision_masks.pm_concrete = function()
  return
  {layers={
    ground_tile=true,
    pm_concrete = true,
  }}
end
tile_collision_masks.pm_refined_concrete = function()
  return
  {layers={
    ground_tile=true,
    pm_refined_concrete = true,
  }}
end

return tile_collision_masks
