local milestones = require("runtime.milestones")

---@type event_handler
return {
	add_remote_interface = function ()
		remote.add_interface("periodic-madness", {
			milestones_presets = milestones
		})
	end
}