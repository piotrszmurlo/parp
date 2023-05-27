module Rules.SalaTronowa where
import Rules.State
salaTronowaState =
  State
    0
    SalaTronowa
    salaTronowaText
    salaTronowaHelpText
    salaTronowaThinkText
    False
    False
    False
    [""]

salaTronowaText =  [
    "Chwilę później udaliśmy się do sali tronowej na spotkanie z monarchą.",
    "Sala tronowa robiła imponujące wrażenie. Po prawdzie wszystko robiło imponujące wrażenie po choćby jednej nocy spędzonej w lochu.",
    "Do tej pory miałem mdłości na myśl o podawanej tam papce. Na szczęście z jakiegoś nieznanego mi powodu wrzucili mi do celi wiązkę słomy i brudny wełniany koc.",
    "Drapał i niemiłosiernie śmierdział, ale dawało się przeżyć. Nie powiem jednak, że nie odetchnąłem z ulgą, gdy wreszcie pozwolono mi wyjść.",
    "Zaniepokoiłem się jednak, gdy zamiast wyrzucić mnie z zamku, kazali mi się umyć i przebrać w czyste ciuchy. Nie wróżyło to niczego dobrego.",
    "W każdym razie musiałem to przyznać – sala tronowa była niesamowita.",
    "Ściany, choć z surowego kamienia, zostały ozdobione misternymi płaskorzeźbami ze świata zwierząt i roślin.",
    "Artysta postarał się nawet o wprawienie w oczy zastygłych w kamieniu zwierząt, dużych klejnotów, czy tez szkiełek je udających.",
    "Płaskorzeźby te ciągnęły się przez całą salę aż do ogromnego tronu w kształcie wielkiego dębu.",
    "Prawdopodobnie zamiarem architekta było sprawiać wrażenie, jakoby siedzący na nim władca była panem nie tylko ludzi, ale też przyrody - Pomyślałem",
    "Kontrowersyjny pogląd, ale z pewnością robiło to wrażenie.",
    "Witaj przybyszu! - Niesłychanie uprzejmie przywitał mnie król",
    "Mamy do pogadania. Usiądź sobie wygodnie. W twoim stanie zapewne chciałbyś się napić? - Zaproponował",
    "Zapowiadało się ciekawie.",
    ""
    ]

salaTronowaHelpText = [
    "Muszę się zastanowić nad odpowiedzią jakiej udzielę."
    ]

salaTronowaThinkText = [
    "Wciąż czuję jak szumi mi w głowie. Jednak trzeba podjąć decyzje.",
    "Powinienem być uprzejmy? A może szczerość się opłaci?",
    "Jak powinienem zareagować?",
    "(jeden.) Chętnie, chętnie, nie powiem. Po twej paskudnej mordzie nie spodziewałem się takiego miłego uczynku. He he.",
    "(dwa.) Ukłoniłem się nisko, by nie podpaść jeszcze bardziej, ale nie zamierzałem jeszcze siadać przy stoliku."
    ]

salaTronowaChoiceOneText = [
    "Król tylko skrzywił się na te słowa"
    ]

salaTronowaChoiceTwoText = [
    "Król uśmiechnął się nieznacznie",
    "A jednak potrafisz okazać odrobinę szacunku..."
    ]
