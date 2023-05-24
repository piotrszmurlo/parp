module Rules.Utils where
    
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
    "",
    "zastanow_sie  -> Zobacz co ci w sercu gra",
    "rozejrzyj_sie  -> Zobacz co jest wokół ciebie",
    "podejdz Osoba  -> Spróbuj podejść i porozmawiać z daną osobą",
    "pomocy  -> Zobacz podpowiedź",
    "komendy  -> Pokaż tę listę",
    ""
    ]

unknownCommandText = ["Nieznana komenda. Uzyj <pomoc> aby uzyskać listę dostępnych komend", ""]

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