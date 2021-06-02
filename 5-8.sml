datatype nat = Z | S of nat 
fun addNat (Z, (S b)) = (S b)
  | addNat ((S a), Z) = (S a)
  | addNat (Z, Z) = Z 
  | addNat ((S a), (S b)) =
        S (addNat (a, (S b)))

fun mulNat (Z, (S b)) = Z
  | mulNat ((S a), Z) = Z 
  | mulNat (Z, Z) = Z 
  | mulNat ((S a), (S b)) =
    addNat (mulNat (a, (S b)), (S b))
    

