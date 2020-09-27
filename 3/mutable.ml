type mutable_point = {mutable x: int; mutable y: int;};;
let m_origin = { x = 0; y = 0; };;
m_origin;;
m_origin.x <- 2;;
m_origin;;

print_int;;
print_int(5 + 15);;

let p1 = { x = 1; y = 0; };;
p1.y <- 2;;
p1;;
let p2 = p1;;
p2.x <- 3;;
p1;;
let p3 = {p2 with x = 2};;
