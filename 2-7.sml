fun debt r d m 0 = m
  | debt r d m n = debt r d (floor ((1.0 + (r / 100.0) * (30.0 / 365.0)) * real m - real d)) (n-1)