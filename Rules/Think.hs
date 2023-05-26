module Rules.Think where
import Rules.State
import Rules.Utils
import Rules.KarczmaPijatyka
import Rules.KarczmaIntro

think :: State -> IO State
think state = do
    printLines (thinkText state)
    case stateName state of
        KarczmaIntro -> return karczmaIntroStateAfterThink
        KarczmaPijatyka -> return karczmaPijatykaStateAfterThink
        otherwise -> return state