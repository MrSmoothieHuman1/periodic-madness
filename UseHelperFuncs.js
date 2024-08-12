const fs = require('fs').promises

/***
 * @type [RegExp, string][]
 */
const regex_and_replace_array = [
  [ // Ingredient Shorthand
    /(?<=ingredients =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?<name>"[^"]*")\s*,\s*(?<amount>\d+)\s*}/g,
    "PM.ingredient($<name>, $<amount>)"
  ],
  [ // Ingredient Item
    /(?<=ingredients =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.ingredient($<name>, $<amount>)'
  ],
  [ // Ingredient Fluid
    /(?<=ingredients =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.ingredient($<name>, $<amount>, "fluid")'
  ],

  [ // Product Shorthand
    /(?<=results =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?<name>"[^"]*")\s*,\s*(?<amount>\d+)\s*}/g,
    'PM.product($<name>, $<amount>)'
  ],
  [ // Product Item
    /(?<=results =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.product($<name>, $<amount>)'
  ],
  [ // Product Item Range
    /{\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.product_range($<name>, $<amount_min>, $<amount_max>)'
  ],
  [ // Product Item Chance
    /{\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?=[^{}]*probability = (?<probability>\d+(?:.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.product_chance($<name>, $<amount>, $<probability>)'
  ],
  [ // Product Item Rance Chance
    /{\s*(?![^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?=[^{}]*probability = (?<probability>\d+(?:.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.product_range_chance($<name>, $<amount_min>, $<amount_max>, $<probability>)'
  ],

  [ // Product Fluid
    /(?<=results =\s+{(?:[^{}]|{[^{}]*})*?){\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.product($<name>, $<amount>, "fluid")'
  ],
  [ // Product Fluid Range
    /{\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.product_range($<name>, $<amount_min>, $<amount_max>, "fluid")'
  ],
  [ // Product Fluid Chance
    /{\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?=[^{}]*probability = (?<probability>\d+(?:.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.product_chance($<name>, $<amount>, $<probability>, "fluid")'
  ],
  [ // Product Fluid Range Chance
    /{\s*(?=[^{}]*type = "fluid")(?![^{}]*catalyst_amount = \d+(?:.\d+)?)(?=[^{}]*probability = (?<probability>\d+(?:.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.product_range_chance($<name>, $<amount_min>, $<amount_max>, $<probability>, "fluid")'
  ],


  [ // Catalyst Item
    /{\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:.\d+)?))(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.catalyst_a($<name>, $<amount>, $<catalyst_amount>)'
  ],
  [ // Catalyst Item Range
    /{\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:.\d+)?))(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_range($<name>, $<amount_min>, $<amount_max>, $<catalyst_amount>)'
  ],
  [ // Catalyst Item Chance
    /{\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:.\d+)?))(?=[^{}]*probability = (?<probability>\d+(?:.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_chance($<name>, $<amount>, $<probability>, $<catalyst_amount>)'
  ],
  [ // Catalyst Item Rance Chance
    /{\s*(?![^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:.\d+)?))(?=[^{}]*probability = (?<probability>\d+(?:.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_range_chance($<name>, $<amount_min>, $<amount_max>, $<probability>, $<catalyst_amount>)'
  ],

  [ // Catalyst Fluid
    /{\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:.\d+)?))(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.catalyst_a($<name>, $<amount>, $<catalyst_amount>, "fluid")'
  ],
  [ // Catalyst Fluid Range
    /{\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:.\d+)?))(?![^{}]*probability = \d+(?:.\d+)?)(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_range($<name>, $<amount_min>, $<amount_max>, $<catalyst_amount>, "fluid")'
  ],
  [ // Catalyst Fluid Chance
    /{\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:.\d+)?))(?=[^{}]*probability = (?<probability>\d+(?:.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*(?<!_)amount = (?<amount>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_chance($<name>, $<amount>, $<probability>, $<catalyst_amount>, "fluid")'
  ],
  [ // Catalyst Fluid Range Chance
    /{\s*(?=[^{}]*type = "fluid")(?=[^{}]*catalyst_amount = (?<catalyst_amount>\d+(?:.\d+)?))(?=[^{}]*probability = (?<probability>\d+(?:.\d+)?))(?=[^{}]*name = (?<name>"[^"]*"))(?=[^{}]*amount_min = (?<amount_min>\d+(?:.\d+)?))(?=[^{}]*amount_max = (?<amount_max>\d+(?:.\d+)?))[^{}]*}/g,
    'PM.catalyst_a_range_chance($<name>, $<amount_min>, $<amount_max>, $<probability>, $<catalyst_amount>, "fluid")'
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
  let file_contents = await readFile(process.argv[2])
  
  const startTime = performance.now()
  for (const regex_and_replace of regex_and_replace_array) {
    file_contents = file_contents.replace(regex_and_replace[0], regex_and_replace[1])
  }
  const endTime = performance.now()
  console.log(`Replaced all ingredients and products in ${endTime-startTime} milliseconds`)
  
  await fs.writeFile(`${process.argv[2]}-new`, file_contents)
  console.log(`Replaced output saved to '${process.argv[2]}-new'`)
})();
