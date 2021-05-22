fun undividable n nil = nil
  | undividable n (h :: t) =
    if h mod n <> 0 then h :: undividable n t else undividable n t