module Rules.Loch where
import Rules.State
lochState =
  State
    0
    Loch
    lochText
    lochHelpText
    lochThinkText
    True
    True
    False
    [""]

lochText =  ["Zostałeś sam"]
lochHelpText = ["Muszę pomyśleć nad tym co powinienem zrobić..."]
lochThinkText = ["Męczy kac. Połozyć się, czy moze spróbować się stąd jakoś wymsknąć?",
    "(jeden.) Idę spać.",
    "(dwa.) Uciekam stąd i się wyśpię w domu!"
    ]
lochChoiceOneText = ["Poszedłem spać...", "Gdy wstałem, strażnik już na mnie czekał"]
lochChoiceTwoText = ["Zmiana warty. Kolejny straznik niedługo przyjdzie. Masz tylko kilka chwil, zeby coś wymyślić."]