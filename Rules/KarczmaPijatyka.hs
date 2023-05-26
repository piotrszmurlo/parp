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

karczmaPijatykaHelpText = ["Może warto chwilę posiedzieć i posłuchać dalszej dyskusji?"]

karczmaPijatykaText = [
    "Było ich trzech, a wszyscy potężni i szaleni.",
    "Mawiano, że mieli kryjówkę w głębi starego boru.",
    "To właśnie w niej wymyślali kolejne mroczne zaklęcia tworząc nową magię.",
    "Jednak pewnej bezksiężycowej nocy jeden z ich tworów wyrwał się na wolność...",
    "",
    "Ot jakie opowiastki można posłuchać w karczmie. Nawet przyjemny wieczór się zapowiada...",
    "W głowie już mi przyjemnie szumiało, ale nie miałem zamiaru rezygnować z kolejnych kilku kufli.",
    "Piwo mieli tu wyśmienite. Mocne, nierozcieńczane wodą. Żyć nie umierać.",
    "Co prawda w mieszku brzęczały mi ostatnie monety, ale zasłużyłem na relaks.",
    "Jutro targ to z łatwością zwinę jakąś kasę i jakoś dam radę do następnego zlecenia.",
    ""
    ]

karczmaPijatykaThinkText = [
    "> Daj spokój Willy. Wszyscy znamy tę opowieść, a ty po pijaku gadasz jak potłuczony mistrel. Bestia po prostu ich zabiła i kropka. Żadne tam zaryczała. Takie poetycki brednie zostaw zakochanym",
    "A tak miło się słuchało westchnąłem w duchu.",
    "> Ha, ha. Dobre Sil. Sam bym nie wpadł na takie porównanie. Już myślałem, że może walnąć go w łeb, to zacznie gadać po ludzku",
    "> Ja tak mówię?",
    "No nie. Zepsują mi wieczór swoją kłótnią upiłem długi łyk piwa.",
    "> Powtórz tylko, co powiedziałeś! Ja mówię jak potłuczony mistrel?",
    "> Noż przecież mówię.",
    "(jeden) Spróbuj uspokoić towarzystwo",
    "(dwa) Sprowokuj bójkę",
    "(trzy) Zignoruj kłótnię",
    ""
    ]

karczmaPijatykaLookAroundText = [
    "Dwoje teraz kłócących się starszych panów",
    "Osoby: willy, sil"
    ]