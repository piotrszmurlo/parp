module Main where
import Rules.Utils
import Rules.Endings
import Rules.State
import Rules.Help
import Rules.Think
import Rules.Choices
import Rules.People
import Rules.Approach

gameIteration :: State -> IO ()
gameIteration state = do
  cmd <- readCommand
  case cmd of
    "komendy" -> do printCommandsText state
                    gameLoop state
    "zastanow_sie" -> do
                      state <- think state
                      gameLoop state
    "rozejrzyj_sie" -> do
                      state <- peopleLook state
                      gameLoop state
    "podejdz" -> do
                    putStrLn "Do kogo chcesz podejsc?:"
                    personName <- getLine
                    state <- approach personName state
                    gameLoop state
    "pomocy" -> do 
                state <- help state
                gameLoop state
    "jeden" -> do 
               state <- choiceOne state
               gameLoop state
    "dwa" -> do 
             state <- choiceTwo state
             gameLoop state
    "trzy" -> do 
             state <- choiceThree state
             gameLoop state
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

