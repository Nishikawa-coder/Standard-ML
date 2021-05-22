fun listAppend nil (m :: l) = (m :: l)
  | listAppend (h :: t) (m :: l) = h :: listAppend t (m :: l)
