module Rules.State where

data Name = Ostrzezenie | KarczmaIntro | KarczmaPijatyka | PobudkaLoch | MinigameLoch | Burdel | SalaTronowa | Propozycja | PonownaPropozycja
data State = State
  {
    endingNumber :: Integer,
    stateName :: Name,
    stateText :: [String],
    helpText :: [String],
    thinkText :: [String],
    optionOneEnabled :: Bool,
    optionTwoEnabled :: Bool,
    optionThreeEnabled :: Bool,
    people :: [String]
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
    False
    False
    False
    [""]
