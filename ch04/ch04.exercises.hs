-- file: ch04/ch04.exercises.hs
safe :: ([a] -> b) -> [a] -> Maybe b
safe f [] = Nothing
safe f xs = Just (f xs)

safeHead :: [a] -> Maybe a
safeHead = safe head

safeTail :: [a] -> Maybe [a]
safeTail = safe tail

safeLast :: [a] -> Maybe a
safeLast = safe last

safeInit :: [a] -> Maybe [a]
safeInit = safe init

splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith _ [] = []
splitWith f xs = 
  let (pre, suf) = break f xs
  in pre : case suf of
    [] -> []
    (x:xs') -> splitWith f xs'
