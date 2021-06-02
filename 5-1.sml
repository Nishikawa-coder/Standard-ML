datatype wday = Sun | Mon | Tue | Wed | Thu | Fri | Sat
fun wdayOf n =
case n mod 7 of 0 => Fri
   | 1 => Sat
   | 2 => Sun
   | 3 => Mon
   | 4 => Tue
   | 5 => Wed
   | 6 => Thu
   | _ => Fri
