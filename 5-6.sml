datatype 'a tree =
    Leaf
  | Node of 'a tree * 'a * 'a tree

fun member c Leaf = false
  | member c (Node (l, n, r)) = 
    if c > n then
        (if r <> Leaf then member c r else false)
    else if c < n then 
        (if l <> Leaf then member c l else false)
    else true 

fun insert Leaf c = Node (Leaf, c, Leaf)
  | insert (Node (l, n, r)) c =
    if  
      member c (Node (l, n, r)) = true
    then
      (Node (l, n, r))
    else
    let 
      fun sub_insert Leaf sub_c = Node (Leaf, sub_c, Leaf)
        | sub_insert (Node (sub_l, sub_n, sub_r)) sub_c = 
          if
            sub_n < sub_c
          then
            Node(sub_l, sub_n, sub_insert sub_r sub_c)
          else
            Node(sub_insert sub_l sub_c, sub_n, sub_r)
    in
    sub_insert (Node (l, n, r)) c
    end
          
    



      
   

    