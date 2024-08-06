for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    recipes["pm-transition-iron-decomposition"].enabled = technologies["pm-ezekiel-ore-purifying"].researched

end