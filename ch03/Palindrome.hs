-- file: ch03/Palindrome.hs
myReverse xs = _myReverse xs []
    where
        _myReverse xs bs = foldl (:) bs xs

palindrome xs = xs ++ myReverse xs

isPalindrome xs = xs == myReverse xs
