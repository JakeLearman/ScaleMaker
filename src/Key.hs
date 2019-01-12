module Key where
    
import Data.List
import Scale
import ListOfScales

printAllOfType :: [Int] -> [[String]]
printAllOfType scaleType = do
        [scale' x scaleType | x <- notes]

tidyPrintAllOfType :: [Int] -> [[String]]
tidyPrintAllOfType scaleType = nub (printAllOfType scaleType)

printAllOfKey :: String -> [[String]]
printAllOfKey note = do
        [scale' note x | x <- listOfScales]

printAllScales :: [[[String]]]
printAllScales = [printAllOfKey x | x <- notes]