fun undividable n nil = nil
  | undividable n (h :: t) =
    if h mod n <> 0 then h :: undividable n t else undividable n t

fun sieve nil = nil
  | sieve (h :: t) = h :: undividable h (sieve t)


fun primes n =
let
  val a = n + 2
  fun Asc b = 
    if b = 1 then nil else a - b :: Asc (b - 1)
in
  sieve (Asc n)
end
    




 