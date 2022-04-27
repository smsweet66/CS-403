--Author: Sean Sweet

--Given a list of strings, return a list where each string has "y" added at its end, omitting any resulting strings that contain "yy" as a substring anywhere

containsYY :: [Char] -> Bool
containsYY [] = False
containsYY [_] = False
containsYY (x:y:xs) = x == 'y' && y == 'y' || containsYY xs

noYY :: [String] -> [String]
noYY = filter (\x -> containsYY x) . map (++ "y")

main = do
    print $ noYY ["a", "b", "c"]
    print $ noYY ["a", "b", "cy"]
    print $ noYY ["xx", "ya", "zz"]