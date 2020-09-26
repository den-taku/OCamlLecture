let n = 5 * 2 in n + n;;
let x1 = 1 + 1 in
  let x2 = x1 + x1 in
  let x3 = x2 + x2 in
  x3 + x3;;
let pi = 3.14;;
let circle_area radius = pi *. radius *. radius;;
let cylinder_vol(r, h) =
  let bottom = circle_area r in
  bottom *. h;;
let cube n = n * n * n in
  cube 1 + cube 2 + cube 3;;
