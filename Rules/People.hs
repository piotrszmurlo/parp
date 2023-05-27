module Rules.People where
import Rules.State
import Rules.Utils
import Rules.KarczmaPijatyka
import Rules.KarczmaIntro
import Rules.Burdel

peopleLook :: State -> IO State
peopleLook state = do
    let description = peopleText (state)
    printLines description
    return state { people = newPeople }
    where
        newPeople = getAllPossiblePeople (state)

getAllPossiblePeople :: State -> [String]
getAllPossiblePeople state =
    case stateName state of
       KarczmaIntro -> ["willy", "sil"]
       KarczmaPijatyka -> ["willy", "sil"]
       Burdel -> ["eline", "karla", "recepcjonistka"]
       SalaTronowa -> ["król"]
       Propozycja -> ["król"]
       PonownaPropozycja -> ["król"]
       _ -> []


peopleText :: State -> [String]
peopleText state =
    case stateName state of
        KarczmaIntro -> ["Dwoje teraz kłócących się starszych panów", "Osoby: willy, sil"]
        KarczmaPijatyka -> ["Dobrze się pije w miłym towarzystwie...", "Osoby: willy, sil", "Ale czy koniecznie ci żołnierze muszą tak dziwnie się gapić?"]
        Burdel -> ["Ta kobieta za recepcją ma serio niesamowite piersi...", "Osoby: recepcjonistka", "A te dwie co zeszły z góry też nie wypadły sroce spod ogona...", "Osoby: eline, karla", "Nie podoba mi się jednak ten brak ochrony... Podejrzane"]
        SalaTronowa -> ["Jestem sam na sam z królem.", "Osoby: król"]
        Propozycja -> ["Jestem sam na sam z królem.", "Osoby: król"]
        PonownaPropozycja -> ["Jestem sam na sam z królem.", "Osoby: król"]
        _ -> []