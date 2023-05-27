module Rules.Propozycja where
import Rules.State
propozycjaState =
  State
    0
    Propozycja
    propozycjaText
    propozycjaHelpText
    propozycjaThinkText
    False
    False
    False
    [""]

propozycjaText =  [
    "Król tymczasem wstał z tronu i zaczął nieśpiesznie iść w moją stronę.",
    "Zatrzymał się jakieś dwa metry ode mnie i przeszedł zdecydowanie do sprawy.",
    "Widzisz. Sprawa wygląda tak. W jednej z największych oberży w mieście, dodatkowo w stolicy tego pięknego państwa rzucałeś obelgi pod moim adresem.",
    "Na tym nie skończyłeś, obrażając moją rodzinę i wręcz królestwo. Podpada to pod próbę buntu.",
    "Powiedział król.",
    "Próbę buntu? Za pijackie krzyki? Co drugi tak się tu drze. Czy on szuka kozła ofiarnego?",
    "Ale w swej łaskawości ofiaruję ci możliwość zadośćuczynienia za swoje grzechy.",
    "Udasz się do lasów na zachód królestwa i spróbujesz zabić Mantykorę, która tam krąży. Taki potwór.",
    "Uda ci się – zostaniesz obsypany złotem, a twoje przewiny zostaną ci wybaczone. Nie uda...",
    "Król zaśmiał się i niespodziewanie zamilkł.",
    "Ach więc takie buty.  Jaśnie miłościwy władca szuka śmiałka do zadania."
    ]

propozycjaHelpText = [
    "Muszę się zastanowić nad odpowiedzią jakiej udzielę."
    ]

propozycjaThinkText = [
    "No sprawa jest prosta... Mam się zająć mantykorą. Ale ja nie jestem wojownikiem? Co mam zrobić?",
    "Jak powinienem zareagować?",
    "(jeden.)  Miłościwy panie. Pokornie dziękuje za okazaną mi łaskę – dwornie się kłaniając.",
    "(dwa.) Ehm, to nie dla mnie, królu nie nadaję się na wojownika. Może mógłbym zrobić coś innego?"
    ]

propozycjaChoiceOneText = [
    "Król uśmiechnał się"
    ]

propozycjaChoiceTwoText = [
    "Król skrzywił się, jednak po chwili wrócił do swojej dziwnie przyjaznej osobowości."
    ]