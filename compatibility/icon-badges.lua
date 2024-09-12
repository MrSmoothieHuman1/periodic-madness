my_data =
{
    {type = 'ammo', name = 'pm-high-density-magazine', ib_data = {badge = 'HDR'} },
    {type = 'item', name = 'iron-ore',  ib_data = {badge = 'I'} },
}

for _,i in ipairs(my_data) do
    Build_badge(data.raw[i.type][i.name], i.ib_data)
end
