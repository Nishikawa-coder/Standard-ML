fun compose f g = fn x => f (g x)

fun repeat 0 f = (fn x => x)
  | repeat n f = compose f (repeat (n - 1) f)
