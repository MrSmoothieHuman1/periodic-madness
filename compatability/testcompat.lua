--help

if mods["filter-long-inserter"] then
   
   data.raw["recipe"]["fi-filter-long-handed-inserter"].hidden = true
   data.raw["technology"]["fi-filter-long-handed-inserter"].hidden = true
   data.raw["recipe"]["fi-stack-filter-long-handed-inserter"].ingredients =
   {
      {"pm-filter-long-handed-inserter", 1},
      {"pm-solid-lubricant", 2},
      {"advanced-circuit", 2}
   }
end
