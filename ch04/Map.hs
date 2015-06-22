-- file: ch04/Map.hs
import Data.Char (toUpper)

square :: [Double] -> [Double]
square = map (\ x -> x*x)

upperCase :: String -> String

upperCase = map toUpper

myMap :: (a -> b) -> [a] -> [b]
myMap f (x:xs) = f x : myMap f xs
myMap _ _ = []
