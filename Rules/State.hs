module Rules.State where

data Name = Ostrzezenie | KarczmaIntro | KarczmaPijatyka | PobudkaLoch | Burdel
data State = State
  {
    endingNumber :: Integer,
    stateName :: Name,
    stateText :: [String],
    helpText :: [String],
    lookAroundText :: [String],
    thinkText :: [String],
    optionOneEnabled :: Bool,
    optionTwoEnabled :: Bool,
    optionThreeEnabled :: Bool
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
    False
    False
    False
