-- file: ch03/Palindrome.hs
myReverse xs = _myReverse xs []
    where
        _myReverse (x:xs) bs = _myReverse xs (x:bs)
        _myReverse []     bs = bs

palindrome xs = xs ++ myReverse xs

isPalindrome xs = xs == (myReverse xs)
