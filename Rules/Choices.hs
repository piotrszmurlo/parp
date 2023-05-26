module Rules.Choices where
import Rules.State
import Rules.Utils


choiceOne :: State -> State
choiceOne state
    | not (optionOneEnabled state) = state
    | optionOneEnabled state = do
        case stateName state of
            KarczmaIntro -> debugEndState1
            otherwise -> state

choiceTwo :: State -> State
choiceTwo state
    | not (optionTwoEnabled state) = state
    | optionTwoEnabled state = do
        case stateName state of
            KarczmaIntro -> debugEndState3
            otherwise -> state

choiceThree :: State -> State
choiceThree state
    | not (optionThreeEnabled state) = state
    | optionThreeEnabled state = do
        case stateName state of
            KarczmaIntro -> debugEndState2
            otherwise -> state
