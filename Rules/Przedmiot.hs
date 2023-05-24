module Rules.Przedmiot where

data Przedmiot = Przedmiot
  { nazwa :: String,
    opis :: [String],
  }
  deriving (Eq)
