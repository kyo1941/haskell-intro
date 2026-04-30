module Main where

-- 問題1
scores :: [Int]
scores = [80, 60, 45, 90, 100]

test1 :: IO ()
test1 = print scores


-- 問題2
double :: Int -> Int
doubleAll :: [Int]
double x = x * 2
doubleAll = map double scores

test2 :: IO ()
test2 = do
    print doubleAll


-- 問題3
isPassed :: Int -> Bool
passedScores :: [Int]
isPassed score = score >= 60
passedScores = filter isPassed scores

test3 :: IO ()
test3 = do
    print passedScores


-- 問題4
wordsList :: [String]
wordsList = ["Haskell", "Kotlin", "Java", "C"]
isShortWord :: String -> Bool
shortsWords :: [String]
isShortWord str = length str <= 5 
shortsWords = filter isShortWord wordsList

test4 :: IO ()
test4 = do
    print shortsWords






main :: IO ()
main = do
    test1
    test2
    test3
    test4
