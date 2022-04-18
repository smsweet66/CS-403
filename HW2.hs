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