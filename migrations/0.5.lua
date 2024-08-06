for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    if technologies["pm-vanadium-processing"].researched then
        recipes["pm-magnetite-forming"].enabled = true
        if technologies["pm-vanadium-processing"].researched then
            recipes["pm-ferrovanadium"].enabled = true
            if technologies["pm-vanadium-processing"].researched then
                recipes["pm-vanadate-solution"].enabled = true
                if technologies["pm-vanadium-processing"].researched then
                    recipes["pm-vanadate-solution-seperation"].enabled = true
                    if technologies["pm-fertiliser"].researched then
                        recipes["pm-ammonium-vanadate-solution"].enabled = true
                    end
                end
            end
        end
    end
end