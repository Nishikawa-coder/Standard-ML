fun readIntList () = 
        case TextIO.inputLine TextIO.stdIn of
              NONE => nil
            | SOME l => 
                case Int.fromString l of 
                    NONE => nil
                  | SOME k => k :: readIntList ()
    