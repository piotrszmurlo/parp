module Rules.People where
import Rules.State
import Rules.Utils
import Data.Map (Map)
import qualified Data.Map as Map

type PersonName = String
type StateName = String
type Description = [String]

type ApproachMap = Map (PersonName, StateName) Description

approachMessages :: ApproachMap
approachMessages = Map.fromList
  [ (("willy", "Karczma"), [ "> Chwileczkę panowie",
                                           "Wstałem i podszedłem do ich stolika. Trzeba jednak zawalczyć o nastrój. Na nikogo nie można liczyc na tym świecie. Wszystko muszę robić sam...",
                                           "> Czy bylibyście w stanie opowiedzieć dalej ową historię? Chyba jeszcze jej nie poznałem, a zapowiada się ciekawie",
                                           "sam siebie zaskoczyłem takimi ładnymi, gładkimi słówkami. Widać grunt to motywacja...",
                                           "> A ty coś za jeden?",
                                           "> Pewno z daleka",
                                           "> Siadaj",
                                           "> Dziękuję uprzejmie. Jak robić dobre wrażenie to na całego",
                                           "> Kelner – jeszcze piwa dla panów. Na mój koszt! zawołałem",
                                           "Najwyżej zwieję gdy poproszą o rachunek dodałem w duchu. Nie pierwszy raz...",
                                           "> Nie pij tego piwa. Prosimy o lokalny specjał.",
                                           "> Zaraz zobaczysz co to dobry napitek. Napij się i posłuchaj.",
                                           "> Król podobno wysłał magów, by zabili paskudę i te pozostałe, co się tam wylęgły. Albowiem nie wiem, czy wiesz, miejsce tamto stało się przeklęte. Przyjechał i rycerz na białym koniu i czcigodny starzec...",
                                           "> Zamknij się Willy. Po prostu ich wszystkich uśmierciły i tyle",
                                           "> Ja tutaj pieśń bohaterską opowiadam!",
                                           "> To śpiewaj gdzie indziej",
                                           "Pociągnąłem łyk nowego trunku i z uznaniem popatrzyłem na kufel. Jednak warto było się przysiąść"
                                         ]),
    (("willy", "Pijatyka_karczemna"), ["Już i tak z nim siedzę..."]),
    (("sil", "Karczma"), [ "> Chwileczkę panowie",
                                         "Wstałem i podszedłem do ich stolika. Trzeba jednak zawalczyć o nastrój. Na nikogo nie można liczyc na tym świecie. Wszystko muszę robić sam...",
                                         "> Czy bylibyście w stanie opowiedzieć dalej ową historię? Chyba jeszcze jej nie poznałem, a zapowiada się ciekawie",
                                         "sam siebie zaskoczyłem takimi ładnymi, gładkimi słówkami. Widać grunt to motywacja...",
                                         "> A ty coś za jeden?",
                                         "> Pewno z daleka",
                                         "> Siadaj",
                                         "> Dziękuję uprzejmie. Jak robić dobre wrażenie to na całego",
                                         "> Kelner – jeszcze piwa dla panów. Na mój koszt! zawołałem",
                                         "Najwyżej zwieję gdy poproszą o rachunek dodałem w duchu. Nie pierwszy raz...",
                                         "> Nie pij tego piwa. Prosimy o lokalny specjał.",
                                         "> Zaraz zobaczysz co to dobry napitek. Napij się i posłuchaj.",
                                         "> Król podobno wysłał magów, by zabili paskudę i te pozostałe, co się tam wylęgły. Albowiem nie wiem, czy wiesz, miejsce tamto stało się przeklęte. Przyjechał i rycerz na białym koniu i czcigodny starzec...",
                                         "> Zamknij się Willy. Po prostu ich wszystkich uśmierciły i tyle",
                                         "> Ja tutaj pieśń bohaterską opowiadam!",
                                         "> To śpiewaj gdzie indziej",
                                         "Pociągnąłem łyk nowego trunku i z uznaniem popatrzyłem na kufel. Jednak warto było się przysiąść"
                                       ]),
    (("sil", "Pijatyka_karczemna"), ["Już i tak z nim siedzę..."])
    (("recepcjonistka", "Burdel"), "Hi, I'm Alice in StateC.")
    (("eline", "Burdel"), ["Dosiadłem się do Eline, która czekała po drugiej stronie atrium. Od razu by nie zostawać w tyle podeszła do nas Karla."])
    (("karla", "Burdel"), ["Dosiadłem się do Karli, która czekała po drugiej stronie atrium. Od razu by nie zostawać w tyle podeszła do nas Eline."])
    (("strażnik", "Pobudka_loch"), [ "Cześć pijaku. Nieźle się wczoraj zabawiłeś. Król chce cię rano widzieć - nie chciałbym być wtedy w twojej skórze.",
                                                   "(jeden.) Odwal się ode mnie, łeb mi pęka.",
                                                   "(dwa.) Ech, nic nie pamiętam. Mam nadzieję, że nie było tak źle i jednak okaże mi trochę litości."
                                                 ])
    (("król", "Sala_tronowa"), ["Już i tak z nim rozmawiam."])
    (("król", "Propozycja"), ["Już i tak z nim rozmawiam."])
    (("król", "Ponowna_propozycja"), ["Już i tak z nim rozmawiam."])
  ]

lookPeople :: State -> State
lookPeople personName state =
  state { people = newPeople }
  where
    currentStateName = stateName state
    relevantPeople = Map.keys $ Map.filterWithKey (\(_, s) _ -> s == currentStateName) approachMessages
    newPeople = relevantPeople ++ people state

podejdz :: PersonName -> State -> IO ()
podejdz personName state = do
  case Map.lookup (personName, stateName state) helpMessages of
    Just description -> putStrLn description
    Nothing -> putStrLn "Person or state not found."