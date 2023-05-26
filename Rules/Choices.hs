module Rules.Choices where
import Rules.State
import Rules.Utils
import Rules.KarczmaPijatyka
import Rules.KarczmaIntro

choiceOne :: State -> IO State
choiceOne state
    | not (optionOneEnabled state) = do printLines ["Nie mam takiego wyboru."]
                                        return state
    | optionOneEnabled state = do
        case stateName state of
            KarczmaIntro -> do printLines karczmaIntroChoiceOneText
                               printStateText karczmaPijatykaState
                               return karczmaPijatykaState
            otherwise ->  do printLines ["111"]
                             return state

choiceTwo :: State -> IO State
choiceTwo state
    | not (optionTwoEnabled state) = do printLines ["Nie mam takiego wyboru."]
                                        return state
    | optionTwoEnabled state = do
        case stateName state of
            KarczmaIntro -> do printLines ["222"]
                               return debugEndState1
            otherwise ->  do printLines ["222"]
                             return state

choiceThree :: State -> IO State
choiceThree state
    | not (optionThreeEnabled state) = do printLines ["Nie mam takiego wyboru."]
                                          return state
    | optionThreeEnabled state = do
        case stateName state of
            KarczmaIntro -> do printLines ["333"]
                               return debugEndState3
            otherwise ->  do printLines ["333"]
                             return state