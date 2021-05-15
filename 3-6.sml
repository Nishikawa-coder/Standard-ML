fun fib x = 
    let
      fun fib2 i f0 f1 n =
          if i = n then f0 
                   else fib2 (i + 1) f1 (f0 + f1) n
      val f0 = 0
      val f1 = 1
     
    in
      fib2 0 f0 f1 x
    end