module Rules.State where

data Name = Ostrzezenie | KarczmaIntro
data State = State
  {
    endingNumber :: Integer,
    stateName :: Name,
    stateText :: [String],
    helpText :: [String],
    lookAroundText :: [String],
    thinkText :: [String]
  }

isGameInProgress :: State -> Bool
isGameInProgress state = endingNumber state == 0

initialState =
  State
    0
    Ostrzezenie
    [""]
    ["helpOstrzezenie"]
    [""]
    [""]
