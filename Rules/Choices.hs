module Rules.Choices where
import Rules.State
import Rules.Utils


choiceOne :: State -> State
choiceOne state = do
    case stateName state of
        KarczmaIntro -> debugEndState1
        otherwise -> state

choiceTwo :: State -> State
choiceTwo state = do
    case stateName state of
        KarczmaIntro -> debugEndState2
        otherwise -> state

choiceThree :: State -> State
choiceThree state = do
    case stateName state of
        KarczmaIntro -> debugEndState3
        otherwise -> state
