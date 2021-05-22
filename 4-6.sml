fun sequence (x,y) =
    if x > y then nil
    else x :: sequence ((x + 1), y) 