local event_handler = require("event_handler")--[[@as event_handler_lib]]

event_handler.add_libraries{
	require("runtime.remote-interface"),
	require("runtime.reactor-cooling"),
	require("runtime.freeplay-interface"),
	require("runtime.periodic-fun"),
	require("runtime.pollution-buildings"),
	require("runtime.alert-flashing"),
	require("compatibility.automatic-underground-pipe-connectors"),
}