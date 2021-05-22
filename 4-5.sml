fun max nil = 0
  | max (h :: t) = 
    let 
        fun comp x y =
        if x > y then x else y
    in 
        comp h (max t)
    end