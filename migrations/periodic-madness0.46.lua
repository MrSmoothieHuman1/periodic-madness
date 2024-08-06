for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    recipes["pm-brass-plate"].enabled = technologies["steel-processing"].researched
    recipes["pm-gold-wire"].enabled = technologies["pm-tempature-plating"].researched
    recipes["pm-hydrochloric-acid"].enabled = technologies["pm-chlorine-processing"].researched
    
    
    if technologies["pm-resin-processing"].researched then
        recipes["pm-vacuum-former-1"].enabled = true
        if technologies["automation"].researched then
            recipes["pm-burner-crusher"].enabled = true
            if technologies["pm-water-distillation"].researched then
                recipes["pm-washing-plant-1"].enabled = true
                if technologies["electronics"].researched then
                    recipes["pm-mini-motor"].enabled = true
                    if technologies["automation-2"].researched then
                        recipes["pm-crusher-1"].enabled = true
                        if technologies["automation-3"].researched then
                            recipes["pm-crusher-2"].enabled = true
                            if technologies["advanced-electronics"].researched then
                                recipes["pm-advanced-integrated-circuits"].enabled = true
                                     if technologies["advanced-electronics"].researched then
                                     recipes["pm-advanced-circuit-breadboard"].enabled = true
                                     if technologies["steel-processing"].researched then
                                        recipes["pm-transition-manganese-decomposition"].enabled = true
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
