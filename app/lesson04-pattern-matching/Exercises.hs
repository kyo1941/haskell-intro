module Main where

-- 問題1
describeBool :: Bool -> String
describeBool True = "true"
describeBool False = "false"

test1 :: IO ()
test1 = do
    print ("Input True -> " ++ describeBool True)
    print ("Input False -> " ++ describeBool False)


-- 問題2
describeNumber :: Int -> String
describeNumber 0 = "zero"
describeNumber 100 = "perfect"
describeNumber _ = "other"

test2 :: IO ()
test2 = do
    print ("Input 0 -> " ++ describeNumber 0)
    print ("Input 100 -> " ++ describeNumber 100)
    print ("Input 1 -> " ++ describeNumber 1)


-- 問題3
firstScoreMessage :: [Int] -> String
firstScoreMessage [] = "no scores"
firstScoreMessage (x : _) = show x

test3 :: IO ()
test3 =  do
    print ("first score is " ++ firstScoreMessage [80])
    print (firstScoreMessage [])


-- 問題4
secondScoreMessage :: [Int] -> String
secondScoreMessage (_ : x : _) = show x
secondScoreMessage [_] = "not enough scores"
secondScoreMessage [] = "not enough scores"

test4 :: IO ()
test4 = do
    print ("second score is " ++ secondScoreMessage [10, 70])
    print (secondScoreMessage [])
    print (secondScoreMessage [10])


-- 問題5
countSmall :: [Int] -> String
countSmall [] = "empty"
countSmall [_] = "one item"
countSmall (_ : _ : _) = "many items"

test5 :: IO ()
test5 = do
    print ("Input [10, 20, 30] -> " ++ countSmall [10, 20, 30])
    print ("Input [] -> " ++ countSmall [])
    print ("Input [10, 20] -> " ++ countSmall [10, 20])
    print ("Input [10] -> " ++ countSmall [10])


-- 問題6
someOperation :: [Int] -> String
someOperation _ = "First Operation"
someOperation (_ : _) = "Second Operation"

test6 :: IO ()
test6 = do
    print ("Input [0, 1] -> " ++ someOperation [0, 1])
    print ("Input [] -> " ++ someOperation [])


-- 問題7
-- getFirstItem :: [Int] -> Int
-- getFirstItem (x : _) = x

-- test7 :: IO ()
-- test7 = do
--     print ("Input [0, 1] -> " ++ show (getFirstItem [0, 1]))
--     -- 出力エラー
--     -- Non-exhaustive patterns in function getFirstItem
--     print ("Input [] -> " ++ show (getFirstItem []))


-- 問題8
checkFullScore :: Int -> String
checkFullScore 100 = "Perfect!"
checkFullScore _ = "Not Perfect..."

getFirstItem :: [Int] -> Int
getFirstItem (x : _) = x
getFirstItem [] = -1


test8 :: IO ()
test8 = do
    print (checkFullScore (getFirstItem [100]))


main :: IO ()
main = do
    test1
    test2
    test3
    test4
    test5
    test6
    -- test7
    test8
