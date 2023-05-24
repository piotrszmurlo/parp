module Rules.Endings where
import Rules.State
import Rules.Utils

getEndingForEndingNumber :: Integer -> [String]
getEndingForEndingNumber endingNumber =
  case endingNumber of
    0 -> ["Game in progress"]
    1 -> ending1Text
    2 -> ending2Text
    3 -> ending3Text
    4 -> ending4Text
    5 -> ending5Text
    6 -> ending6Text

printEnding :: State -> IO()
printEnding state = printLines (getEndingForEndingNumber (endingNumber state))

ending1Text = [
    "[Zakończenie 1 - Mile Spędzona Nocka]",
    "",
    "Wcale nie było tu tak źle jak mówił ten stary jasnowidz - Pomyślałem",
    "Całkiem mile spędzona nocka...",
    "" 
    ]

ending2Text = [
    "[Zakończenie 2 - Śmierć przez nadmiar zelaza]",
    "",
    "Rozpętała się bitwa na miecze. Bohater nie miał zbyt duzej szansy przeciwko trzem straznikom.",
    "Więcej nie pije... - Pomyślałem",
    "" 
    ]

ending3Text = [
    "[Zakończenie 3 - Dzień jak codzień]",
    "",
    "Udało się uciec - jesteś wolny!",
    "Chyba pójdę poświętować ten sukces do karczmy... - Pomyślałem",
    "" 
    ]

ending4Text = [
    "[Zakończenie 4 - A chciałem okazać łaskę]",
    "",
    "Miałem cię za inteligentniejszego - Ze smutkiem pokręcił głową król",
    "Swoja głupotą nastręczyłeś mi sporo problemów. A chciałem okazać ci łaskę... - Westchnął",
    "",
    "Błysk krótkiego sztyletu był ostatnią rzeczą jaką zobaczyłem. Potem świat rozpłynął się w mroku.",
    ""
    ]

ending5Text = [
    "[Zakończenie 5 - Wyprawa na mantykorę]",
    "",
    "Dokonałeś słusznego wyboru. - Pokiwał głową król",
    "Kapitanie, dajcie naszemu śmiałkowi coś do jedzenia i przygotujcie mu drobną sumę na wyprawę - Machnął ręką w kierunku wchodzącego strażnika",
    "Niech się pozna na łasce naszczego królestwa! - Zaśmiał się król.",
    "I tak o to zostałem wplątany w walkę z potworem",
    "[Ciąg dalszy nastąpi...]",
    "" 
    ]

ending6Text = [
    "[Zakończenie 6 - Asystent Mistrza Folkisa]",
    "",
    "Na wiele lat po uczcie, ludze wspominali z uznaniem pokaz...",
    "A pamiętacie jak prezentował mistrz małodobry po raz pierwszy swoje największe odkryce? Te automatyczne zaciskacze miażdżące śrubami palce były niesamowite!",
    "Tym jest postęp szanowni państwo! Szybsze zeznania, szybsze sądy, szybsza sprawiedliwość dla złoczyńców!",
    "Piali z zachwytu",
    "A nad asystentem wierzby szumiały...",
    "" 
    ]
