--Author: Sean Sweet

--Given a list of strings, return a list where each string has "y" added at its end, omitting any resulting strings that contain "yy" as a substring anywhere
noYY :: [String] -> [String]
noYY = filter (\x -> not $ containsYY x) . map (++ "y") where
    containsYY [] = False
    containsYY [_] = False
    containsYY (x:y:xs) = x == 'y' && y == 'y' || containsYY (y:xs)

--Given a list of non-negative integers, return a list of those numbers multiplied by 2, omitting any of the resulting numbers that end in 2
two2 :: [Int] -> [Int]
two2 = filter (\x -> x `mod` 10 /= 2) . map (*2)

--Given a list of integers, return a list of those numbers squared and the product added to 10, omitting any of the resulting numbers that end in 5 or 6
square56 :: [Int] -> [Int]
square56 = filter (\x -> x `mod` 10 /= 5 && x `mod` 10 /= 6) . map (\x -> x*x + 10)
