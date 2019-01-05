module Scale where
 
import Data.List
import ListOfScales

notes = cycle ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"] 

-- Used to flatten a list of steps into a cumulative list of steps

flattenKey :: [Int] -> [Int]
flattenKey xs = scanl1 (+) xs

-- Used to fetch the specified notes in the scale

makeScale :: [String] -> [Int] -> [String]
makeScale xs ys = [xs !! y | y <- (flattenKey ys)]

-- Used to move the starting note back to the front of the sclae

formatScale :: [String] -> [Int] -> [String]
formatScale xs ys =  [last (makeScale xs ys)] ++ (makeScale xs ys)
