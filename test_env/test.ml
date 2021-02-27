let rec f x = if x = 0 then 1 else f (x - 1)

let rec g y = if y = 0 then 1 else g (y - 1)

let hoge = 9

let fuga = hoge + 0

let hogefuga = hoge + fuga

type foo = { x : float; y : float }

let rec p x = if x = 0 then 3 else p (x - 1)
