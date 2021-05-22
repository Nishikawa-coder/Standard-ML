fun matrixMul (a1, a2, a3, a4) (b1, b2, b3, b4) = (a1 * b1 + a2 * b3, a1 * b2 + a2 * b4, a3 * b1 + a4 * b3, a3 * b2 + a4 * b4)
fun matrixPower (c1, c2, c3, c4) 0 = (1.0, 0.0, 1.0, 0.0)
  | matrixPower (c1, c2, c3, c4) n = matrixMul (matrixPower (c1, c2, c3, c4) (n -1)) (c1, c2, c3, c4)
