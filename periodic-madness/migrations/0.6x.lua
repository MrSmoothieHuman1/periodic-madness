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
                            if technologies["pm-crystal-seeding"].researched then 
                                recipes["pm-ruby-crystal-slurry"].enabled = true
                                if technologies["pm-crystal-seeding"].researched then 
                                    recipes["pm-citrine-crystal-slurry"].enabled = true
                                    if technologies["pm-crystal-seeding"].researched then 
                                        recipes["pm-emerald-crystal-slurry"].enabled = true
                                        if technologies["pm-crystal-seeding"].researched then 
                                            recipes["pm-sapphire-crystal-slurry"].enabled = true
                                            if technologies["pm-crystal-seeding"].researched then 
                                                recipes["pm-lapis-lazuli-crystal-slurry"].enabled = true
                                                if technologies["pm-crystal-seeding"].researched then 
                                                    recipes["pm-garnet-crystal-slurry"].enabled = true
                                                    if technologies["pm-fiberoptics"].researched then 
                                                        recipes["pm-rubber-air-filter"].enabled = true
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end