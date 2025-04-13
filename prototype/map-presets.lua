data:extend({
  {
    type = "map-gen-presets",
    name = "default",
    order = "a",
    {
      ["pm-periodic-default"] =
      {
        order = "A",
        default = true,
        basic_settings =
        {
          property_expression_names = {},
          autoplace_controls =
          {
            coal =
            {
              frequency = 0.5,
              size = 3
            },
            ["copper-ore"] =
            {
              frequency = 0.5,
              size = 3
            },
            ["crude-oil"] =
            {
              frequency = 0.5,
              size = 3
            },
            ["uranium-ore"] =
            {
              frequency = 0.5,
              size = 3
            },
            ["iron-ore"] =
            {
              frequency = 0.5,
              size = 3
            },
            stone =
            {
              frequency = 0.5,
              size = 3
            },
            ["enemy-base"] =
            {
              size = 1
            },
            water = {frequency = 0.5, size = 1.5}
          },
        },
        advanced_settings =
        {
          enemy_evolution =
          {
            time_factor = 0.000002
          },
        }
      }
    }
  }
})