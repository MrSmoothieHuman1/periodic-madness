--@type event_handler
local handler = {events = {}}
handler.events[defines.events.on_research_finished] = function (event) end


function on_research_finished(event)
  if event.research.name == "pm-iridium-processing" then
    game.print("hello nerd x2")
  end
end