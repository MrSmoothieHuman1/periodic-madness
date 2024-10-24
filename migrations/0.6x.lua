for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    if technologies["pm-polytetrafluoroethylene-plastic"].researched then
        recipes["pm-carbon-tetrachloride-seperation"].enabled = true
        if technologies["military-3"].researched then
            recipes["pm-high-density-shotgun-shell"].enabled = true
            if technologies["military-3"].researched then
                recipes["pm-high-density-shotgun-slug"].enabled = true
                if technologies["pm-chemical-weaponry"].researched then
                    recipes["pm-genevas-neglection-shotgun-shell"].enabled = true
                    if technologies["pm-chemical-weaponry"].researched then
                        recipes["pm-genevas-neglection-shotgun-slug"].enabled = true
                        if technologies["automation-3"].researched then
                            recipes["pm-chemical-plant-2"].enabled = true
                        end
                    end
                end
            end
        end
    end
end