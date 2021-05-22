fun listLength nil = 0
  | listLength (h :: t) = 1 + listLength t  