module Rules.PonownaPropozycja where
import Rules.State
ponownaPropozycjaState =
  State
    0
    PonownaPropozycja
    ponownaPropozycjaText
    ponownaPropozycjaHelpText
    ponownaPropozycjaThinkText
    False
    False
    False
    [""]

ponownaPropozycjaText =  [
    "Jesteś pewny, że nie chcesz skorzystać z mojej propozycji",
    "Uśmiechnął się dobrotliwie król.",
    "Nie to, by mi na tobie zależało, ale z litości, jaką u mnie wzbudzasz chętnie bym ci pomógł.",
    "Znasz oczywiście takie powiedzenie – jak Kuba Bogu, tak Bóg Kubie?",
    "Skinąłem głową.",
    "Czyli rozumiemy się doskonale. To jak? Jesteś pewny swojej decyzji?",
    "Cholera... Chyba nie mam wyboru? Co robić?"
    ]

ponownaPropozycjaHelpText = [
    "Muszę pomyśleć nad planem działania!"
    ]

ponownaPropozycjaThinkText = [
    "Król bardzo nalega abym zajął się tą mantykorą... Zgodzić się? A może jednak uda mi się go przekonać?",
    "W ostateczności... Łatwiej go będzie pokonać niż mantykorę... Może spróbuję go zaatakować.",
    "Co powinienem zrobić?",
    "(jeden.)  Po wtórnym namyśle, dziękuję Ci królu za tę propozycję. Oczywiście ją przyjmuję.",
    "(dwa.) Prędzej zgniję w lochu niż dam się posiekać w beznadziejnej bitwie",
    "(trzy.) Oczywiście królu... Waszmości argumenty są nader logiczne! (spróbuję się zbliżyć i obezwładnić króla)"
    ]


ponownaPropozycjaChoiceOneText = [
    "Król uśmiechnał się"
    ]

ponownaPropozycjaChoiceTwoText = [
   "Cóż, myślę że da się to załatwić. A przynamniej do mojej wieczornej uczty",
   " - uśmiechnął się król złośliwie",
   "Będziesz świetnym dodatkiem do bloku artystycznego. Mistrz Folkis od dawna szukał asystenta na którym mógłby zaprezentować swoje nowe narzędzia",
   "Zabierzcie do ścierwo do lochu, niech skruszeje",
   "Muszę szybko stąd spadać o ile nie chcę się zapoznać z rzeczywiście wysławionym w sztucek katowskiej Folkisem... - pomyślałem.",
   "Chwilę później zostałem bezceremonialnie ponownie zamknięty w swojej celi..."
    ]

ponownaPropozycjaChoiceThreeText = [
    "Najjaśniejszy władco.",
    "Zacząłem, zbliżać się do władcy.",
    "Twoja propozycja jest niezwykła i wielce szczodra.",
    "Przesadnie gestykulując zbliżyłem się coraz bardziej do króla.",
    "Zaś wasza argumentacja mająca na celu nakłonienie mnie do przyjęcia propozycji niezwykle logiczna.",
    "Dodałem. Jednocześnie podchodząc jeszcze dwa kroki.",
    "Nie można odmówić jej słuszności.",
    "Uśmiechnąłem się przygotowując się do skoku.",
    "Ja jednak nie lubię szantażystów",
    "Usłyszałem tylko, chrupnięcie nosa władcy pod naciskiem mojej pięści.",
    "Odwróciłem się na pięcie i zacząłem biec w stronę okna.",
    "Nie zdawałem sobie sprawy ze swojego męstwa.",
    "Pomyślałem.",
    "Władca okazał się znacznie zwinniejszy niż myślałem i w chwili, gdy rozbijałem szybę już był przy mnie.",
    "Przy samym oknie poczułem jednak, że coś nagle uchwyciło mnie w pół"
    ]
