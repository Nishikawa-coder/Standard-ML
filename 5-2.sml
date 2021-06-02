datatype license = Large | Middle | Normal
fun mayDrive Large n = true
  | mayDrive Middle n =
    if n < 30 then true else false
  | mayDrive Normal n = 
    if n < 11 then true else false
