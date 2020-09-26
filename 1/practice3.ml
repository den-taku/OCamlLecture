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
