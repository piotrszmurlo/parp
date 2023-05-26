module Rules.Choices where
import Rules.State
import Rules.Utils
import Rules.KarczmaPijatyka
import Rules.KarczmaIntro
import Rules.PobudkaLoch
import Rules.Burdel

choiceOne :: State -> IO State
choiceOne state
    | not (optionOneEnabled state) = do printLines ["Nie mam takiego wyboru."]
                                        return state
    | optionOneEnabled state = do
        case stateName state of
            KarczmaIntro -> do printLines karczmaIntroChoiceOneText
                               printStateText karczmaPijatykaState
                               return karczmaPijatykaState
            KarczmaPijatyka -> do 
                               printLines karczmaPijatykaAllChoicesText
                               printStateText pobudkaLochState
                               return pobudkaLochState
            Burdel -> do
                      printLines burdelChoiceOneText
                      let endingState = state {endingNumber = 1}
                      return endingState
            otherwise ->  do printLines ["choiceOne"]
                             return state

choiceTwo :: State -> IO State
choiceTwo state
    | not (optionTwoEnabled state) = do printLines ["Nie mam takiego wyboru."]
                                        return state
    | optionTwoEnabled state = do
        case stateName state of
            KarczmaIntro -> do printLines karczmaIntroChoiceTwoText
                               printStateText burdelState
                               return burdelState
            KarczmaPijatyka -> do 
                               printLines karczmaPijatykaAllChoicesText
                               printStateText pobudkaLochState
                               return pobudkaLochState
            Burdel -> do
                      let endingState = state {endingNumber = 1}
                      return endingState
            otherwise ->  do printLines ["choiceTwo"]
                             return state

choiceThree :: State -> IO State
choiceThree state
    | not (optionThreeEnabled state) = do printLines ["Nie mam takiego wyboru."]
                                          return state
    | optionThreeEnabled state = do
        case stateName state of
            KarczmaIntro -> do printLines karczmaIntroChoiceThreeText
                               printStateText burdelState
                               return burdelState
            KarczmaPijatyka -> do 
                               printLines karczmaPijatykaAllChoicesText
                               printStateText pobudkaLochState
                               return pobudkaLochState
            otherwise ->  do printLines ["choiceThree"]
                             return state