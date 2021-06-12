
val n = case TextIO.inputLine TextIO.stdIn of
              NONE => 0
            | SOME l => 
                case Int.fromString l of 
                    NONE => 0
                  | SOME k => k 

fun fib 0 = 0
  | fib 1 = 1
  | fib a = fib (a - 1) + fib (a - 2)
              
val realt = Timer.startRealTimer()

val _ = fib n 

val elapsed = Timer.checkRealTimer realt


val _ = print (Int.toString (Real.toInt IEEEReal.TO_ZERO (Time.toReal elapsed)) ^ "\n")

(*見本ではTimer.startCPUTimer,Timer.startCPUTimerを使いTimer.startCPUTimerのusrの部分をTime.toStringで文字列に変換していたs*)