module Rules.State where

data Person = Person { name :: String, response :: String, isAvailable :: Bool }
data Name = Ostrzezenie | Intro | Karczma | Pijatyka_karczemna | Burdel | Pobudka_loch | Loch | Korytarz_loch | Minigame_loch | Sala_tronowa | Propozycja | Ponowna_propozycja
data State = State
  { 
    endingNumber :: Integer,
    stateName :: Name,
    choices :: (Bool, Bool, Bool),
    people :: [String]
  }

isGameInProgress :: State -> Bool
isGameInProgress state = endingNumber state == 0

unlockChoices :: State -> Bool -> Bool -> Bool -> State
unlockChoices state unlock1 unlock2 unlock3 = state { choices = (unlock1, unlock2, unlock3) }


initialState :: State
initialState =
    State
        { endingNumber = 0,
          stateName = Ostrzezenie,
          choices = (False, False, False)
          people = []
        }
