datatype nat = Z | S of nat 
(*datatype 'a option = SOME of 'a | NONE*)
fun subNat (Z, Z) = SOME Z
  | subNat ((S a), Z) = SOME (S a)
  | subNat (Z, (S b)) = NONE
  | subNat ((S a), (S b)) = 
    subNat (a, b)

fun divNat ((S a), Z) = NONE
  | divNat (Z, (S a)) = SOME Z
  | divNat (Z, Z) = NONE
  | divNat ((S a), (S b)) = 
  let

fun sNat (Z, Z) = Z
  | sNat ((S a), Z) = S a
  | sNat (Z, (S b)) = S b(*本来ならば負の数だが、divNatでは使わないので出力は適当*)
  | sNat ((S a), (S b)) = 
    sNat (a, b)

fun dNat (Z, Z) = Z(*右の引数の値を左の引数の値から何回引いたかをnat型で出力する関数。除数がZの時は値が存在しないがここではZとしている*)
  | dNat ((S a), Z) = Z
  | dNat (Z, (S b)) = Z
  | dNat ((S a), (S b)) =
    if subNat ((S a), (S b)) <> NONE
    then S (dNat ((sNat ((S a), (S b))),(S b)))
    else Z

    in  
    SOME (dNat ((S a), (S b)))
    end



