-- file: ch03/mean.hs
mySum (x:xs) = foldr (+) x xs
mySum []     = 0

mean xs = quot (mySum xs) (length xs)
