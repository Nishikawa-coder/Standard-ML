 (*初期値a、比をr、とした等比数列のn番目まで和を求めよ*)
 fun tohi a r 0 = a
   | tohi a r n =
  let
    fun tohi2 a r 1 = a * r
      | tohi2 a r n = (tohi2 a r (n-1)) * r
  in
    tohi a r (n-1) + tohi2 a r n
  end

  