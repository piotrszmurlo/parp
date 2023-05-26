module Rules.Think where
import Rules.State
import Rules.Utils
import Rules.KarczmaPijatyka
import Rules.KarczmaIntro
import Rules.Burdel

think :: State -> IO State
think state = do
    printLines (thinkText state)
    case stateName state of
        KarczmaIntro -> return (unlockChoices state 3)
        KarczmaPijatyka -> return (unlockChoices state 3)
        Burdel -> return (unlockChoices state 2)
        otherwise -> return state