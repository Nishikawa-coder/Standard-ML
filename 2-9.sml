fun komeDay 1 = 1
  | komeDay n = komeDay (n-1) * 2 

fun komeAccum 0 = 0
  | komeAccum n = komeDay (n) + komeAccum (n-1)   

fun tsubuToHyo n = ((real n / 64827.0) / 10.0) / 4.0

val answer = tsubuToHyo (komeAccum 30) 
