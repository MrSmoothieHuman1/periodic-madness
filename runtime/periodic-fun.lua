local PM = require("library")
---@type event_handler
local lib = {events={}}

local player_messages = {
    -- youtuber people
    ["Zyllius"] = "To get you a little closer to that potato haiku. Also, suffer",
    ["DocJade"] = "theres no greel here, but its certaintly Fun",
    ["Martincitopants"] = "lettuce.. begin a chemistry class",
    ["Venzer"] = "i found your channel randomly and absolutely loved your EI video, have fun with PM <3",
    -- important or cool people
    ["exfret"] = "A fun... mode? whoever thought of something like that?",
    ["PennyJim"] = "Took you long enough",
    ["Sassxolotl"] = "from one neurospicer to another, enjoy",
    ["Acqua"] = "if i had the know-how, i'd make sure that every second make bots 0.01% slower",
    -- people i yoinked from the doshcord
    ["Emile-wa"] = "thank you for being the first to become a funny name in PM",
    ["IUndercoverTroll"] = "something something balatro reference",
    ["realannabanana"] = "straight banana'ing it",

    ["Mr.SmoothieHuman"] = "hey nerd",
}

---@param player LuaPlayer
local function play_message(player)
    local player_message = player_messages[player.name]
    if player_message then
        PM.compat_send(player, player_message)
    end
end

function lib.on_init()
    for _, player in pairs(game.players) do
        play_message(player)
    end
end
lib.events[defines.events.on_player_created] = function(event)
    local player = game.get_player(event.player_index)
    ---@cast player -?
    play_message(player)
end


return lib