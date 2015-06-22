-- file: ch04/Sum.hs
mySum = helper 0
  where helper acc (x:xs) = helper (acc + x) xs
        helper acc _      = acc
