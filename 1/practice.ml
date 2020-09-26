(*practice 1*)
let rec squaresum n = 
    let square x = x * x in
    if n = 1 then square 1 else square n + squaresum (n - 1);;
squaresum 3;;
