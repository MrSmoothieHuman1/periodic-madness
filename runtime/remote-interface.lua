local milestones = require("runtime.milestones")

--NOTE: Using the event_handler method for registering interfaces, means it happens after Milestones searches for it :(
remote.add_interface("periodic-madness", {
	milestones_presets = milestones
})

return {}