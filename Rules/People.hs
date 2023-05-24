module Rules.People where
import Rules.State
import Rules.Utils
import Data.Map (Map)
import qualified Data.Map as Map

type PersonName = String
type StateName = String
type Description = [String]

type ApproachMap = Map (PersonName, StateName) Description

approachMessages :: ApproachMap
approachMessages = Map.fromList
  [ (("willy", "Karczma"), "Hello, I'm John in StateA."),
    (("willy", "Pijatyka_karczemna"), "Hello, I'm John in StateB."),
    (("sil", "Karczma"), "Hi, I'm Alice in StateA."),
    (("sil", "Pijatyka_karczemna"), "Hi, I'm Alice in StateC.")
    (("recepcjonistka", "Burdel"), "Hi, I'm Alice in StateC.")
    (("eline", "Burdel"), ["Dosiadłem się do Eline, która czekała po drugiej stronie atrium. Od razu by nie zostawać w tyle podeszła do nas Karla."])
    (("karla", "Burdel"), ["Dosiadłem się do Karli, która czekała po drugiej stronie atrium. Od razu by nie zostawać w tyle podeszła do nas Eline."])
    (("strażnik", "Pobudka_loch"), "Hi, I'm Alice in StateC.")
    (("król", "Sala_tronowa"), "Hi, I'm Alice in StateC.")
    (("król", "Propozycja"), "Hi, I'm Alice in StateC.")
    (("król", "Ponowna_propozycja"), "Hi, I'm Alice in StateC.")
  ]

rozejrzyj_sie :: State -> State
rozejrzyj_sie personName state =
  state { people = newPeople }
  where
    currentStateName = stateName state
    relevantPeople = Map.keys $ Map.filterWithKey (\(_, s) _ -> s == currentStateName) approachMessages
    newPeople = relevantPeople ++ people state

podejdz :: PersonName -> State -> IO ()
podejdz personName state = do
  case Map.lookup (personName, stateName state) helpMessages of
    Just description -> putStrLn description
    Nothing -> putStrLn "Person or state not found."