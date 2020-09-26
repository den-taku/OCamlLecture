type ratianal = {
    num: int; (* 分子 *)
    den: int; (* 分母 *)
};;

let rec gcd(n, m) =
    if n = m 
        then n 
    else if n >= m then
        let d = n mod m in
            if d = 0 then 
                m
            else 
                gcd(m, d)
    else 
        let d = m mod n in
            if d = 0 then
                n
            else 
                gcd(d, n);;

let sum(r1, r2) = 
    let g = gcd(r1.den, r2.den) in
        let r1a = r1.num * r2.den / g in 
        let r2a = r2.num * r1.den / g in
            let nu = r1a + r2a in
                let g2 = gcd(nu, r1.den * r2.den / g) in
                    {num = nu / g2; den = r1.den * r2.den / g / g2;};;
