val rateJPY = 109.65
val rateEUR = 1.1902

fun JPYtoUSD x = x / rateJPY
fun USDtoEUR y = y * rateEUR
fun JPYtoEUR z = USDtoEUR (JPYtoUSD z)

