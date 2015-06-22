-- file: ch04/Filter.hs
addList :: [Int] -> [Int]
addList (x:xs) | odd x     = x : oddList xs
               | otherwise = oddList xs
oddList _                  = []
