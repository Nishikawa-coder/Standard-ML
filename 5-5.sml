datatype 'a tree =
    Leaf
  | Node of 'a tree * 'a * 'a tree

fun member c Leaf = false
  | member c (Node (l, n, r)) = 
    if c > n then
        member c r
    else if c < n then 
        member c l 
    else true 

