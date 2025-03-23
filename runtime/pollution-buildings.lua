--credit to quezeler for helping me out on this, and giving me the code
--MARK: No pollution
script.on_nth_tick(60 * 10, function(event)
    for _, surface in pairs(game.surfaces) do
      local entities = surface.find_entities_filtered
      {
        name = "pm-greenhouse",
      }
      for _, entity in ipairs(entities) do
        if surface.get_pollution(entity.position) > 60 then
        --15 pollution in a til is the min. amount needed to have it spread
        --60 pollution is when trees start dying - makes sense thematically, but might be too low?
        --TODO: add list of pollution required to make chunk more red
          entity.disabled_by_script = true
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
  end)

  --MARK: Only pollution