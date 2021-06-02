datatype 'a tree =
    Leaf
  | Node of 'a tree * 'a * 'a tree

fun sumTree Leaf = 0
  | sumTree (Node (l, n, r)) = n + sumTree l + sumTree r