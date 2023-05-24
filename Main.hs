module Main where
import Rules.Utils
import Rules.Endings
import Rules.State

gameIteration :: State -> IO ()
gameIteration state = do
    cmd <- readCommand
    case cmd of
        "komendy" -> do printAvailableCommands
                        gameLoop state
        "zastanow_sie" -> do printAvailableCommands
                             gameLoop state
        "rozejrzyj_sie" -> do printAvailableCommands
                              gameLoop state
        "podejdz Osoba" -> do printAvailableCommands
                              gameLoop state
        "pomocy" -> do printAvailableCommands
                       gameLoop state
        "podpisz" -> do printAvailableCommands
                        gameLoop state
        "koniec" -> return ()
        _ -> do printUnknownCommand
                gameLoop state
                
gameLoop :: State -> IO ()
gameLoop state
  | isGameInProgress state = gameIteration state
  | not (isGameInProgress state) = printEnding state
  | otherwise = gameIteration state

main = do
    printExplicitWarning
    printAvailableCommands
    gameLoop initialState

