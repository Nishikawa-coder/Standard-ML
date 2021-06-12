fun maxOdd nil = 0
  | maxOdd (h :: t) =
  let
    val l = List.filter (fn x => x mod 2 = 1 andalso x >= 0) (h :: t)(*xは負ではないという条件は不要*)
  in
    if 
        l = nil
    then
        0
    else 
        List.foldr Int.max 0 l
  end
  