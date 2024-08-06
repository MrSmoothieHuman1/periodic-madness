for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    if technologies["pm-polytetrafluoroethylene-plastic"].researched then
        recipes["pm-carbon-tetrachloride-seperation"].enabled = true
    end
end