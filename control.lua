PM = require("pennyisms.library")--[[@as Pennyisms]]
local event_handler = require("event_handler")--[[@as event_handler_lib]]


---@alias PerForce<V> {[uint32]:V}
---@alias PerPlayer<V> {[uint32]:V}
---@alias Mapping<K,V> {[K]?:V}

---@class (partial) PeriodicStorage
storage = storage

event_handler.add_libraries{
	require("runtime.remote-interface"),
	require("runtime.freeplay-interface"),
	require("runtime.periodic-fun"),
	require("runtime.pollution-buildings"),
	require("runtime.requester-chest-storage"),
	--require("runtime.multi-energy-source"),
	--require("runtime.reactor-cooling"),
	require("runtime.world-size-limit"),

	require("compatibility.automatic-underground-pipe-connectors"),
	require("compatibility.DiscoScience-old-version"),
}