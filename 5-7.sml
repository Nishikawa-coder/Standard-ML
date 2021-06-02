datatype nat = Z | S of nat 

fun natToInt Z = 0
  | natToInt (S n) = natToInt n + 1

fun intToNat 0 = Z
  | intToNat n = S (intToNat (n - 1))