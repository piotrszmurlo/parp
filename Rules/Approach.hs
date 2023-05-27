module Rules.Approach where
import Rules.State
import Rules.Utils
import Rules.KarczmaPijatyka
import Rules.KarczmaIntro
import Rules.Burdel
import Rules.KarczmaPijatyka
import Rules.PobudkaLoch

approach :: String -> State -> IO State
approach personName state =
  case findPersonAction personName state of
    Nothing -> do
        putStrLn "Nie ma takiej osoby."
        return state
    Just action -> action state

findPersonAction :: String -> State -> Maybe (State -> IO State)
findPersonAction personName state =
    if personName `elem` people state then
        case (personName, stateName state) of
            ("willy", KarczmaIntro) -> Just karczmaRozmowa
            ("sil", KarczmaIntro) -> Just karczmaRozmowa
            ("willy", KarczmaPijatyka) -> Just wilSilPijatyka
            ("sil", KarczmaPijatyka) -> Just wilSilPijatyka
            ("recepcjonistka", Burdel) -> Just burdelRozmowa
            ("karla", Burdel) -> Just burdelPrzechwalki
            ("eline", Burdel) -> Just burdelPrzechwalki
            ("król", SalaTronowa) -> Just podejdzKrol
            ("król", Propozycja) -> Just podejdzKrol
            ("król", PonownaPropozycja) -> Just podejdzKrol
            _ -> Nothing
    else
        Nothing

-- Funkcje Approach
karczmaRozmowa :: State -> IO State
karczmaRozmowa state = do
    printLines [
        "> Chwileczkę panowie",
        "Wstałem i podszedłem do ich stolika. Trzeba jednak zawalczyć o nastrój. Na nikogo nie można liczyc na tym świecie. Wszystko muszę robić sam...",
        "> Czy bylibyście w stanie opowiedzieć dalej ową historię? Chyba jeszcze jej nie poznałem, a zapowiada się ciekawie",
        "sam siebie zaskoczyłem takimi ładnymi, gładkimi słówkami. Widać grunt to motywacja...",
        "> A ty coś za jeden?",
        "> Pewno z daleka",
        "> Siadaj",
        "> Dziękuję uprzejmie.",
        " Jak robić dobre wrażenie to na całego",
        "> Kelner – jeszcze piwa dla panów. Na mój koszt!",
        " zawołałem",
        "Najwyżej zwieję gdy poproszą o rachunek - dodałem w duchu. - Nie pierwszy raz...",
        "> Nie pij tego piwa. Prosimy o lokalny specjał.",
        "> Zaraz zobaczysz co to dobry napitek. Napij się i posłuchaj.",
        "> Król podobno wysłał magów, by zabili paskudę i te pozostałe, co się tam wylęgły. Albowiem nie wiem, czy wiesz, miejsce tamto stało się przeklęte. Przyjechał i rycerz na białym koniu i czcigodny starzec…",
        "> Zamknij się Willy. Po prostu ich wszystkich uśmierciły i tyle",
        "> Ja tutaj pieśń bohaterską opowiadam!",
        "> To śpiewaj gdzie indziej",
        "Pociągnąłem łyk nowego trunku i z uznaniem popatrzyłem na kufel. Jednak warto było się przysiąść"
        ]
    return karczmaPijatykaState

wilSilPijatyka :: State -> IO State
wilSilPijatyka state = do
    printLines ["Już i tak z nim siedzę..."]
    return state

podejdzKrol :: State -> IO State
podejdzKrol state = do
    printLines ["Już i tak z nim rozmawiam."]
    return state

burdelRozmowa :: State -> IO State
burdelRozmowa state = do
    printLines [
        "> Piękna, bardzo się potłukłaś? - zwróciłem się do recepcjonistki",
        "> Jak spadałam z nieba? - Popatrzyła na mnie lekko zmęczonym spojrzeniem",
        "> Nie trudź się, naprawdę słyszałam już chyba każdy tekst na podryw - Dodała lekko współczującym tonem, biorąc mój zbity z tropu wyraz twarzy za smutek.",
        "> O ile jednak chciałbyś zabłysnąć, Karla i Eline dopiero niedawno zaczęły u nas pracować. Z nimi powinno pójść łatwiej. mrugnęła",
        "> A, spoko, dzięki - odpowiedziałem lekko speszony.",
        " No cóż, to podejście mi trochę nie wyszło..."
        ]
    return state

burdelPrzechwalki :: State -> IO State
burdelPrzechwalki state = do
    printLines ["Dosiadłem się do nieznajomej, która czekała po drugiej stronie atrium. Od razu by nie zostawać w tyle podeszła do nas jej koleżanka.",
        "Opowiedziałem zalotnie ocierającym się o mnie dziewczynom historię zasłyszaną w karczmie.",
        "> Wszyscy w stolicy tacy sami. Nawet magowie tylko iluzje pokazują, a nic konkretnego nie robią.",
        "> Mawiają, że król wyznaczył nagrodę, by któryś pojechał i oczyścił miejsce. No wiecie. Od tych czarnoksiężników. Pewnie głupio mu, że w porządnym królestwie takie rzeczy mają miejsce, ale magowie nie są głupi. Nie porzucą ciepłej komnatki dla niepewnej nagrody. Tchórze. Tfu! Ja bym dał radę!",
        "> Nie wiedziałam że ludzie bez mocy mogą pokonać Bestię zaświergotała do mnie wyraźnie skonsternowana nimfa.",
        "> I co, że nie mam mocy. Magów przecież ta gadzina zjada. Pójdę tam, znajdę kryjówkę i pozabijam potwory. Głupi król sobie nie radzi, będę lepszy od niego. Zabiję...",
        "Nie dam sobie zabrać okazji. Już te ślicznotki mam prawię w garści",
        "> Cicho kochany. Tu mogą być ludzie króla. - zganiła mnie Karla",
        "> Ktoś doniesie i cię powieszą. Nas również za współudział",
        "> Król tchórzy przed byle wiewiórką, ale nie ja! Zobaczycie! Sam król przyzna mi racje! Buty mi będzie całował, kiedy pozabijam te potwory! - Przyznaję może trochę przesadziłem, ale spojrzały na mnie. Zainteresowałem je. Trzeba kontynuować.",
        "> To nie my, nie jest to nawet nasz klient, jeszcze nie zapłacił - gdzieś kątem oka dostrzegłem postać w czarnej pelerynie. Może kolejna ślicznotka incognito też jest mną zainteresowana? Moją przelotną uwagę zwrócił fakt, że dziewczyna za recepcją zbladła, ale byłem zbyt wstawiony by zwracać na takie drobne rzeczy uwagę.",
        "> Niech król usłyszy! - krzyknąłem wzmacniając swój przekaz. Niech piękne damy podziwiają moją odwagę.",
        "> Przekażę twoją propozycję królowi - Postać w pelerynie nie okazała się piękną damą. Nagle mnie zmroziło. Cały nastrój się rozwiał.",
        "> N-nie jesteś ślicznotką - wyjąkałem. A taki był miły wieczór."
        ]
    return pobudkaLochState