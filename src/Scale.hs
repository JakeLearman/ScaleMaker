module Scale where
 
import Data.List

notes = cycle ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"] 

whole :: Int
whole = 2

half :: Int
half = 1

major :: [Int]
major = [whole, whole, half, whole, whole, whole, half]

minor :: [Int]
minor = [whole, half, whole, whole, half, whole, whole]
getNote :: [String] -> Int -> String
getNote notes n = notes !! n

flattenKey :: [Int] -> [Int]
flattenKey xs = scanl1 (+) xs

makeScale :: [String] -> [Int] -> [String]
makeScale xs ys = [xs !! y | y <- (flattenKey ys)]

formatScale :: [String] -> [Int] -> [String]
formatScale xs ys =  [last (makeScale xs ys)] ++ init (makeScale xs ys)
