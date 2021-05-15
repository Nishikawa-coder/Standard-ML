fun power x 0 = 1.0
  | power x n = 
    if n mod 2 = 0 then power (x * x) (n div 2)
                   else power x (n-1) * x

  