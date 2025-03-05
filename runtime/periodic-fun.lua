local custom_messages = {
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
}

local function do_custom_player_messages()
    if game.tick == 90 * 60 * 60 then
        for _, player in pairs(game.players) do
            local funny_message = custom_messages[player.name]
            if funny_message then player.print(funny_message) end
        end
    end
end