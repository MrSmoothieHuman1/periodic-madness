for index, force in pairs(game.forces) do
    local technologies = force.technologies

    if technologies["logistic-system"].researched then
        technologies["pm-requester-chest-inventory-bonus-capacity-1"].researched = true
        technologies["pm-requester-chest-inventory-bonus-capacity-2"].researched = true
        technologies["pm-requester-chest-inventory-bonus-capacity-3"].researched = true
        game.print({"pm-descriptions.requester-chest-migration"})
    end
end