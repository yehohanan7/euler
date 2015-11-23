isDivisible n = n `rem` 3 == 0 || n `rem` 5 == 0
solution n = foldl (+) 0 (filter isDivisible [1..n])
