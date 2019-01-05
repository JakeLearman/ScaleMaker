module Scale where
 
import Data.List
import ListOfScales
import Data.Maybe
import Control.Lens

notes =  cycle ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"] 

-- Used to flatten a list of steps into a cumulative list of steps
-- e.g. flattenKey major = [2,2,1,2,2,2,1] -> [2,4,5,7,9,11,12]

flattenKey :: [Int] -> [Int]
flattenKey xs = scanl1 (+) xs

-- getElement will be safer than using !!
-- e.g. getElement 3 [1,2,3,4,5] -> 4

getElement :: Int -> [a] -> a
getElement 0 [] = error "Error: One or more of the lists are empty"
getElement y (x:xs)  | y <= 0 = x
                     | otherwise = getElement (y-1) xs

-- Used to fetch the specified notes in the scale
-- e.g. makeScale notes major = ["D","E","F","G","A","B","C"]

makeScale :: [String] -> [Int] -> [Maybe String]
makeScale [] _ = []
makeScale _ [] = []
makeScale xs ys =  [xs ^? element y | y <- (flattenKey ys)]

-- Used to move the starting note back to the front of the scale
-- e.g. makeScale' notes major = ["D","E","F","G","A","B","C"]

makeScale' :: [String] -> [Int] -> [Maybe String]
makeScale' xs ys =  [last (makeScale xs ys)] ++ (makeScale xs ys)

-- Used to shift the notes list to a different starting point
-- e.g. rotateList 3 "ABCDEFG" = "DEFGABC"

rotateList:: Int -> [a] -> [a]
rotateList _ [] = []
rotateList n xs = zipWith const (drop n (cycle xs)) xs

-- Used to shift the list of notes dependent on a starting note
-- e.g. shiftNotes "D#" notes = 
shiftNotes :: String ->  [String]
shiftNotes n = rotateList (fromJust(elemIndex n notes)) notes

-- Used to generate Scales
-- e.g. scale "C" major = [Just "C",Just "D",Just "E",Just "F",Just "G",Just "A",Just "B",Just "C"]

scale :: String -> [Int] -> [Maybe String]
scale n key = makeScale' (shiftNotes n) key

-- Used to remove the maybe wrapper for scales
-- e.g. scale' "C" major = ["C","D","E","F","G","A","B","C"]

scale' :: String -> [Int] -> [String]
scale' n key = catMaybes(scale n key)