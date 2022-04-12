isAscending :: Ord a => [a] -> Bool
isAscending [] = True
isAscending [_] = True
isAscending (x:y:xs) = x <= y && isAscending (y:xs)

isDescending :: Ord a => [a] -> Bool
isDescending [] = True
isDescending [_] = True
isDescending (x:y:xs) = x >= y && isDescending (y:xs)

isSorted :: Ord a => [a] -> Bool
isSorted [] = True
isSorted [_] = True
isSorted x = isAscending x || isDescending x

areSorted :: Ord a => [[a]] -> Bool
areSorted = all isSorted

isIn :: Eq a => a -> [a] -> Bool
isIn _ [] = False
isIn n (x:xs) = n == x || isIn n xs

areIn :: Eq a => [a] -> [a] -> Bool
areIn ns xs = all (`isIn` xs) ns