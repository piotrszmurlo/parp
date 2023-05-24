module Rules.State where

data State = State
  { endingNumber :: Integer
  }

isGameInProgress :: State -> Bool
isGameInProgress state = endingNumber state == 0

initialState =
  State
    6