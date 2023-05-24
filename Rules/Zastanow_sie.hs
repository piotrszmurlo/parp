module Rules.Think where
import Rules.State
import Rules.Utils
import Data.Map as Map

type ThinkMessage = [String]

displayThink :: State -> ThinkMessage
displayThink state = case Map.lookup (stateName state) thinkMessages of
    Just message -> message
    Nothing -> ["Unknown state"]

thinkMessages :: Map.Map Name ThinkMessage
thinkMessages = Map.fromList
  [ (Ostrzezenie, ["PLACEHOLDER!"]),
   (Intro, ["PLACEHOLDER!"]),
   (Karczma, [
                  "> Daj spokój Willy. Wszyscy znamy tę opowieść, a ty po pijaku gadasz jak potłuczony mistrel. Bestia po prostu ich zabiła i kropka. Żadne tam zaryczała. Takie poetycki brednie zostaw zakochanym",
                  "A tak miło się słuchało westchnąłem w duchu.",
                  "> Ha, ha. Dobre Sil. Sam bym nie wpadł na takie porównanie. Już myślałem, że może walnąć go w łeb, to zacznie gadać po ludzku",
                  "> Ja tak mówię?",
                  "No nie. Zepsują mi wieczór swoją kłótnią upiłem długi łyk piwa.",
                  "> Powtórz tylko, co powiedziałeś! Ja mówię jak potłuczony mistrel?",
                  "> Noż przecież mówię.",
                  "(jeden.) Spróbuj uspokoić towarzystwo",
                  "(dwa.) Sprowokuj bójkę",
                  "(trzy.) Zignoruj kłótnię"
              ]),
   (Pijatyka_karczemna, [ "Czoo mi sz-szkodzi sę piłka napić, hę?",
                             "(jeden.) Pij na zdrowie bo się ściemnia...",
                             "(dwa.) Oczywiście że nie szkodzi...",
                             "(trzy.) Od jutra jestem zadeklarowanym abstynentem, przysięgam..."
                             ]),
   (Burdel, [
                 "Nie mogłem nie zauważyć że przyciągam wzrok nowo przybyłych kobiet. Może uda mi się jeszcze trochę przyoszczędzić jak je poczaruję swoim wdziękiem osobistym? Myśl ta mi się całkiem spodobała. W końcu sam nie jestem jakimś odrażającym gnomem, może pójdą na odpowiednią bajerę...",
                 "(jeden.) Historia o potworze",
                 "(dwa.) Nie no, zapłacę normalnie"
                 ]),
   (Pobudka_loch, [
                      "Hmm... gdzie ja jestem?"
                  ]),
   (Loch, [
              "Męczy kac. Położyć się, czy może spróbować się stąd jakoś wymsknąć?",
              "(jeden.) Idę spać.",
              "(dwa.) Uciekam stąd i się wyśpię w domu!"
          ]),
   (Korytarz_loch, ["PLACEHOLDER!"]),
   (Minigame_loch, [
                       "Hmm... moze udałoby mi się jakoś otworzyć tę celę jakimś zagiętym kawałkiem metalu...?"
                   ]),
   (Sala_tronowa, [
                    "Wciąż czuję jak szumi mi w głowie. Jednak trzeba podjąć decyzje.",
                    "Powinienem być uprzejmy? A może szczerość się opłaci?",
                    "Jak powinienem zareagować?",
                    "(jeden.) Chętnie, chętnie, nie powiem. Po twej paskudnej mordzie nie spodziewałem się takiego miłego uczynku. He he.",
                    "(dwa.) Ukłoniłem się nisko, by nie podpaść jeszcze bardziej, ale nie zamierzałem jeszcze siadać przy stoliku."
                       ]),
   (Propozycja, [
                     "No sprawa jest prosta... Mam się zająć mantykorą. Ale ja nie jestem wojownikiem? Co mam zrobić?",
                     "Jak powinienem zareagować?",
                     "(jeden.) Miłościwy panie. Pokornie dziękuje za okazaną mi łaskę – dwornie się kłaniając.",
                     "(dwa.) Ehm, to nie dla mnie, królu nie nadaję się na wojownika. Może mógłbym zrobić coś innego?"
                     ]),
   (Ponowna_propozycja, [
                             "Król bardzo nalega abym zajął się tą mantykorą... Zgodzić się? A może jednak uda mi się go przekonać?",
                             "W ostateczności... Łatwiej go będzie pokonać niż mantykorę... Może spróbuję go zaatakować.",
                             "Co powinienem zrobić?",
                             "(jeden.) Po wtórnym namyśle, dziękuję Ci królu za tę propozycję. Oczywiście ją przyjmuję.",
                             "(dwa.) Prędzej zgniję w lochu niż dam się posiekać w beznadziejnej bitwie",
                             "(trzy.) Oczywiście królu... Waszmości argumenty są nader logiczne! (spróbuję się zbliżyć i obezwładnić króla)"
                         ])
  ]

zastanow :: State -> State
zastanow state = do
  let help = displayThink state
  putStrLn (unlines help)
  state
