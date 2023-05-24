module Rules.State where

data State = State
  { 
    endingNumber :: Integer,
    stateName :: String
  }

isGameInProgress :: State -> Bool
isGameInProgress state = endingNumber state == 0

initialState =
  State
    6
    "Ostrzezenie"