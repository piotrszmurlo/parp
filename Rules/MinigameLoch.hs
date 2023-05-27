module Rules.MinigameLoch where
import Rules.State
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

checkChoice :: Int -> Int -> IO ()
checkChoice expected actual =
  if expected == actual
    then putStrLn "Correct choice!"
    else putStrLn "Wrong choice!"

minigameLoop :: Int -> IO ()
minigameLoop n = do
  forM_ [n, n-1 .. 1] $ \i -> do
    putStrLn $ "Pozostało czasu: " ++ show i

    choice <- readLn :: IO Int

    -- Check if the choice is correct
    checkChoice (n - i + 1) choice

  putStrLn "Time's up! Your time has ended."
