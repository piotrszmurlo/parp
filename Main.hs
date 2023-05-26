module Main where
import Rules.Utils
import Rules.Endings
import Rules.State
import Rules.Help
import Rules.Think
import Rules.Choices

gameIteration :: State -> IO ()
gameIteration state = do
  cmd <- readCommand
  case cmd of
    "komendy" -> do printStateText state
                    gameLoop state
    "zastanow_sie" -> do
                      state <- think state
                      gameLoop state
    "rozejrzyj_sie" -> do printStateText state
                          gameLoop state
    "podejdz Osoba" -> do printStateText state
                          gameLoop state
    "pomocy" -> do 
                state <- help state
                gameLoop state
    "jeden" -> do 
               gameLoop (choiceOne state)
    "dwa" -> do 
             gameLoop (choiceTwo state)
    "trzy" -> do 
              gameLoop (choiceThree state)
    "podpisz" -> do printStateText (sign state)
                    gameLoop (sign state)
    "koniec" -> return ()
    _ -> do printUnknownCommand
            gameLoop state
                
gameLoop :: State -> IO ()
gameLoop state
  | isGameInProgress state = gameIteration state
  | not (isGameInProgress state) = printEnding state

main = do
    printExplicitWarning
    gameLoop initialState

