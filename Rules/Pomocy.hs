module Rules.Help where
import Rules.State
import Rules.Utils

type HelpMessage = [String]

displayHelp :: State -> HelpMessage
displayHelp state = case Map.lookup (stateName state) helpMessages of
    Just message -> message
    Nothing -> ["Unknown state"]

helpMessages :: Map.Map State ThinkMessage
helpMessages = Map.fromList
  [ (Ostrzezenie, ["PLACEHOLDER!"]),
   (Intro, ["PLACEHOLDER!"]),
   (Karczma, ["Może warto chwilę posiedzieć i posłuchać dalszej dyskusji?"]),
   (Pijatyka_karczemna, [ "Msze, *hic*, jszcz troh alllk?"]),
   (Burdel, ["Te ślicznotki z pewnością chcą posłuchać o moich wspaniałych dokonaniach"]),
   (Pobudka_loch, ["Moze by ktoś mi powiedział co tu robię...?"]),
   (Loch, ["Muszę pomyśleć nad tym co powinienem zrobić..."]),
   (Korytarz_loch, ["PLACEHOLDER!"]),
   (Minigame_loch, ["Moze warto podnies(ć) przedmioty lezące na ziemi i je polacz(yć)? Tylko szybko, mam tylko [4] chwile"]),
   (Sala_tronowa, ["Muszę się zastanowić nad odpowiedzią jakiej udzielę." ]),
   (Propozycja, ["Muszę się zastanowić nad odpowiedzią jakiej udzielę."]),
   (Ponowna_propozycja, ["Muszę pomyśleć nad planem działania!"])
  ]

pomocy :: State -> State
pomocy state = do
  displayHelp state
  state