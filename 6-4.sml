fun listToString f l =
let 
    val l2 = List.map f l
    fun integrate nil = ""
      | integrate (m :: l) = 
      if 
        l <> nil
      then
        m ^ "," ^ integrate l
      else
        m 
in
    "[" ^ integrate l2 ^ "]"
end
(*コンかっとウィズ入れる*)