module Key where
    
import Data.List
import Scale
import ListOfScales

printAllOfType :: [Int] -> [[String]]
printAllOfType key = do
        [scale' x key | x <- notes]

tidyPrintAllOfType :: [Int] -> [[String]]
tidyPrintAllOfType key = nub (printAllOfType key)

printAllOfKey :: String -> [[String]]
printAllOfKey note = do
        [scale' note x | x <- listOfScales]