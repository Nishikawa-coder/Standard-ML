fun uniq n = 
    let
        val m = TextIO.inputLine TextIO.stdIn
    in
    case m of
        NONE => ""
      | SOME l => 
      if
            n = "" orelse n <> l
        then
            let
                val n = l
            in
                (print n;
                uniq n)
            end
        else 
            uniq n
    end

val _ = uniq ""
    
        
   (*uniqの引数をSOMEにするのもあり*)
