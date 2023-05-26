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

burdelText =  [
    "Świeże powietrze uderza mnie w twarz. Mrużąc oczy w wietrze, spostrzegam nagle po drugiej stronie ulicy świecący w nocy szyld 'Dom spotkań: Zalotka'.",
    "Nie znam tego geniusza, ale postawienie domu publicznego koło karczmy musiało być strzałem w dziesiątkę - w końcu kobiety oba te przybytki rozkoszy omijają szerokim łukiem, a już starożytni znali uzależniające połączenie wina i nadobnych kobiet.",
    " Uczone rozważania przez moment przerwała mi szara rzeczywistość. Pomacałem się po kieszeni - sakiewka choć niezbyt pełna, dalej da radę opłacić wizytę.",
    "Skoro oszczędziłem na całej nocy popijawy, to pewnie mogę sobie zrobić prezencik zastępczy…",
    "Po wymyśleniu tego uzasadnienia, wszedłem przeszedłem przez ulicę i pchnąłem zapraszająco uchylone odrzwia.",
    ""
    ]
burdelHelpText = ["burdelHelpText"]
burdelLookAroundText = ["burdelLookAroundText"]
burdelThinkText = ["burdelThinkText"]