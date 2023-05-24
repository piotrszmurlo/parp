module Rules.Endings where
import Rules.State
import Rules.Utils

getEndingForEndingNumber :: Integer -> [String]
getEndingForEndingNumber endingNumber
  | endingNumber == 0  = ["Game in progress"]
  | endingNumber == 1 = ending1Text
  | endingNumber == 2  = ending2Text

printEnding :: State -> IO()
printEnding state = printLines (getEndingForEndingNumber (endingNumber state))

ending1Text = [
    "[Zakończenie 1 - Mile Spędzona Nocka]",
    "",
    "Wcale nie było tu tak źle jak mówił ten stary jasnowidz - Pomyślałem ",
    "Całkiem mile spędzona nocka...",
    "" 
    ]

ending2Text = [
    "[Zakończenie 2 - Śmierć przez nadmiar zelaza]",
    "",
    "Rozpętała się bitwa na miecze. Bohater nie miał zbyt duzej szansy przeciwko trzem straznikom.",
    "Więcej nie pije... - Pomyślałem",
    "" 
    ]