module Rules.MinigameLoch where
import Rules.State
minigameLochState =
  State
    0
    MinigameLoch
    minigameLochText
    minigameLochHelpText
    minigameLochThinkText
    False
    False
    False
    [""]

minigameLochText =  ["minigameLochText"]
minigameLochHelpText = ["minigameLochHelpText"]
minigameLochThinkText = ["minigameLochThinkText"]