module Rules.Utils where
import Rules.State
import Rules.KarczmaIntro
import Data.IORef
import System.IO.Unsafe

explicitWarningText = [
    "Witaj w grze 'Słów kilka o szkodliwości alkoholu'",
    "",
    "Ze względu na skłonność do alkoholizmu, przekleństwa i cynizm",
    "protagonisty zalecana jest ona dla pełnoletnich graczy.",
    "Jeśli jesteś pełnoletni bądź posiadasz zgodę opiekunów prawnych,",
    "wybierz użyj funkcji <podpisz> . Jeśli nie, użyj funkcji <koniec>",
    ""
    ]

availableCommandsText = [
    "Dostępne komendy:",
    "zastanow_sie   -> Zobacz co ci w sercu gra",
    "rozejrzyj_sie  -> Zobacz co jest wokół ciebie",
    "podejdz        -> Spróbuj podejść i porozmawiać z daną osobą",
    "pomocy  -> Zobacz podpowiedź",
    "komendy  -> Pokaż tę listę",
    "UWAGA! Mogą istnieć inne (tajne) komendy dostępne tylko w wybranych momentach gry!",
    ""
    ]

unknownCommandText = ["Nieznana komenda. Uzyj <komendy> aby uzyskać listę dostępnych komend", ""]

printExplicitWarning = printLines explicitWarningText
printAvailableCommands = printLines availableCommandsText
printUnknownCommand = printLines unknownCommandText

readCommand :: IO String
readCommand = do
    putStr "> "
    xs <- getLine
    return xs

-- print strings from list in separate lines
printLines :: [String] -> IO ()
printLines xs = putStr (unlines xs)

printStateText :: State -> IO()
printStateText state = printLines (stateText state)

printCommandsText :: State -> IO()
printCommandsText state = printLines availableCommandsText

sign :: State -> State
sign state =
    case stateName state of
        Ostrzezenie -> karczmaIntroState
        otherwise -> state

-- parametr 2 lub 3 -> ilosc opcji do odblokowania
unlockChoices :: State -> Int -> State
unlockChoices state numberOfOptions
    | numberOfOptions == 2 = state { optionOneEnabled = True, optionTwoEnabled = True}
    | numberOfOptions == 3 = state { optionOneEnabled = True, optionTwoEnabled = True, optionThreeEnabled = True}
    | otherwise = state


-- achivements

czarusCounter :: IORef Int
czarusCounter = unsafePerformIO (newIORef 0)
{-# NOINLINE czarusCounter #-}

achivementCzarus :: Bool -> IO Int
achivementCzarus increment = atomicModifyIORef' czarusCounter $ \n ->
  if increment
    then (n + 1, n + 1)
    else (n, n)

--value1 <- incrementCounter True  // 1
--value2 <- incrementCounter True  // 2
--value3 <- incrementCounter False // 2
--value4 <- incrementCounter True  // 3

-- to do wyrzucenia pozniej
debugEndState1 =
  State
    1
    Ostrzezenie
    [""]
    [""]
    [""]
    False
    False
    False
    [""]

debugEndState2 =
  State
    2
    Ostrzezenie
    [""]
    [""]
    [""]
    False
    False
    False
    [""]

debugEndState3 =
  State
    3
    Ostrzezenie
    [""]
    [""]
    [""]
    False
    False
    False
    [""]
