--resistances for enemies and how they should scale:
--Penetrative: 
    -- -50%, -25%, 25%, 50% for biters
    -- 0%, 25%, 50%, 75% for spitters/worms
    -- -25% for biter nests
--Phsyical:
    -- 0, 4/10%, 8/10%, 12/10% for biters
    -- 0, 0, 0, 0 for spitters
    -- 0, 5/0%, 10/0%, 10/0% for worms
    -- 2/15% for nests
--Fire
    -- 0, 0, 15%, 10/25% for biters
    -- 0, 0, 5%, 2/15% for spitters
    -- 0, 2/50%, 3/70%, 3/70% for worms
    -- 3/60% for nests
-- Explosion:
    -- 0, 10%, 12%, 12/10% for biters
    -- 0, 10%, 15%, 6/30% for spitters
    -- 0, 5/15%, 10/30%, 10/30% for worms
    -- 5 for nests
--Acid:
    -- 0, 0, 0, 0 for biters
    -- 2.5%, 2/5%, 5/25%, 10/50% for spitters/worms
    -- 0 for nests
--Posion:
    -- 0, 0, 0, 5% for biters
    -- 0, 2.5, 2/5%, 10/25% for spitters
    -- 0, 0, 0, 0 for worms
    -- 0 for nests

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
    pecent = 12
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
    type = "poison",
    percent = 2.5
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
      percent = 15
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
        decrease = 2,
        percent = 5
    },
    {
      type = "acid",
      decrease = 5,
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
    },
    {
        type = "poison",
        percent = 5
    }
  }
  data.raw["unit"]["behemoth-spitter"].resistances =
  {
    {
      type = "explosion",
      decrease = 6,
      percent = 30
    },
    {
      type = "fire",
      decrease = 2,
      percent = 15
    },
    {
      type = "poison",
      decrease = 5,
      percent = 25
    },
    {
      type = "acid",
      decrease = 10,
      percent = 50
    },
    {
      type = "pm-penetrative",
      percent = 75
    }
  }