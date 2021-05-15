fun sigma f 0 = 0.0
  | sigma f n =  sigma f (n - 1) + f n 
  