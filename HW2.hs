import Data.Char

--Given an array of numbers, returns an array containing each value multiplied by two
doubling:: Num a => [a] -> [a]
doubling = map (2 *)

--Given a list of numbers, return a list where each number is multiplied with itself.
square:: Num a => [a] -> [a]
square = map (\ x -> x * x)

--Given a list of non-negative numbers, return a list of the rightmost digits.
rightDigit:: [Int] -> [Int]
rightDigit = map (`mod` 10)

--Given a list of strings, return a list where each string has "*" added at its end
addStar:: [String] -> [String]
addStar = map (++ "*")

--Given a list of strings, return a list where each string is converted to lower case.
lower:: [String] -> [String]
lower = map (map toLower)

--Given a list of strings, return a list where each string has all its "x" removed
noX:: [String] -> [String]
noX = map (filter (/= 'x'))

main = do
    print $ doubling [1,2,3,4,5]
    print $ square [1,2,3,4,5]
    print $ rightDigit [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    print $ addStar ["hello","world"]
    print $ lower ["HELLO","WORLD"]
    print $ noX ["xHELLOx","WORLDx"]