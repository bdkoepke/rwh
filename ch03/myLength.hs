-- file: ch03/myLength.hs
myLength :: Num a => [t] -> a
myLength = foldr (\ x -> (+) 1) 0
