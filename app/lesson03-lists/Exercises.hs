module Main where

-- 問題1
scores :: [Int]
scores = [80, 60, 45, 90, 100]

test1 :: IO ()
test1 = print scores


-- 問題2
double :: Int -> Int
doubleAll :: [Int] -> [Int]
double x = x * 2
doubleAll = map double

test2 :: IO ()
test2 = do
    print (doubleAll scores)


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


-- 問題5
countScores :: [Int] -> Int
countScores = length

test5 :: IO ()
test5 = do
    print (countScores scores)


-- 問題6
-- multipleTypesList :: [Int]
-- multipleTypesList = [1, 2, "three"]

-- 出力エラー
-- • Couldn't match type ‘[Char]’ with ‘Int’
--     Expected: Int
--     Actual: String
-- • In the expression: "three"
--     In the expression: [1, 2, "three"]
--     In an equation for ‘multipleTypesList’:
--         multipleTypesList = [1, 2, "three"]


-- 問題7
-- sampleList :: [Int]
-- outputList :: [Int]
-- sampleFilter :: Int -> Int

-- sampleList = [1, 2, 3, 4, 5]
-- sampleFilter x = x * 2


-- outputList = filter sampleFilter sampleList

-- 出力エラー (filter は Bool が返り値であることを期待している)
-- • Couldn't match type ‘Int’ with ‘Bool’
--     Expected: Int -> Bool
--     Actual: Int -> Int
-- • In the first argument of ‘filter’, namely ‘sampleFilter’
--     In the expression: filter sampleFilter sampleList
--     In an equation for ‘outputList’:
--         outputList = filter sampleFilter sampleList


-- 問題8
myScore :: [Int]
isFullScore :: Int -> Bool
emphasizeFullScore :: Int -> String

myScore = [100, 95, 40, 100, 100, 80, 75, 100]
isFullScore score = score == 100
emphasizeFullScore score = show score ++ "!"

test8 :: IO ()
test8 = do
    print (map emphasizeFullScore (filter isFullScore myScore))


main :: IO ()
main = do
    test1
    test2
    test3
    test4
    test5
    test8
