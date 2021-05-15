fun gcd 0 n = n
  | gcd m n = if m <= n then gcd m (n - m) else gcd n (m - n)