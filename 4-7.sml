fun listAppend nil L2 = L2
  | listAppend (h :: t) L2 = h :: listAppend t L2
