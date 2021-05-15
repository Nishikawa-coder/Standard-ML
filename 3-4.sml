val k = 1000
fun sub_intg f 0 = 0.0
  | sub_intg f n =  sub_intg f (n - 1) + f (real n / real k - 1.0 /(2.0 * real k))* (1.0 / real k)

fun intg f = sub_intg f k