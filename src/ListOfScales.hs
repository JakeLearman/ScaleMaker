module ListOfScales where

whole :: Int
whole = 2

half :: Int
half = 1

major :: [Int]
major = [whole, whole, half, whole, whole, whole, half]

minor :: [Int]
minor = [whole, half, whole, whole, half, whole, whole]

harmonicMinor :: [Int]
harmonicMinor = [whole, half, whole, whole, half, whole + half, half]

dorian :: [Int]
dorian = [whole, half, whole, whole, whole, half, whole]

phrygian :: [Int]
phrygian = [half, whole, whole, whole, half, whole, whole]

lydian :: [Int]
lydian = [whole, whole, whole, half, whole, whole, half]

mixolydian :: [Int]
mixolydian = [whole, whole, half, whole, whole, half, whole]

locrian :: [Int]
locrian =  [half, whole, whole, half, whole, whole, whole]

listOfScales :: [[Int]]
listOfScales = [major, minor, harmonicMinor, dorian, phrygian, lydian, mixolydian, locrian]
