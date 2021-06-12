fun Plus n = 
        case TextIO.inputLine TextIO.stdIn of
              NONE => ()
            | SOME l => 
                case Real.fromString l of 
                    NONE => ()
                  | SOME k => 
                  (print (Real.toString(n + k)^"\n");
                  Plus (n + k))

val _ = Plus 0.0   

