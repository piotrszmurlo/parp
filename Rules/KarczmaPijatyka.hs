module Rules.KarczmaPijatyka where
import Rules.State

karczmaPijatykaState = 
  State
    0
    KarczmaPijatyka
    karczmaPijatykaText
    karczmaPijatykaHelpText
    karczmaPijatykaLookAroundText
    karczmaPijatykaThinkText
    False
    False
    False

karczmaPijatykaStateAfterThink = 
  State
    0
    KarczmaPijatyka
    karczmaPijatykaText
    karczmaPijatykaHelpText
    karczmaPijatykaLookAroundText
    karczmaPijatykaThinkText
    True
    True
    True

karczmaPijatykaHelpText = ["Msze, *hic*, jszcz troh alllk?"]

karczmaPijatykaText = [    
    "Półtorej godziny później byliśmy już najlepszymi przyjaciółmi.",
    "Kompani chyba się ucieszyli z mojego towarzystwa, bo co chwile mi stawiali nowe trunki, bym popróbował.",
    "Grunt to się ustawić. Humor miałem znakomity, zaś ładna kelnerka zanosząca trunki z każdym przyjściem do nas uśmiechała się do mnie coraz milej.",
    "Trzeba by jej jakoś zaimponować..."
    ]

karczmaPijatykaThinkText = [
    "Czoo mi sz-szkodzi sę piłka napić, hę?",
    "(jeden.) Pij na zdrowie bo się ściemnia...",
    "(dwa.) Oczywiście że nie szkodzi...",
    "(trzy.) Od jutra jestem zadeklarowanym abstynentem, przysięgam..."
    ]

karczmaPijatykaLookAroundText = [
    "Dobrze się pije w miłym towarzystwie...",
    "Osoby: willy, sil",
    "Ale czy koniecznie ci żołnierze muszą tak dziwnie się gapić?",
    ""
    ]

karczmaPijatykaAllChoicesText = [
    "> Wszyscy w stolicy tacy sami. Nawet magowie tylko iluzje pokazują, a nic konkretnego nie robią",
    "> Mawiają, że król wyznaczył nagrodę, by któryś pojechał i oczyścił miejsce. No wiecie. Od tych czarnoksiężników",
    "Pewnie głupio mu, że w porządnym królestwie takie rzeczy mają miejsce, ale magowie nie są głupi. Nie porzucą ciepłej komnatki dla niepewnej nagrody. Tchórze. Tfu!",
    "> Magowie to tchórze! Ja bym dał radę taka piękna okazja by zaimponować ślicznotce nie może mi przejść koło nosa.",
    "> Młody, siedź cicho jak nie wiesz, o czym mówisz. Przecież z ciebie taki Mag, jak …",
    "> I co, że nie mag. Magów przecież ta gadzina zjada. Pójdę tam, znajdę kryjówkę i pozabijam potwory. Głupi król sobie nie radzi, będę lepszy od niego. Zabiję…",
    "Nie dam sobie zabrać okazji. Śliczna kelnerka wyraźnie na mnie patrzyła...",
    "> Cicho durniu. Tu mogą być ludzie króla!",
    "> Ktoś doniesie i cię powieszą. Nas również za współudział",
    "> Napił się. Za mocne piwo pewnie...",
    "> Król tchórzy przed byle wiewiórką, ale nie ja! Zobaczycie! Sam król przyzna mi racje! Buty mi będzie całował, kiedy pozabijam te potwory!",
    "Przyznaję może trochę przesadziłem, ale spojrzała na mnie. Zainteresowałem ją. Trzeba kontynuować.",
    "> To nie my! gdzieś kątem oka dostrzegłem postać w czarnej pelerynie.",
    "Może kolejna ślicznotka incognito też jest mną zainteresowana?",
    "> On się tylko do nas dosiadł. Pijany jest głosy współbiesiadników dochodziły do mnie z daleka.",
    "> Niech król usłyszy! krzyknąłem wzmacniając swój przekaz. Niech piękne damy podziwiają moją odwagę",
    "> Przekażę twoją propozycję królowi. Postać w pelerynie nie okazała się piękną damą. Nagle mnie zmroziło. Cały nastrój się rozwiał.",
    "> N-nie jesteś ślicznotką - wyjąkałem i zwymiotowałem",
    "A taki był miły wieczór"
    ]