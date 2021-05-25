fun intro {surname, name, age} = "My name is " ^ name ^ " " ^ surname ^ ". I am " ^ Int.toString age ^ " years old."

(*
intro {surname = "Nishikawa", name = "Rin", age = 21};
val it = "My name is Rin Nishikawa. I am 21 years old." : string
*)