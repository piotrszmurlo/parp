module Rules.PobudkaLoch where
import Rules.State
pobudkaLochState =
  State
    0
    PobudkaLoch
    pobudkaLochText
    pobudkaLochHelpText
    pobudkaLochThinkText
    True
    True
    False
    [""]

pobudkaLochText =  ["\nŚmierdzi i jest niewygodnie..."]
pobudkaLochHelpText = ["Moze by ktoś mi powiedział co tu robię...?"]
pobudkaLochThinkText = ["Hmm... gdzie ja jestem?"]
pobudkaLochChoiceOneText = ["Straznik odchodzi bez słowa"]
pobudkaLochChoiceTwoText = ["Obraziłeś króla krzycząc na całą karczmę. Twoja głowa jest teraz sporo warta. A teraz lepiej idz spać."]