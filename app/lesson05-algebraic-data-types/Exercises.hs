module Main where

-- 問題1
data Weather = Sunny | Rainy | Cloudy
    deriving Show

weatherMessage :: Weather -> String
weatherMessage Sunny = "nice day"
weatherMessage Rainy = "take umbrella"
weatherMessage Cloudy = "gray sky"

test1 :: IO ()
test1 = do
    print ("Input Sunny (expected \"nice day\") -> " ++ weatherMessage Sunny)
    print ("Input Rainy (expected \"take umbrella\") -> " ++ weatherMessage Rainy)
    print ("Input Cloudy (expected \"gray sky\") -> " ++ weatherMessage Cloudy)


-- 問題2
data Payment = Cash | CreditCard | Point
    deriving Show

paymentFee :: Payment -> Int
paymentFee Cash = 0
paymentFee CreditCard = 3
paymentFee Point = 1

test2 :: IO ()
test2 = do
    print ("Input Cash -> (expected \"0\") " ++ show (paymentFee Cash))
    print ("Input CreditCard -> (expected \"3\") " ++ show (paymentFee CreditCard))
    print ("Input Point -> (expected \"1\") " ++ show (paymentFee Point))



-- 問題3
-- Book と Food で分ける必要あるか？Content とかに統一して良くない？(問題への文句)
data Item = Book String Int | Food String Int
    deriving Show

itemName :: Item -> String
itemPrice :: Item -> Int

itemName (Book name _) = name
itemName (Food name _) = name
itemPrice (Book _ price) = price
itemPrice (Food _ price) = price

novel :: Item
novel = Book "suspense" 500

bread :: Item
bread = Food "bread" 300

test3 :: IO ()
test3 = do
    print ("Input Book suspense 500 -> " ++ itemName novel)
    print ("Input Food bread 300 -> " ++ itemName bread)
    print ("Input Book suspense 500 -> " ++ show (itemPrice novel))
    print ("Input Book bread 300 -> " ++ show (itemPrice bread))


-- 問題4
data Score = Absent | Scored Int
    deriving Show

showMessage :: Score -> String
showMessage Absent = "absent"
showMessage (Scored point) = "score: " ++ show point

test4 :: IO ()
test4 = do
    print ("Input Absent (expected \"absent\") -> " ++ showMessage Absent)
    print ("Input Scored 80 (expected \"score: 80\") -> " ++ showMessage (Scored 80))


-- 問題5
data Task = Task String Bool
    deriving Show

taskStatus :: Task -> String
taskStatus (Task taskName True) = "[done] " ++ taskName
taskStatus (Task taskName False) = "[todo] " ++ taskName

test5 :: IO ()
test5 = do
    print ("Input Task homework True -> " ++ taskStatus (Task "homework" True))
    print ("Input Task homework False -> " ++ taskStatus (Task "homework" False))


-- 問題6
-- data NoDerivingType = Hoge | Huge
--     deriving Show

-- showNoDerivedMessage :: NoDerivingType -> String
-- showNoDerivedMessage Hoge = show Hoge
-- showNoDerivedMessage Huge = show Huge

-- 出力エラー
-- • No instance for ‘Show NoDerivingType’
--     arising from a use of ‘show’
-- • In the expression: show Hoge
--     In an equation for ‘showNoDerivedMessage’:
--         showNoDerivedMessage Hoge = show Hoge

-- test6 :: IO ()
-- test6 = do
--     print ("Input Hoge -> " ++ showNoDerivedMessage Hoge)
--     print ("Input Huge -> " ++ showNoDerivedMessage Huge)


-- 問題7
data SomeType = HogeHoge | HugeHuge | HigeHige
    deriving Show

showSomeMessage :: SomeType -> String
showSomeMessage HogeHoge = "HogeHoge"
showSomeMessage HugeHuge = "HugeHuge"

test7 :: IO ()
test7 = do
    print (showSomeMessage HigeHige)

-- 出力エラー
-- Non-exhaustive patterns in function showSomeMessage


-- 問題8
-- 同様の検証になるためスキップ


main :: IO ()
main = do
    test1
    test2
    test3
    test4
    test5
    -- test6
    test7
