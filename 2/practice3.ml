type furikake = Shake | Katsuo | Nori;;
type miso = Aka | Shiro | Awase;;
type gu = Wakame | Tofu | Radish;;
type dish = PorkCutlet | Soup of {m: miso; g: gu} | Rice of furikake;;

let isVeggieDish d = 
    match d with
        PorkCutlet | Rice (Shake | Katsuo) -> false
       |Soup _ | Rice Nori -> true
;;
