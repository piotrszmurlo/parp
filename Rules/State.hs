module Rules.State where

data Name = Ostrzezenie | Intro | Karczma | Pijatyka_karczemna | Burdel | Pobudka_loch | Loch | Korytarz_loch | Minigame_loch | Sala_tronowa | Propozycja | Ponowna_propozycja
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