-- file: ch03/myLength.hs
myLength :: Num a => [t] -> a
myLength (x:xs) = 1 + myLength xs
myLength []     = 0
