data:extend({

  --categories

  {
    type = "recipe-category",
    name = "pm-acids",
  },
  {
    type = "recipe-category",
    name = "pm-alloying"
  },
  {
    type = "recipe-category",
    name = "pm-molding",
  },
  {
    type = "recipe-category",
    name = "pm-advanced-molding",
  },
  {
    type = "recipe-category",
    name = "pm-washing"
  },
  {
    type = "recipe-category",
    name = "pm-crushing"
  },
  {
    type = "recipe-category",
    name = "pm-fractional-distillation"
  },
  {
    type = "recipe-category",
    name = "pm-atmospheric-condensing"
  },
  {
    type = "recipe-category",
    name = "pm-evaporation"
  },
  {
    type = "recipe-category",
    name = "pm-moltening"
  },
  {
    type = "recipe-category",
    name = "pm-coldening"
  },
  {
    type = "recipe-category",
    name = "pm-circuitry"
  },
  {
    type = "recipe-category",
    name = "pm-voltatic-charging"
  },
  {
    type = "recipe-category",
    name = "pm-CO2-nullifying"
  },
  {
    type = "recipe-category",
    name = "pm-cracking"
  },
  {
    type = "recipe-category",
    name = "pm-air-filtering"
  },
  {
    type = "recipe-category",
    name = "pm-greenhousing"
  },
  {
    type = "recipe-category",
    name = "pm-bacteria-incubating"
  },
  {
    type = "recipe-category",
    name = "pm-electrolysis"
  },
  {
    type = "recipe-category",
    name = "pm-crystallisation"
  },
  {
    type = "recipe-category",
    name = "pm-cyclotroning"
  },
  {
    type = "recipe-category",
    name = "pm-burnining"
  },
  {
    type = "recipe-category",
    name = "pm-franciuming"
  },
  {
    type = "recipe-category",
    name = "pm-advanced-crafting-with-fluid"
  },
  {
    type = "recipe-category",
    name = "pm-leaching"
  },
  {
    type = "recipe-category",
    name = "pm-battery-charging"
  },
  {
    type = "recipe-category",
    name = "pm-fluid-burning"
  },


  --groups
  {
    type = "item-group",
    name = "pm-acids",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/fluids/acidic-water.png"
  },
  {
    type = "item-group",
    name = "pm-alloying",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/plates/brass-plate.png"
  },
  {
    type = "item-group",
    name = "pm-molding",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/circuitboard-mold.png"
  },
  {
    type = "item-group",
    name = "pm-multimetal-items",
    icon_size = 256,
    icon = "__periodic-madness__/graphics/technology/tempature-plating.png",
    order = "A"
  },
  {
    type = "item-group",
    name = "pm-circuitry",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/buildings/circuit-megassembler.png",
  },

  {
    type = "item-group",
    name = "pm-transition-metals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/transition-metals.jpeg",
    order = "e"
  },
  {
    type = "item-group",
    name = "pm-post-transition-metals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/post-transition-metals.jpeg",
    order = "ea"
  },
  {
    type = "item-group",
    name = "pm-reactive-non-metals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/reactive-non-metals.jpeg",
    order = "ec"
  },
  {
    type = "item-group",
    name = "pm-metalloids",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/metalloids.jpeg",
    order = "eb"
  },
  {
    type = "item-group",
    name = "pm-alkali-metals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/alkali-metals.jpeg",
    order = "ed"
  },
  {
    type = "item-group",
    name = "pm-alkaline-earth-metals",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/alkali-earth-metals.jpeg",
    order = "ee"
  },
  {
    type = "item-group",
    name = "pm-noble-gases",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/noble-gases.jpeg",
    order = "ef"
  },
  {
    type = "item-group",
    name = "pm-actinides",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/actinides.jpeg",
    order = "eg"
  },
  {
    type = "item-group",
    name = "pm-lathanides",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/groups/lathanides.jpeg",
    order = "eh"
  },
  {
    type = "item-group",
    name = "pm-voiding",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/nuh uh.png",
  },


  --subgroups

  {
    type = "item-subgroup",
    name = "pm-speed",
    group = "production",
    order = "g",
  },
  {
    type = "item-subgroup",
    name = "pm-efficiency",
    group = "production",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "pm-productivity",
    group = "production",
    order = "g"
  },

  {
    type = "item-subgroup",
    name = "pm-acids", --the acids themselves (eg. acidic water, HCl)
    group = "pm-acids",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "pm-acid-crafting", --acid production chains, how to make them
    group = "pm-acids",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-ezekiel-purifying", --ore chunk puryifying
    group = "pm-acids",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pm-advanced-ore-decomposition", --advanced TM leeching
    group = "pm-acids",
    order = "e"
  },

  {
    type = "item-subgroup",
    name = "pm-oil",
    group = "intermediate-products",
    order = "A"
  },
  {
    type = "item-subgroup",
    name = "pm-oil-cracking",
    group = "intermediate-products",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "pm-oil-reforming",
    group = "intermediate-products",
    order = "ab"
  },  
  {
    type = "item-subgroup",
    name = "pm-fuels",
    group = "intermediate-products",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-alloys",
    group = "intermediate-products",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "pm-glassing",
    group = "intermediate-products",
    order = "d",
  },
  {
    type = "item-subgroup",
    name = "pm-borosilicate-glassing",
    group = "intermediate-products",
    order = "da",
  },
  {
    type = "item-subgroup",
    name = "pm-wires",
    group = "intermediate-products",
    order = "db",
  },
  {
    type = "item-subgroup",
    name = "pm-gears",
    group = "intermediate-products",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "pm-intermediates",
    group = "intermediate-products",
    order = "f",
  }, 
  {
    type = "item-subgroup",
    name = "pm-batteries",
    group = "intermediate-products",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "pm-catalysts",
    group = "intermediate-products",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "pm-plastics",
    group = "intermediate-products",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "pm-plastic-science-process",
    group = "intermediate-products",
    order = "ia"
  },
  {
    type = "item-subgroup",
    name = "pm-resin",
    group = "intermediate-products",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "pm-modules",
    group = "intermediate-products",
    order = "k"
  },
  {
    type = "item-subgroup",
    name = "pm-circuits",
    group = "intermediate-products",
    order = "m"
  },
  {
    type = "item-subgroup",
    name = "pm-advanced-circuits",
    group = "intermediate-products",
    order = "ma"
  },
  {
    type = "item-subgroup",
    name = "pm-molded-circuits",
    group = "intermediate-products",
    order = "n"
  },
  {
    type = "item-subgroup",
    name = "pm-plastic-science-pack",
    group = "intermediate-products",
    order = "x"
  },
  {
    type = "item-subgroup",
    name = "pm-francium-science",
    group = "intermediate-products",
    order = "xa"
  },


  {
    type = "item-subgroup",
    name = "pm-voiding",
    group = "pm-voiding",
    order = "a"
  },

  
  {
    type = "item-subgroup",
    name = "pm-battery-machine",
    group = "production",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-heat-machines",
    group = "production",
    order = "b"
  },

  {
    type = "item-subgroup",
    name = "pm-water-machine",
    group = "production",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-oil-machine",
    group = "production",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-molten-machine",
    group = "production",
    order = "ef"
  },
  {
    type = "item-subgroup",
    name = "pm-crushing-machine",
    group = "production",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "pm-science-machine",
    group = "production",
    order = "f",
  },
  {
    type = "item-subgroup",
    name = "pm-atmospheric-machine",
    group = "production",
    order = "e",
  },

  {
    type = "item-subgroup",
    name = "pm-atmosphere-rnm",
    group = "pm-reactive-non-metals",
    order = "A"
  },
  {
    type = "item-subgroup",
    name = "pm-oxygen-rnm",
    group = "pm-reactive-non-metals",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "pm-chlorine-rnm",
    group = "pm-reactive-non-metals",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-nitrogen-rnm",
    group = "pm-reactive-non-metals",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pm-carbon-rnm",
    group = "pm-reactive-non-metals",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "pm-trace-gas-rnm",
    group = "pm-reactive-non-metals",
    order = "da"
  },
  {
    type = "item-subgroup",
    name = "pm-hydrogen-rnm",
    group = "pm-reactive-non-metals",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-bromine-rnm",
    group = "pm-reactive-non-metals",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "pm-sulfur-rnm",
    group = "pm-reactive-non-metals",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "pm-phosphorus-rnm",
    group = "pm-reactive-non-metals",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "pm-iodine-rnm",
    group = "pm-reactive-non-metals",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "pm-flourine-rnm",
    group = "pm-reactive-non-metals",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "pm-air-filters-rnm",
    group = "pm-reactive-non-metals",
    order = "ja"
  },
  {
    type = "item-subgroup",
    name = "pm-biostuff-rnm",
    group = "pm-reactive-non-metals",
    order = "k"
  },
  {
    type = "item-subgroup",
    name = "pm-greenhousing-rnm",
    group = "pm-reactive-non-metals",
    order = "m"
  },
  {
    type  = "item-subgroup",
    name  = "pm-acetonitrile-rnm",
    group = "pm-reactive-non-metals",
    order = "n",
  },
  {
    type  = "item-subgroup",
    name  = "pm-myostatin-rnm",
    group = "pm-reactive-non-metals",
    order = "o",
  },
  {
    type  = "item-subgroup",
    name  = "pm-CISD2-rnm",
    group = "pm-reactive-non-metals",
    order = "p",
  },

  {
    type = "item-subgroup",
    name = "pm-am-am",
    group = "pm-alkali-metals",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "pm-sodium-am",
    group = "pm-alkali-metals",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-lithium-am",
    group = "pm-alkali-metals",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pm-potassium-am",
    group = "pm-alkali-metals",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "pm-rubidium-am",
    group = "pm-alkali-metals",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-caesium-am",
    group = "pm-alkali-metals",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "pm-francium-am",
    group = "pm-alkali-metals",
    order = "g"
  },

  {
    type = "item-subgroup",
    name = "pm-tm-tm",
    group = "pm-transition-metals",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "pm-iron-tm",
    group = "pm-transition-metals",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "pm-copper-tm",
    group = "pm-transition-metals",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-nickel-tm",
    group = "pm-transition-metals",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "pm-zinc-tm",
    group = "pm-transition-metals",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "pm-manganese-tm",
    group = "pm-transition-metals",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "pm-gold-tm",
    group = "pm-transition-metals",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "pm-silver-tm",
    group = "pm-transition-metals",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "pm-mercury-tm",
    group = "pm-transition-metals",
    order = "k"
  },
  {
    type = "item-subgroup",
    name = "pm-molybdenum-tm",
    group = "pm-transition-metals",
    order = "l"
  },
  {
    type = "item-subgroup",
    name = "pm-gold-tm",
    group = "pm-transition-metals",
    order = "m"
  },
  {
    type = "item-subgroup",
    name = "pm-silver-tm",
    group = "pm-transition-metals",
    order = "n"
  },
  {
    type = "item-subgroup",
    name = "pm-titanium-tm",
    group = "pm-transition-metals",
    order = "o"
  },
  {
    type = "item-subgroup",
    name = "pm-tungsten-tm",
    group = "pm-transition-metals",
    order = "p"
  },
  {
    type = "item-subgroup",
    name = "pm-zirconium-tm",
    group = "pm-transition-metals",
    order = "q"
  },
  {
    type = "item-subgroup",
    name = "pm-cadnium-tm",
    group = "pm-transition-metals",
    order = "r"
  },
  {
    type = "item-subgroup",
    name = "pm-cobalt-tm",
    group = "pm-transition-metals",
    order = "s"
  },
  {
    type = "item-subgroup",
    name = "pm-vanadium-tm",
    group = "pm-transition-metals",
    order = "t"
  },
  {
    type = "item-subgroup",
    name = "pm-chrominum-tm",
    group = "pm-transition-metals",
    order = "u"
  },
  {
    type = "item-subgroup",
    name = "pm-palladium-tm",
    group = "pm-transition-metals",
    order = "v"
  },
  {
    type = "item-subgroup",
    name = "pm-platinum-tm",
    group = "pm-transition-metals",
    order = "w"
  },
  {
    type = "item-subgroup",
    name = "pm-yttrium-tm",
    group = "pm-transition-metals",
    order = "x"
  },

  {
    type = "item-subgroup",
    name = "pm-ptm-ptm",
    group = "pm-post-transition-metals",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "pm-molten-ptm",
    group = "pm-post-transition-metals",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pm-aluminium-ptm",
    group = "pm-post-transition-metals",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "pm-tin-ptm",
    group = "pm-post-transition-metals",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-bismuth-ptm",
    group = "pm-post-transition-metals",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "pm-indium-ptm",
    group = "pm-post-transition-metals",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "pm-lead-ptm",
    group = "pm-post-transition-metals",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "pm-thallium-ptm",
    group = "pm-post-transition-metals",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "pm-gallium-ptm",
    group = "pm-post-transition-metals",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "pm-polonium-ptm",
    group = "pm-post-transition-metals",
    order = "k"
  },
  {
    type = "item-subgroup",
    name = "pm-ruby-ptm",
    group = "pm-post-transition-metals",
    order = "l"
  },
  {
    type = "item-subgroup",
    name = "pm-citrine-ptm",
    group = "pm-post-transition-metals",
    order = "m"
  },
  {
    type = "item-subgroup",
    name = "pm-emerald-ptm",
    group = "pm-post-transition-metals",
    order = "n"
  },
  {
    type = "item-subgroup",
    name = "pm-sapphire-ptm",
    group = "pm-post-transition-metals",
    order = "o"
  },
  {
    type = "item-subgroup",
    name = "pm-lapis-lazuli-ptm",
    group = "pm-post-transition-metals",
    order = "p"
  },
  {
    type = "item-subgroup",
    name = "pm-garnet-ptm",
    group = "pm-post-transition-metals",
    order = "q"
  },

  {
    type = "item-subgroup",
    name = "pm-calcium-aem",
    group = "pm-alkaline-earth-metals",
    order = "a"
  },

  {
    type = "item-subgroup",
    name = "pm-mt-mt",
    group = "pm-metalloids",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "pm-boron-mt",
    group = "pm-metalloids",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-arsenic-mt",
    group = "pm-metalloids",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pm-antimony-mt",
    group = "pm-metalloids",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "pm-silicon-mt",
    group = "pm-metalloids",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-germanium-mt",
    group = "pm-metalloids",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "pm-tellurium-mt",
    group = "pm-metalloids",
    order = "g"
  },

  {
    type = "item-subgroup",
    name = "pm-helium-nb",
    group = "pm-noble-gases",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "pm-neon-nb",
    group = "pm-noble-gases",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-argon-nb",
    group = "pm-noble-gases",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pm-krypton-nb",
    group = "pm-noble-gases",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "pm-xenon-nb",
    group = "pm-noble-gases",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-radon-nb",
    group = "pm-noble-gases",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "pm-oganneson-nb",
    group = "pm-noble-gases",
    order = "g"
  },

  {
    type = "item-subgroup",
    name = "pm-actinium-ac",
    group = "pm-actinides",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "pm-thorium-ac",
    group = "pm-actinides",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-protactinium-ac",
    group = "pm-actinides",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pm-uranium-ac",
    group = "pm-actinides",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "pm-neptunium-ac",
    group = "pm-actinides",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-plutonium-ac",
    group = "pm-actinides",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "pm-americium-ac",
    group = "pm-actinides",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "pm-curium-ac",
    group = "pm-actinides",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "pm-berkelium-ac",
    group = "pm-actinides",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "pm-californium-ac",
    group = "pm-actinides",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "pm-einsteinium-ac",
    group = "pm-actinides",
    order = "k"
  },
  {
    type = "item-subgroup",
    name = "pm-fermium-ac",
    group = "pm-actinides",
    order = "m"
  },
  {
    type = "item-subgroup",
    name = "pm-mendelevium-ac",
    group = "pm-actinides",
    order = "n"
  },
  {
    type = "item-subgroup",
    name = "pm-nobelium-ac",
    group = "pm-actinides",
    order = "o"
  },
  {
    type = "item-subgroup",
    name = "pm-lawrencium-ac",
    group = "pm-actinides",
    order = "p"
  },

  {
    type = "item-subgroup",
    name = "pm-multimetal-tubing",
    group = "pm-multimetal-items",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-cr-tubing",
    group = "pm-multimetal-items",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-ab-tubing",
    group = "pm-multimetal-items",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-rr-tubing",
    group = "pm-multimetal-items",
    order = "d"
  },

  {
    type = "item-subgroup",
    name = "pm-multimetal-framing",
    group = "pm-multimetal-items",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-hw-framing",
    group = "pm-multimetal-items",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-lw-framing",
    group = "pm-multimetal-items",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-ht-framing",
    group = "pm-multimetal-items",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-cd-framing",
    group = "pm-multimetal-items",
    order = "i"
  },

  {
    type = "item-subgroup",
    name = "pm-multimetal-panelling",
    group = "pm-multimetal-items",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-hw-panelling",
    group = "pm-multimetal-items",
    order = "k"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-lw-panelling",
    group = "pm-multimetal-items",
    order = "l"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-ab-panelling",
    group = "pm-multimetal-items",
    order = "m"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-rr-panelling",
    group = "pm-multimetal-items",
    order = "n"
  },

  {
    type = "item-subgroup",
    name = "pm-multimetal-wiring",
    group = "pm-multimetal-items",
    order = "o"
  },
  {
    type = "item-subgroup",
    name = "pm-multimetal-temp-plates",
    group = "pm-multimetal-items",
    order = "p"
  },

  {
    type = "item-subgroup",
    name = "pm-shotgun-ammo",
    group = "combat",
    order = "ba",
  },
  {
    type = "item-subgroup",
    name = "pm-modular-equipment",
    group = "combat",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "pm-modular-power",
    group = "combat",
    order = "ea",
  },
  {
    type = "item-subgroup",
    name = "pm-modular-storage",
    group = "combat",
    order = "eb",
  },
  {
    type = "item-subgroup",
    name = "pm-fuel-rods",
    group = "combat",
    order = "ec",
  },

  {
    type = "item-subgroup",
    name = "pm-belts",
    group = "logistics",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "pm-undergrounds",
    group = "logistics",
    order = "ba"
  },
  {
    type = "item-subgroup",
    name = "pm-splitters",
    group = "logistics",
    order = "bb"
  },
})
