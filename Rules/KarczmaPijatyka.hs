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
    True
    True
    True

karczmaPijatykaHelpText = ["Może warto chwilę posiedzieć i posłuchać dalszej dyskusji?"]

karczmaPijatykaText = [    
    "Półtorej godziny później byliśmy już najlepszymi przyjaciółmi.",
    "Kompani chyba się ucieszyli z mojego towarzystwa, bo co chwile mi stawiali nowe trunki, bym popróbował.",
    "Grunt to się ustawić. Humor miałem znakomity, zaś ładna kelnerka zanosząca trunki z każdym przyjściem do nas uśmiechała się do mnie coraz milej.",
    "Trzeba by jej jakoś zaimponować..."
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
    "Dobrze się pije w miłym towarzystwie...",
    "Osoby: willy, sil",
    "Ale czy koniecznie ci żołnierze muszą tak dziwnie się gapić?",
    ""
    ]