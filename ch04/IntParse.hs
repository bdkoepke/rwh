-- file: ch04/IntParse.hs
import Data.Char (digitToInt) -- we'll need ord shortly

loop :: Int -> String -> Int
loop = foldl (\ acc x -> acc * 10 + digitToInt x) acc xs

asInt :: String -> Int
asInt = loop 0
