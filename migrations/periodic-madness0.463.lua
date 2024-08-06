for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    if technologies["pm-advanced-basic-tubing"].researched then
        recipes["pm-steel-basic-framing"].enabled = true
        if technologies["pm-advanced-basic-tubing"].researched then
            recipes["pm-stainless-steel-basic-framing"].enabled = true
            if technologies["pm-advanced-basic-tubing"].researched then
                recipes["pm-steel-panelling"].enabled = true
                if technologies["pm-advanced-basic-tubing"].researched then
                    recipes["pm-stainless-steel-panelling"].enabled = true
                    if technologies["pm-advanced-basic-tubing"].researched then
                        recipes["pm-brass-basic-framing"].enabled = true
                        if technologies["pm-CO2-nullifying"].researched then
                            recipes["pm-zirconia-carbon-dioxide-electrolysis"].enabled = true
                            if technologies["pm-flourine-processing"].researched then
                                recipes["pm-fluxed-platinum-nickel-froth-seperation"].enabled = true and recipes["pm-fluxed-copper-froth-seperation"].enabled == true
                            end
                        end
                    end
                end
            end
        end
    end
end