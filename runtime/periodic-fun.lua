---@type event_handler
local lib = {events={}}

local player_messages = {
    -- youtuber people
    ["Zyllius"] = "To get you a little closer to that potato haiku",
    ["DocJade"] = "theres no greel here, but its certaintly Fun",
    ["Martincitopants"] = "lettuce.. begin a chemistry class",
    ["Venzer"] = "i found your channel randomly and absolutely loved your EI video, have fun with PM <3",
    
    -- important or cool
    ["exfret"] = "A fun... mode? whoever thought of something like that?",
    ["PennyJim"] = "Took you long enough",
    ["Sassxolotl"] = "from one neurospicer to another, enjoy",
    ["Acqua"] = "if i had the know-how, i'd make it so that every second make bots 0.01% slower",
    
    -- people i yoinked from the doshcord
    ["Emile-wa"] = "thank you for being the first to become a funny name in PM",
    ["IUndercoverTroll"] = "something something balatro reference",
    ["realannabanana"] = "straight banana'ing it",
    ["JakeTheWolf"] = "tenpo ni, la mi ken pali e toki wile la sina ken pali e toki wan",
    ["somepersondontask"] = "I WILL ask thankyouverymuch",
    ["YlwHrt"] = "Ywl? thats not how you spell red!",
    ["werl"] = "not too late, but not early enough to be the first",
    ["EdwardR"] = "very late christmas profile... or is it maybe very early?",
    ["SEE_YOU_SPACE_BUNNY"] = "later then the lates, but not late enough",
    
    ["Mr.SmoothieHuman"] = "hey nerd"
}

---@param player LuaPlayer
local function play_message(player)
    local player_message = player_messages[player.name]
    if player_message then
        PM.compat_send(player, player_message)
    end
end

function lib.on_init()
    ---@type table<string,true>
    storage.player_message_sent = {}
    local player_message_sent = storage.player_message_sent
    for _, player in pairs(game.players) do
        play_message(player)
        player_message_sent[player.name] = true
    end
end
lib.events[defines.events.on_player_created] = function(event)
    local player = game.get_player(event.player_index)
    ---@cast player -?
    play_message(player)
    storage.player_message_sent[player.name] = true
end

function lib.on_configuration_changed(event)
    ---@type table<string,true>
    storage.player_message_sent = storage.player_message_sent or {}
    local player_message_sent = storage.player_message_sent

    for _, player in pairs(game.players) do
        if not player_message_sent[player.name] then
            play_message(player)
            player_message_sent[player.name] = true
        end
    end
end


return lib