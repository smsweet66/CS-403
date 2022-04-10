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
isSorted (x:y:xs) = isAscending (x:y:xs) || isDescending (x:y:xs)

areSorted :: Ord a => [[a]] -> Bool
areSorted = foldr ((&&) . isSorted) True

contains :: Eq a => a -> [a] -> Bool
contains _ [] = False
contains x (y:ys) = x == y || contains x ys

containsAll :: Eq a => [a] -> [a] -> Bool
containsAll [] _ = True
containsAll (x:xs) ys = contains x ys && containsAll xs ys

isIn :: Eq a => a -> [[a]] -> Bool
isIn _ [] = False
isIn x (y:ys) = contains x y || isIn x ys

areIn :: Eq a => [a] -> [[a]] -> Bool
areIn [] _ = True
areIn (x:xs) ys = isIn x ys && areIn xs ys

main = do
    print(isSorted [1,2,3,4,5])
    print(isSorted [5,4,3,2,1])
    print(isSorted [1,3,2,4,5])
    print(areSorted [[1,2,3,4,5],[5,4,3,2,1],[1,2,3,4,5]])
    print(isIn 10 [[1,2,3,4,5], [10,20,30,40,50]])
    print(areIn [1,2,10] [[1,2,3,4,5], [10,20,30,40,50]])