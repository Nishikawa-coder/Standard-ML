fun Strings () =
    case TextIO.inputLine TextIO.stdIn of
        NONE => ""
      | SOME l => 
      (print l;
      Strings ())
val n = Strings ()
