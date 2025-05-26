--resistances for enemies and how they should scale:
--Penetrative: 
    -- -50%, -25%, 25%, 50% for biters
    -- 0%, 25%, 50%, 75% for spitters/worms
    -- -25% for biter nests
--Phsyical:
    -- 0, 4/10%, 8/10%, 12/10% for biters
    -- 0, 0, 0, 0 for spitters
    -- 

--MARK: Small
data.raw["unit"]["small-biter"].resistances =
{
  {
    type = "pm-penetrative",
    percent = -50
  },
  {
    type = "explosion",
    pecent = -5
  }
}
data.raw["unit"]["small-spitter"].resistances =
{
  {
    type = "acid",
    percent = 2.5
  },
}

--MARK: Medium
data.raw["unit"]["medium-biter"].resistances =
{
  {
    type = "physical",
    decrease = 4,
    percent = 10
  },
  {
    type = "pm-penetrative",
    percent = -25
  },
  {
    type = "explosion",
    pecent = 10
  }
}
data.raw["unit"]["medium-spitter"].resistances =
{
  {
    type = "explosion",
    pecent = 10
  },
  {
    type = "acid",
    decrease = 2,
    percent = 5
  },
  {
    type = "pm-penetrative",
    percent = 25
  }
}

--MARK: Big
data.raw["unit"]["big-biter"].resistances =
  {
    {
      type = "physical",
      decrease = 8,
      percent = 10
    },
    {
      type = "explosion",
      percent = 10
    },
    {
      type = "fire",
      percent = 15
    },
    {
      type = "pm-penetrative",
      percent = 25
    }
  }
  data.raw["unit"]["big-spitter"].resistances =
  {
    {
      type = "explosion",
      percent = 15
    },
    {
      type = "fire",
      percent = 5
    },
    {
      type = "poison",
      decrease = 10,
      percent = 25
    },
    {
      type = "acid",
      decrease = 10,
      percent = 25
    },
    {
      type = "pm-penetrative",
      percent = 50
    }
  }
--MARK: Behemoth
  data.raw["unit"]["behemoth-biter"].resistances =
  {
    {
      type = "physical",
      decrease = 12,
      percent = 10
    },
    {
      type = "explosion",
      decrease = 12,
      percent = 10
    },
    {
      type = "fire",
      decrease = 10,
      percent = 25
    },
    {
      type = "pm-penetrative",
      percent = 50
    }
  }
  data.raw["unit"]["behemoth-spitter"].resistances =
  {
    {
      type = "explosion",
      percent = 30
    },
    {
      type = "fire",
      decrease = 2,
      percent = 15
    },
    {
      type = "poison",
      decrease = 15,
      percent = 40
    },
    {
      type = "acid",
      decrease = 40,
      percent = 50
    },
    {
      type = "pm-penetrative",
      percent = 75
    }
  }