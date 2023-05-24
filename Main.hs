module Main where
import Rules.Utils
import Rules.Endings
import Rules.State

gameIteration :: State -> IO ()
gameIteration state = do
    cmd <- readCommand
    case cmd of
        "komendy" -> do gameLoop state
        "zastanow_sie" -> do gameLoop state
        "rozejrzyj_sie" -> do gameLoop state
        "podejdz Osoba" -> do gameLoop state
        "pomocy" -> do gameLoop state
        "podpisz" -> do gameLoop (sign state)
        "koniec" -> return ()
        _ -> do printUnknownCommand
                gameLoop state
                
gameLoop :: State -> IO ()
gameLoop state
  | isGameInProgress state = gameIteration state
  | not (isGameInProgress state) = printEnding state

main = do
    printExplicitWarning
    printAvailableCommands
    gameLoop initialState

