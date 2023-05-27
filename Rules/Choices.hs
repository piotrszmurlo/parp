module Rules.Choices where
import Rules.State
import Rules.Utils
import Rules.KarczmaPijatyka
import Rules.KarczmaIntro
import Rules.PobudkaLoch
import Rules.Burdel
import Rules.SalaTronowa
import Rules.Propozycja
import Rules.PonownaPropozycja
import Rules.MinigameLoch
import Rules.Loch

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
                      -- _ -> getChar
                      return endingState
            SalaTronowa -> do
                           printLines salaTronowaChoiceOneText
                           let endingState = state {endingNumber = 4}
                           -- _ -> getChar
                           return endingState
            Propozycja -> do
                          printLines propozycjaChoiceOneText
                          let endingState = state {endingNumber = 5}
                          -- _ -> getChar
                          return endingState
            PonownaPropozycja ->  do
                                  printLines propozycjaChoiceOneText
                                  let endingState = state {endingNumber = 5}
                                  -- _ -> getChar
                                  return endingState
            PobudkaLoch ->  do
                            printLines pobudkaLochChoiceOneText
                            printLines ["Niegrzeczny"]
                            printStateText lochState
                            return lochState
            loch ->     do
                        printLines lochChoiceOneText
                        printLines salaTronowaText
                        return salaTronowaState
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
            SalaTronowa -> do
                           printLines salaTronowaChoiceTwoText
                           printStateText propozycjaState
                           return propozycjaState
            Propozycja -> do
                          printLines propozycjaChoiceTwoText
                          printStateText ponownaPropozycjaState
                          return ponownaPropozycjaState
            PonownaPropozycja ->  do
                                  printLines ponownaPropozycjaChoiceTwoText
                                  printStateText minigameLochState
                                  return minigameLochState
            PobudkaLoch ->  do
                            printLines pobudkaLochChoiceTwoText
                            printLines ["Earned achivement : Czaruś"]
                            printStateText lochState
                            return lochState
            loch ->     do
                        printLines lochChoiceTwoText
                        printLines minigameLochText
                        return minigameLochState
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
            PonownaPropozycja ->  do
                                  printLines ponownaPropozycjaChoiceThreeText
                                  let endingState = state {endingNumber = 4}
                                  --_ -> getChar
                                  return endingState
            otherwise ->  do printLines ["choiceThree"]
                             return state