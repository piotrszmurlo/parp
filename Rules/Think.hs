module Rules.Think where
import Rules.State
import Rules.Utils
import Rules.KarczmaPijatyka

think :: State -> IO State
think state = do
    printLines (thinkText state)
    case stateName state of
        KarczmaIntro -> return state
        otherwise -> return state