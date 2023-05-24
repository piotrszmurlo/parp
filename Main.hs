module Main where
import Rules.Utils
import Rules.Endings
import Rules.State

gameIteration :: State -> IO ()
gameIteration state = do
    cmd <- readCommand
    case cmd of
        "komendy" -> do printDostepneKomendy
                        gameLoop state
        "zastanow_sie" -> do printDostepneKomendy
                             gameLoop state
        "rozejrzyj_sie" -> do printDostepneKomendy
                              gameLoop state
        "podejdz Osoba" -> do printDostepneKomendy
                              gameLoop state
        "pomocy" -> do printDostepneKomendy
                       gameLoop state
        "podpisz" -> do printDostepneKomendy
                        gameLoop state
        "koniec" -> return ()
        _ -> do printNieznanaKomendaText
                gameLoop state
                
gameLoop :: State -> IO ()
gameLoop state
  | isGameInProgress state = gameIteration state
  | not (isGameInProgress state) = printEnding state
  | otherwise = gameIteration state

main = do
    printOstrzezenieWstepne
    printDostepneKomendy
    gameLoop initialState

