type furikake = Shake | Katsuo | Nori;;
type miso = Aka | Shiro | Awase;;
type gu = Wakame | Tofu | Radish;;
type dish = PorkCutlet | Soup of {m: miso; g: gu} | Rice of furikake;;

let price_of_dish d =
    match d with
        PorkCutlet -> 350
       |Soup m_and_g -> 90
       |Rice f -> (match f with Shake -> 90 | Katsuo -> 90 | Nori -> 80)
;;
