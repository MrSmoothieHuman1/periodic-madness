for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    recipes["pm-water-acifying"].enabled = technologies["pm-transition-metal-refining"].researched
    
end

