local function do_custom_player_messages()
    if game.tick == 90 * 60 * 60 then
        for _, player in pairs(game.players) do
            -- youtuber people
            if player.name == "Zyllius" then
                player.print("To get you a little closer to that potato haiku. Also, suffer")
            end
            if player.name == "DocJade" then
                player.print("theres no greel here, but its certaintly Fun")
            end
            if player.name == "Martincitopants" then
                player.print("lettuce.. begin a chemistry class")
            end
            if player.name == "Venzer" then
                player.print("i found your channel randomly and absolutely loved your EI video, have fun with PM <3")

            -- important or cool people
            if player.name == "exfret" then
                game.print("A fun... mode? whoever thought of something like that?")
            end
            if player.name == "PennyJim" then
                game.print("Took you long enough")
            end
            if player.name == "Sassxolotl" then
                game.print("from one neurospicer to another, enjoy")
            end
            if player.name == "Acqua" then
                game.print("if i had the know-how, i'd make sure that every second make bots 0.01% slower")
            end

            -- people i yoinked from doshcord
            if player.name == "Emile-wa" then
                game.print("thank you for being the first to become a funny name in PM")
            end
            if player.name == "IUndercoverTroll" then
                game.print("something something balatro reference")
            end


            -- test
            if player.name == "Mr.SmoothieHuman" then
                game.print("hey nerd")
            end
            end
        end
    end
end