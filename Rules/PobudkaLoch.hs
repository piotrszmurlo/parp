module Rules.PobudkaLoch where
import Rules.State
pobudkaLochState = 
  State
    0
    PobudkaLoch
    pobudkaLochText
    pobudkaLochHelpText
    pobudkaLochLookAroundText
    pobudkaLochThinkText
    False
    False
    False
    [""]

pobudkaLochText =  ["pobudkaLochText"]
pobudkaLochHelpText = ["pobudkaLochHelpText"]
pobudkaLochLookAroundText = ["pobudkaLochLookAroundText"]
pobudkaLochThinkText = ["pobudkaLochThinkText"]