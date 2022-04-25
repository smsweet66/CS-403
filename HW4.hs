--Author: Sean Sweet

--Given a list of integers, return a list of the integers, omitting any that are less than 0
noNeg:: [Int] -> [Int]
noNeg [] = []
noNeg x = filter (>=0) x

--Given a list of non-negative integers, return a list of those numbers except omitting any that end with 9
no9:: [Int] -> [Int]
no9 [] = []
no9 x = filter (\x -> mod x 10 /= 9) x

--Given a list of integers, return a list of those numbers, omitting any that are between 13 and 19 inclusive
noTeen:: [Int] -> [Int]
noTeen [] = []
noTeen x = filter (\x -> x < 13 || x > 19) x

--Given a list of strings, return a list of the strings, omitting any string that contains a "z"
noZ:: [String] -> [String]
noZ [] = []
noZ x = filter (\x -> 'z' `notElem` x) x

--Given a list of strings, return a list of the strings, omitting any string length 4 or more
noLong:: [String] -> [String]
noLong [] = []
noLong x = filter (\x -> length x < 4) x

--Given a list of strings, return a list of the strings, omitting any string length 3 or 4
no34:: [String] -> [String]
no34 [] = []
no34 x = filter (\x -> length x /= 3 && length x /= 4) x

main = do
    print $ noNeg [1,-2,3,4,5,-1,-2,-3,-4,-5]
    print $ no9 [1,2,3,4,5,6,7,8,9,10]
    print $ noTeen [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    print $ noZ ["abc", "xyz", "123", "az", "", "zz"]
    print $ noLong ["abc", "", "asdf", "qwerty", "zxcvb"]
    print $ no34 ["abc", "", "asdf", "qwerty", "zxcvb"]