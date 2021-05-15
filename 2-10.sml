(* m n（整数）の内数どちらかを、二つの数が同じになるまで減らしていき、その時の数を出力 *)
fun sub m n = if m = n then m else if  m > n then sub (m-1) n else sub m (n-1) 