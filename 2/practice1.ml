type point = { x: int; y: int;};;
let area(p1, p2) = 
    let pi = 3.14 in
    let square x = x *. x in
    let diameter({x = p1x; y = p1y}, {x = p2x; y = p2y}) = 
        sqrt(square(float_of_int(p1x) -. float_of_int(p2x)) +. square(float_of_int(p1y) -. float_of_int(p2y))) in
    square(diameter(p1, p2) /. 2.0) *. pi;;
