module Key where
    
import Data.List
import Scale
import ListOfScales

-- Used to print all scales of a certain type e.g. major, minor... full list in ListOfScales.hs
-- Usage :: printAllOfType major = ..List of all major scales...
printAllOfType :: [Int] -> [[String]]
printAllOfType scaleType = do
        [scale' x scaleType | x <- notes]

-- Same as above but removes duplicate scales
tidyPrintAllOfType :: [Int] -> [[String]]
tidyPrintAllOfType scaleType = nub (printAllOfType scaleType)

-- Used to print all scales in a certain key
-- Usage: printAllOfKey "C" would return all scales in the list in the key of C
printAllOfKey :: String -> [[String]]
printAllOfKey note = do
        [scale' note x | x <- listOfScales]

-- Prints all scales in the list of scales in every key

allScales :: [String] -> [[[String]]]
allScales [] = []
allScales (x:xs) = printAllOfKey x : allScales xs

-- Filter Time

-- Only print scales containing a certain note
-- Usage: filterScale "C" -> List of Scales
filterScale :: String -> [[[String]]]
filterScale note =  map (filter (note `elem`))(allScales notes)

-- Same as above but remove duplicates
tidyFilterScale :: String -> [[[String]]]
tidyFilterScale note = nub (filterScale note)