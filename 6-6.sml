fun sequence x =
    if 
        x > 50 
    then 
        ""
    else if 
        x mod 15 = 0
    then
        (print ("Fizz Buzz\n");
        sequence (x + 1))
    else if 
        x mod 5 = 0
    then 
        (print ("Buzz\n");
        sequence (x + 1))
    else if 
        x mod 3 = 0
    then
        (print ("Fizz\n");
        sequence (x + 1))
    else
    (print (Int.toString x ^ "\n");
    sequence (x + 1))

val n = sequence 1
