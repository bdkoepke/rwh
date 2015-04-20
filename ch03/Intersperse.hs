-- file: ch03/Intersperse.hs
intersperse :: a -> [[a]] -> [a]
intersperse d (x:xs) | null xs = x
intersperse d (x:xs)           = x ++ [d] ++ intersperse d xs
intersperse d []               = []
