--credit to quezeler for helping me out on this, and giving me the code

---@type event_handler
local handler = {on_nth_tick = {}}

--pollution value to colour list:
--0-50: Lowest colour
--55-65: Second colour
--65-75: Third colour
--75-85: Fourth colour
--85-95: Fifth colour
--95-105: Sitxh colour
--105-115: Seventh colour
--115-125: Eighth colour
--125-135: Nineth colour
--135-145: Tenth colour
--145-150+: Eleventh colour (max)
--MARK: No pollution
handler.on_nth_tick[60 * 2] = function(event) --checks every 2 seconds
    for _, surface in pairs(game.surfaces) do
      local entities = surface.find_entities_filtered
      {
        name = {"pm-greenhouse", "pm-factorian-bacteria-greenhouse"}
      }
      for _, entity in ipairs(entities) do
        if surface.get_pollution(entity.position) > 60 then
          --15 pollution in a til is the min. amount needed to have it spread
          --60 pollution is when trees start dying - makes sense thematically, but might be too low?
          entity.disabled_by_script = true
          entity.disabled_by_script = true
          -- Show alert
          local new_alert = rendering.draw_sprite{
          sprite = "virtual-signal/pm-too-much-pollution",
          surface = entity.surface,
          target = entity,
          forces = entity.force,
          time_to_live = 60,
          }
          for _, player in pairs(entity.force.players) do
          player.add_custom_alert(entity, {type="virtual", name="pm-too-much-pollution"}, {"pm-alerts.pm-too-much-pollution"}, true)
          end
          entity.custom_status =
          {
            diode = defines.entity_status_diode.red,
            label = {"entity-status.pm-too-much-pollution"},
          }
        else
          entity.disabled_by_script = false
          entity.custom_status = nil
        end
      end
    end
  end

return handler

  --MARK: Only pollution