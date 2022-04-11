{-# LANGUAGE FlexibleInstances #-}
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

class MyType a where
    isIn :: Int -> a -> Bool

instance MyType [Int] where
    isIn n xs = n `elem` xs

instance MyType [[Int]] where
    isIn n xs = any (isIn n) xs

class MyType2 a where
    areIn :: [Int] -> a -> Bool

instance MyType2 [Int] where
    areIn ns xs = all (`elem` xs) ns

instance MyType2 [[Int]] where
    areIn ns xs = all (`isIn` xs) ns

main = do
    print(isSorted [1,2,3,4,5])
    print(isSorted [5,4,3,2,1])
    print(isSorted [1,3,2,4,5])
    print(areSorted [[1,2,3,4,5],[5,4,3,2,1],[1,2,3,4,5]])
    print(isIn 15 ([[1,2,3,4,5], [10,20,30,40,50]] :: [[Int]]))
    print(isIn 1 ([1,2,3,4,5] :: [Int]))
    print(areIn [1,2,10] ([[1,2,3,4,5], [10,20,30,40,50]] :: [[Int]]))