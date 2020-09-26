let average(x, y) = (x + y) / 2;;
type point = { x: int; y: int; };;
let origin = { x = 0; y = 0;};;
origin.x;;
let middle(p1, p2) = 
    { x = average(p1.x, p2.y); y = average(p1.y, p2.y); };;
middle(origin, { x = 4; y = 5;});;

let {x = ox; y = oy;} = origin;;
let middle(p1, p2) =
    let {x = p1x; y = p1y;} = p1 in
    let {x = p2x; y = p2y;} = p2 in
    {x = average(p1x, p2x); y= average(p1y, p2y);};;

let middle({x = p1x; y = p1y;}, {x = p2x; y = p2y;}) = 
    {x = average(p1x, p2x); y = average(p1y, p2y)};;

let get_x {x} = x;;
