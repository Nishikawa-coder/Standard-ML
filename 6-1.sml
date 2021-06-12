fun printLines nil = ()
  | printLines (h :: t) = 
      (print (h ^ "\n");
      printLines t)
      