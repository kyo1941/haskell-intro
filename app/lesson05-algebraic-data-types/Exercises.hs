module Main where

-- 問題1
data Weather = Sunny | Rainy | Cloudy
    deriving Show

weatherMessage :: Weather -> String
weatherMessage _ = "TODO: weatherMessage"

test1 :: IO ()
test1 = do
    putStrLn ("Sunny = " ++ show Sunny)
    putStrLn ("Rainy = " ++ show Rainy)
    putStrLn ("Cloudy = " ++ show Cloudy)
    putStrLn (weatherMessage Sunny)


-- 問題2
data Payment = Cash | CreditCard | Point
    deriving Show

paymentFee :: Payment -> Int
paymentFee _ = 0

test2 :: IO ()
test2 = do
    putStrLn ("paymentFee Cash = " ++ show (paymentFee Cash))
    putStrLn ("paymentFee CreditCard = " ++ show (paymentFee CreditCard))
    putStrLn ("paymentFee Point = " ++ show (paymentFee Point))


-- 問題3
data Item = Book String Int | Food String Int
    deriving Show

itemName :: Item -> String
itemName _ = "TODO: itemName"

itemPrice :: Item -> Int
itemPrice _ = 0

test3 :: IO ()
test3 = do
    let book = Book "Haskell book" 3000
    let food = Food "sandwich" 450
    putStrLn ("book = " ++ show book)
    putStrLn ("food = " ++ show food)
    putStrLn ("itemName book = " ++ itemName book)
    putStrLn ("itemPrice food = " ++ show (itemPrice food))


-- 問題4
data Score = Absent | Scored Int
    deriving Show

scoreMessage :: Score -> String
scoreMessage _ = "TODO: scoreMessage"

test4 :: IO ()
test4 = do
    putStrLn (scoreMessage Absent)
    putStrLn (scoreMessage (Scored 80))


-- 問題5
data Task = Task String Bool
    deriving Show

taskStatus :: Task -> String
taskStatus _ = "TODO: taskStatus"

test5 :: IO ()
test5 = do
    putStrLn (taskStatus (Task "write code" False))
    putStrLn (taskStatus (Task "run cabal" True))


-- 問題8
-- 自分で data を 1 つ追加し、関数も 1 つ作って main から呼んでください。

main :: IO ()
main = do
    test1
    test2
    test3
    test4
    test5
