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

minigameLochText =  ["minigameLochText"]
minigameLochHelpText = ["Moze warto podnies(ć) przedmioty lezące na ziemi i je polacz(yć)? Tylko szybko, mam tylko [4] chwile"]
minigameLochThinkText = ["Hmm... moze udałoby mi się jakoś otworzyć tę celę jakimś zagiętym kawałkiem metalu...?"]

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
                  if stone && pot
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
