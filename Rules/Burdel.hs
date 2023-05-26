module Rules.Burdel where
import Rules.State
burdelState = 
  State
    0
    Burdel
    burdelText
    burdelHelpText
    burdelLookAroundText
    burdelThinkText
    False
    False
    False

burdelStateAfterThink = 
  State
    0
    Burdel
    burdelText
    burdelHelpText
    burdelLookAroundText
    burdelThinkText
    True
    True
    False

burdelText =  [
    "Świeże powietrze uderza mnie w twarz. Mrużąc oczy w wietrze, spostrzegam nagle po drugiej stronie ulicy świecący w nocy szyld 'Dom spotkań: Zalotka'.",
    "Nie znam tego geniusza, ale postawienie domu publicznego koło karczmy musiało być strzałem w dziesiątkę - w końcu kobiety oba te przybytki rozkoszy omijają szerokim łukiem, a już starożytni znali uzależniające połączenie wina i nadobnych kobiet.",
    " Uczone rozważania przez moment przerwała mi szara rzeczywistość. Pomacałem się po kieszeni - sakiewka choć niezbyt pełna, dalej da radę opłacić wizytę.",
    "Skoro oszczędziłem na całej nocy popijawy, to pewnie mogę sobie zrobić prezencik zastępczy…",
    "Po wymyśleniu tego uzasadnienia, wszedłem przeszedłem przez ulicę i pchnąłem zapraszająco uchylone odrzwia.",
    ""
    ]
burdelHelpText = [
    "Te ślicznotki z pewnością chcą posłuchać o moich wspaniałych dokonaniach"
    ]
burdelLookAroundText = [
    "Ależ ta kobieta na recepcji ma przód...",
    "A te dwie co zeszły z góry też nie wypadły sroce spod ogona..."
    ]
    
burdelThinkText = [
    "Nie mogłem nie zauważyć że przyciągam wzrok nowo przybyłych kobiet.",
    "Może uda mi się jeszcze trochę przyoszczędzić jak je poczaruję swoim wdziękiem osobistym?",
    "Myśl ta mi się całkiem spodobała.",
    "W końcu sam nie jestem jakimś odrażającym gnomem, może pójdą na odpowiednią bajerę...",
    "(jeden.) Historia o potworze",
    "(dwa.) Nie no, zapłacę normalnie",
    ""
    ]

burdelChoiceOneText = [
    "Opowiedziałem zalotnie ocierającym się o mnie dziewczynom historię zasłyszaną w karczmie.",
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
    "A taki był miły wieczór",
    ""
    ]