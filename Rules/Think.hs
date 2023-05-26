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
        KarczmaIntro -> return karczmaIntroStateAfterThink
        KarczmaPijatyka -> return karczmaPijatykaStateAfterThink
        Burdel -> return burdelStateAfterThink
        otherwise -> return state