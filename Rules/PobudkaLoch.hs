module Rules.PobudkaLoch where
import Rules.State
pobudkaLochState = 
  State
    0
    PobudkaLoch
    pobudkaLochText
    pobudkaLochHelpText
    pobudkaLochThinkText
    False
    False
    False
    [""]

pobudkaLochText =  ["pobudkaLochText"]
pobudkaLochHelpText = ["pobudkaLochHelpText"]
pobudkaLochThinkText = ["pobudkaLochThinkText"]