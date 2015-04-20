-- file: ch03/mySortBy.hs
mySortBy :: (a -> a -> Ordering) -> [a] -> [a]
mySortBy f xs = _mySortBy xs
    where
        _mySortBy []     = []
        _mySortBy (p:xs) = (_mySortBy lesser) ++ [p] ++ (_mySortBy greater)
            where
                lesser  = filter (\x -> (f x p) == LT) xs
                greater = filter (\x -> not ((f x p) == LT)) xs

compareByLength (x:xs) (b:bs) = compareByLength xs bs
compareByLength (x:xs) []     = GT
compareByLength []     (b:bs) = LT
compareByLength []     []     = EQ
