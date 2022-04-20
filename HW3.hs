--Author: Sean Sweet

--Given a list of integers, return a list where each integer is added to 1 and the result is multiplied by 10
math1:: [Int] -> [Int]
math1 = map ((* 10) . (+ 1))

--Given a list of strings, return a list where each string has "y" added at its start and end
moreY:: [String] -> [String]
moreY = map (("y" ++) . (++ "y"))

--Given a list of strings, return a list where each string is replaced by 4 copies of the string concatenated together
copies3:: [String] -> [String]
copies3 = map (concat . replicate 4)
