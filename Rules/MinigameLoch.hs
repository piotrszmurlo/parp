module Rules.MinigameLoch where
import Rules.State
import Rules.Utils
import Control.Monad (forM_, when)

minigameLochState =
  State
    0
    MinigameLoch
    minigameLochText
    minigameLochHelpText
    minigameLochThinkText
    False
    False
    False
    [""]

minigameLochText =  ["Z nową determinacją bierzesz los w swoje ręce"]
minigameLochHelpText = ["Moze warto podnies(ć) przedmioty lezące na ziemi i je polacz(yć)? Tylko szybko, mam tylko [4] chwile"]
minigameLochThinkText = ["Hmm... moze udałoby mi się jakoś otworzyć tę celę jakimś zagiętym kawałkiem metalu...?"]

przejscieKoloStraznikowText = ["Wchodzisz do korytarza na środku którego stoi obrócony plecami straznik. Dobrze, ze trzymasz w ręku kamień.",
                              "Kamień łączy się z głową zdezorientowanego straznika. Zakładasz jego zbroję, aby nie zwrócić na siebie uwagi i idziesz dalej.",
                              "Mijasz się z grupą strazników. Jest tam ten z poprzedniej warty.",
                              "Zeby mnie tylko nie rozpoznał... "
                              ]
przejscieKoloStraznikowSuccessText = ["Straznicy przechodzą obok niewzruszeni.",
                                      "Uf, dobrze, ze nie próbowałem się z nim zaznajomić"
                              ]
przejscieKoloStraznikowFailText = ["Znajomy ci straznik zwraca na ciebie uwagę...",
                                    "> Skądś cię kojarze...",
                                    "Popatrzył podejrzliwie i chwilę się zastanawiał. Odór alkoholu na pewno zagrał tu kluczową rolę...",
                                    "> Brać go!"
                              ]
folkisAfterText = ["Cześć przystojniaku - wyszczerzyła się do mnie morda strażnika zza więziennych krat,",
                    "które bez powodzenia próbowałem właśnie sforsować. - Twoja randka zdaje się na ciebie już czekać.",
                    "z paskudnym chichotem odsunął się ukazując patrzącego na mnie beznamiętnie muskularnego olbrzyma w czerwonym kapturze..."
                  ]
minigameLoop :: Int -> Bool -> Bool -> Bool -> IO Bool --true jeśli wygrałeś, false jeśli przegrałeś
minigameLoop turns stone clothes pot
  | turns <= 0 = return False
  | otherwise = do
    putStrLn $ "Zostało czasu: " ++ show turns
    cmd <- readCommand
    case cmd of
      "podnies" -> do
        putStrLn "Co bym chciał podnieść?"
        item <- readCommand
        case item of
          "Ubrania" ->  do
                        printLines ["W ubraniach jest pasek z metalową sprzączką.", "Mógłbym ją zgiąć i zrobić z niej wytrych, ale potrzebuje do tego czegoś twardego."]
                        minigameLoop (turns - 1) stone True pot
          "Miska" ->    do
                        printLines ["Szkoda, ze w tej misce nie ma wody..."]
                        minigameLoop (turns - 1) stone clothes True
          "Kamień" ->   do
                        printLines ["Spory kamień.", "Moze przywalę temu straznikowi w łeb?"]
                        minigameLoop (turns - 1) True clothes pot
          _ ->          do
                        printLines ["Nie ma tu takiej rzeczy..."]
                        minigameLoop turns stone clothes pot
      "polacz" -> do
                  if stone && clothes
                    then do
                      printLines ["Któz by pomyślał, ze da się z paska zrobić taki ładny wytrych.", "Udało ci się otworzyć kłódkę!"]
                      return True
                    else do
                      printLines ["Straciłem chwilę na kombinowanie z tym co udało mi się znaleźć", "Z tymi śmieciami nie mogę na razie zrobić wytrycha..."]
                      minigameLoop (turns - 1) stone clothes pot
      "komendy" ->  do
                    printLines availableCommandsText
                    printLines ["\nTo ten moment. Odkryłeś dodatkowe komendy:", "podnies -> podnieś przedmiot który zobaczyłeś", "połącz -> spróbuj połączyć przedmioty które masz ze sobą"]
                    minigameLoop turns stone clothes pot
      "zastanow_sie" -> do
                        printLines ["Hmm... moze udałoby mi się jakoś otworzyć tę celę jakimś zagiętym kawałkiem metalu...?"]
                        minigameLoop (turns - 1) stone clothes pot
      "rozejrzyj_sie" ->  do
                          printLines ["Na podłodze lezą: Kamień, Miska i Ubrania"]
                          minigameLoop (turns - 1) stone clothes pot
      "podejdz" -> do
                    printLines ["Nie ma tu teraz nikogo"]
                    minigameLoop turns stone clothes pot
      "pomocy" -> do
                  printLines ["Moze warto podnies(ć) przedmioty lezące na ziemi i je polacz(yć)?", "Muszę się sprężać, zostało mało czasu"]
                  minigameLoop (turns - 1) stone clothes pot
      _ -> do printUnknownCommand
              minigameLoop turns stone clothes pot
