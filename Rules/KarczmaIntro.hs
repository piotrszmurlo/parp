module Rules.KarczmaIntro where
import Rules.State

karczmaIntroState = 
  State
    0
    KarczmaIntro
    karczmaIntroText
    karczmaIntroHelpText
    karczmaIntroLookAroundText
    karczmaIntroThinkText
    False
    False
    False
    [""]

karczmaIntroHelpText = ["Może warto chwilę posiedzieć i posłuchać dalszej dyskusji?"]

karczmaIntroText = [
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

karczmaIntroThinkText = [
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

karczmaIntroLookAroundText = [
    "Dwoje teraz kłócących się starszych panów",
    "Osoby: willy, sil",
    ""
    ]

karczmaIntroChoiceOneText = [
   "> Chwileczkę panowie",
    "Wstałem i podszedłem do ich stolika. Trzeba jednak zawalczyć o nastrój. Na nikogo nie można liczyc na tym świecie. Wszystko muszę robić sam",
    "> Czy bylibyście w stanie opowiedzieć dalej ową historię? Chyba jeszcze jej nie poznałem, a zapowiada się ciekawie",
    "sam siebie zaskoczyłem takimi ładnymi, gładkimi słówkami. Widać grunt to motywacja",
    "> A ty coś za jeden?",
    "> Pewno z daleka",
    "> Siadaj",
    "> Dziękuję uprzejmie. Jak robić dobre wrażenie to na całego",
    "> Kelner - jeszcze piwa dla panów. Na mój koszt! - Zawołałem",
    "Najwyżej zwieję gdy poproszą o rachunek - dodałem w duchu. Nie pierwszy raz...",
    "> Nie pij tego piwa. Prosimy o lokalny specjał.",
    "> Zaraz zobaczysz co to dobry napitek. Napij się i posłuchaj.",
    "> Król podobno wysłał magów, by zabili paskudę i te pozostałe, co się tam wylęgły. Albowiem nie wiem, czy wiesz, miejsce tamto stało się przeklęte. Przyjechał i rycerz na białym koniu i czcigodny starzec…",
    "> Zamknij się Willy. Po prostu ich wszystkich uśmierciły i tyle",
    "> Ja tutaj pieśń bohaterską opowiadam!",
    "> To śpiewaj gdzie indziej",
    "Pociągnąłem łyk nowego trunku i z uznaniem popatrzyłem na kufel. Jednak warto było się przysiąść.",
    ""
    ]

karczmaIntroChoiceTwoText = [
    "> Psia krew, nie możecie choć na chwilę zamknąć!? Niektórzy próbują się tu kulturalnie urżnąć i zapomnieć o bólu świata bez tego ciągłego poetycznego jazgotu!",
    "wyrzuciłem z siebie gniewnie.",
    "> Willy, czy ten smutas ze stolika obok powiedział to co usłyszałem?",
    "> Nie wiem Sal, ale z pewnością nie podobał mi się jego ton",
    "Obrzucili mnie taksującymi spojrzeniami. Nie przejąłem się tym zbytnio, będąc z natury krępy i silny rzadko spotykałem ludzi mogących mi zagrozić w walce.",
    "> Dobrze słyszeliście i mogę powtórzyć Nie spodobały mi się ich wredne uśmiechy",
    "> Cóż Sal, widać naszemu cukiereczkowi przydałoby się zaszczepić odrobinę szacunku wobec starszych, co ty na to?",
    "> Uważam to wręcz za karygodne, że zaniedbano tę jakże ważną część edukacji. Ta dzisiejsza młodzież…",
    "Gdy wstali, szybko oceniłem swoje szanse a następnie z uśmiechem odsunąłem krzesło by przyjąć niewypowiedziane wyzwanie.",
    " Zaczyna robić się ciekawie…",
    "Cała karczma na moment ucichła. Zmierzyłem wzrokiem swoich przeciwników.",
    "Jeden z nich w zamierzył się na mnie nagle kuflem, którego łutem szczęścia udało mi się uniknąć. To samo jednak nie można było powiedzieć o strażnikach w rogu, których jeden z kompanów został znokautowany lecącą porcelaną.",
    " Gdy i oni zakasali rękawy, rozpętało się pandemonium.",
    "Pół godziny później, niekoniecznie trzeźwy ale za to hojnie doprawiony zarówno swoimi jak i cudzymi płynami ustrojowymi wytarabaniłem się z karczmy…",
    ""
    ]

karczmaIntroChoiceThreeText =   [
    "Dobra, nie ma co tu siedzieć, jeśli ci dwoje dalej się tak będą prztykać to nie dość że jest niedziela wieczór, to jeszcze będzie i humor popsuty...",
    "Paroma szybkimi łykami dopiłem swój kufel, zapłaciłem karczmarzowi obciętym na brzegach talarem i zwinąłem się z karczmy nim zdążył zaprotestować.",
    ""
   ] 