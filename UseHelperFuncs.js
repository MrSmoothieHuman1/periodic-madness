const fs = require('fs').promises

/***
 * @type [RegExp, string][]
 */
const regex_and_replace_array = [
  //MARK: Ingredients
  [ // Ingredient Shorthand
    /(?<=ingredients =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?<name>"[^"]*")\s*,\s*(?<amount>\d+)\s*}/g,
    "PM.ingredient($<name>, $<amount>)"
  ],
  [ // Ingredient Item
    /(?<=ingredients =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.ingredient($<name>, $<amount>)'
  ],
  [ // Catalyst Ingredient Item
    /(?<=ingredients =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_ingredient($<name>, $<amount>, $<catalyst_amount>)'
  ],
  [ // Ingredient Fluid
    /(?<=ingredients =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.ingredient($<name>, $<amount>, "fluid")'
  ],
  [ // Catalyst Ingredient Fluid
    /(?<=ingredients =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_ingredient($<name>, $<amount>, $<catalyst_amount>, "fluid")'
  ],

  //MARK: Product Items
  [ // Product Shorthand
    /(?<=results =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?<name>"[^"]*")\s*,\s*(?<amount>\d+)\s*}/g,
    'PM.product($<name>, $<amount>)'
  ],
  [ // Product Item
    /(?<=results =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.product($<name>, $<amount>)'
  ],
  [ // Product Item Range
    /{\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:\.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.product_range($<name>, $<amount_min>, $<amount_max>)'
  ],
  [ // Product Item Chance
    /{\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?=[^{}]*probability = (?<probability>\d+(?:\.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.product_chance($<name>, $<amount>, $<probability>)'
  ],
  [ // Product Item Rance Chance
    /{\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?=[^{}]*probability = (?<probability>\d+(?:\.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:\.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.product_range_chance($<name>, $<amount_min>, $<amount_max>, $<probability>)'
  ],

  //MARK: Product Fluids
  [ // Product Fluid
    /(?<=results =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.product($<name>, $<amount>, "fluid")'
  ],
  [ // Product Fluid Range
    /{\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:\.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.product_range($<name>, $<amount_min>, $<amount_max>, "fluid")'
  ],
  [ // Product Fluid Chance
    /{\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?=[^{}]*probability = (?<probability>\d+(?:\.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.product_chance($<name>, $<amount>, $<probability>, "fluid")'
  ],
  [ // Product Fluid Range Chance
    /{\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount =)(?=[^{}]*probability = (?<probability>\d+(?:\.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:\.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.product_range_chance($<name>, $<amount_min>, $<amount_max>, $<probability>, "fluid")'
  ],


  //MARK: Catalyst Items
  [ // Catalyst Item
    /(?<=results =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_a($<name>, $<amount>, $<catalyst_amount>)'
  ],
  [ // Catalyst Item Range
    /{\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:\.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_range($<name>, $<amount_min>, $<amount_max>, $<catalyst_amount>)'
  ],
  [ // Catalyst Item Chance
    /{\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?=[^{}]*probability = (?<probability>\d+(?:\.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_chance($<name>, $<amount>, $<probability>, $<catalyst_amount>)'
  ],
  [ // Catalyst Item Rance Chance
    /{\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?=[^{}]*probability = (?<probability>\d+(?:\.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:\.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_range_chance($<name>, $<amount_min>, $<amount_max>, $<probability>, $<catalyst_amount>)'
  ],

  //MARK: Catalyst Fluids
  [ // Catalyst Fluid
    /(?<=results =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_a($<name>, $<amount>, $<catalyst_amount>, "fluid")'
  ],
  [ // Catalyst Fluid Range
    /{\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?![^{}]*probability =)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:\.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_range($<name>, $<amount_min>, $<amount_max>, $<catalyst_amount>, "fluid")'
  ],
  [ // Catalyst Fluid Chance
    /{\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?=[^{}]*probability = (?<probability>\d+(?:\.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_chance($<name>, $<amount>, $<probability>, $<catalyst_amount>, "fluid")'
  ],
  [ // Catalyst Fluid Range Chance
    /{\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:\.\d+)?))(?=[^{}]*probability = (?<probability>\d+(?:\.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:\.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_range_chance($<name>, $<amount_min>, $<amount_max>, $<probability>, $<catalyst_amount>, "fluid")'
  ],

  //MARK: Technology Effects
  [ // Unlock Recipe
    /{\s*(?=[^{}]*type = "unlock-recipe")(?=[^{}]*recipe = (?<recipe>"[^"]+"))[^{}]*}/g,
    'PM.unlock_recipe($<recipe>)'
  ],

  [ // Give Item //FIXME: Split into two so the count can truly be optional
    /{\s*(?=[^{}]*type = "give-item")(?=[^{}]*item = (?<item>"[^"]+"))(?:[^{}]*count = (?<count>\d+))?[^{}]*}/g,
    'PM.give_item($<item>, $<count>)'
  ],

  [ // Modify Parameter
    /{\s*(?=[^{}]*type = (?<type>"[^"]+"))(?![^{}]*ammo_category =)(?![^{}]*turret_id =)(?=[^{}]*modifier = (?<modifier>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.modify($<type>, $<modifier>)'
  ],
  [ // Modify Ammo
    /{\s*(?=[^{}]*type = (?<type>"(?:ammo-damage|gun-speed)"))(?=[^{}]*ammo_category = (?<ammo_category>"[^"]+"))(?=[^{}]*modifier = (?<modifier>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.modify_ammo($<type>, $<ammo_category>, $<modifier>)'
  ],
  [ // Modify Turret attack
    /{\s*(?=[^{}]*type = "turret-attack")(?=[^{}]*turret_id = )(?=[^{}]*modifier = (?<modifier>\d+(?:\.\d+)?))[^{}]*}/g,
    'PM.modify_turret($<turret_id>, $<modifier>)'
  ],

  [ // Modify nothing
    /{\s*(?=[^{}]*type = "nothing")[^{}]*}/g,
    'PM.modify_nothing()'
  ],
]
if (process.argv.length !== 3) {
  console.error("Takes in a single argument that is the path of the file being modified")
  process.exit(1)
}

/**
 * @param filepath string
 * @returns Promise<string>
 */
async function readFile(filepath) {
  const data = await fs.readFile(filepath);
  return data.toString();
}

(async () => {
  debugger
  let given_path = process.argv[2]
  let path_type = await fs.stat(given_path)

  let files
  if (path_type.isFile()) {
    files = [given_path]
    given_path = ""

  } else if (path_type.isDirectory()) {
    files = await fs.readdir(given_path)

  } else {
    console.error("The given path has to either be a directory or file")
    process.exit(1)
  }

  let promises = []
  for (let index = 0; index < files.length; index++) {
    const file = given_path+files[index];
    if ((await fs.stat(file)).isDirectory()) continue

    promises[promises.length] = (async () => {
      let file_contents = await readFile(file)
      
      const startTime = performance.now()
      for (const regex_and_replace of regex_and_replace_array) {
        file_contents = file_contents.replace(regex_and_replace[0], regex_and_replace[1])
      }
      const endTime = performance.now()
      console.log(`Replaced all ingredients and products within ${file} in ${endTime-startTime} milliseconds`)

      await fs.rename(file, file+".bak")
      await fs.writeFile(file, file_contents)
    })();
  }

  await Promise.all(promises)
  console.log(`Files backed up and replaced with processed versions.`)
})();
