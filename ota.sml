fun inputSize a =
case TextIO.inputLine TextIO.stdIn of
        NONE => a
      | SOME s => inputSize (a + size s)

val n = inputSize 0
val _ = print (Int.toString n ^ "\n")