-- file: ch04/Fold.hs
foldl :: (a -> b -> a) -> a -> [b] -> a
foldl step zero (x:xs) = foldl step (step zero x) xs
foldl _    zero []     = zero

foldSum = foldl step 0
  where step acc x = acc + x

niceSum :: [Integer] -> Integer
niceSum xs = foldl (+) 0 xs

-- foldl (+) 0 (1:2:3:[])
--          == foldl (+) (0 + 1)             (2:3:[])
--          == foldl (+) ((0 + 1) + 2)       (3:[])
--          == foldl (+) (((0 + 1) + 2) + 3) []
--          ==           (((0 + 1) + 2) + 3)

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr step zero (x:xs) = step x (foldr step zero xs)
foldr _    zero []     = zero

-- foldr (+) 0 (1:2:3:[])
--          == 1 +           foldr (+) 0 (2:3:[])
--          == 1 + (2 +      foldr (+) 0 (3:[]))
--          == 1 + (2 + (3 + foldr (+) 0 []))
--          == 1 + (2 + (3 + 0))

filter :: (a -> Bool) -> [a] -> [a]
filter p [] = []
filter p (x:xs)
     | p x       = x : filter p xs
     | otherwise = filter p xs

myFilter p xs = foldr step [] xs
  where step x ys | p x       = x : ys
                  | otherwise = ys
