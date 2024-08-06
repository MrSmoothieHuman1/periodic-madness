
for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    recipes["pm-acid-plant"].enabled = technologies["pm-cleaner-power-generation"].researched
    recipes["big-electric-pole"].enabled = technologies["pm-fiberoptics"].researched
    recipes["pm-rubber-vulcanisation"].enabled = technologies["pm-resin-processing"].researched
    recipes["assembling-machine-1"].enabled = technologies["pm-cleaner-power-generation"].researched

    if technologies["pm-rubber-processing"].researched then
        recipes["pm-resin-to-rubber-resin"].enabled = true
    if technologies["electric-energy-distribution-1"].researched then
        recipes["pm-resin-to-pheonlic-resin"].enabled = true
     if technologies["automation"].researched then
        recipes["storage-tank"].enabled = true
    end
    end
end
end
