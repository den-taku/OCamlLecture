type furikake = Shake | Katsuo | Nori;;
type miso = Aka | Shiro | Awase;;
type gu = Wakame | Tofu | Radish;;
type dish = PorkCutlet | Soup of {m: miso; g: gu} | Rice of furikake;;

type menu = Smile | Add of {d: dish; next: menu};;

let isVeggie d = 
    match d with
        PorkCutlet | Rice (Shake | Katsuo) -> false
       |Soup _ | Rice Nori -> true
;;

let rec isVeggieMenu m =
    match m with
        Smile -> true
       |Add {d = d1; next = m'} -> isVeggie d1 && isVeggieMenu m'
;;
