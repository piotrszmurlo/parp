module Rules.State where

data Name = Ostrzezenie | Intro
data State = State
  { 
    endingNumber :: Integer,
    stateName :: Name
  }

isGameInProgress :: State -> Bool
isGameInProgress state = endingNumber state == 0

initialState =
  State
    0
    Ostrzezenie