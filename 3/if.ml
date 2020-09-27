let is_positive n =
    if n > 0 then 
        begin
            print_int n;
            print_string " is positive."
        end
    else 
        begin
            print_int n;
            print_string " isn't positive."
        end
;;

is_positive (-100);;
is_positive 100;;
