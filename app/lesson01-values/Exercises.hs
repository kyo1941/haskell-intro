module Main where

-- 問題1
name :: String
age :: Int

name = "kyo1941"
age = 20

test1 :: IO ()
test1 = do
    putStrLn ("name = " ++ name)

    -- age は Int 型なので show 関数で String 型に変換する(問題7)
    putStrLn ("age = " ++ show age)


-- 問題2
favoriteLanguage :: String
favoriteLanguage = "Haskell"

test2 :: IO ()
test2 = do
    putStrLn ("favorite language = " ++ favoriteLanguage)


-- 問題3
triple :: Int -> Int
triple x = x * 3

test3 :: IO ()
test3 = do
    -- 引数は "(func name) (param1) (param2)" で渡す
    -- そのため show のパラメータは (triple age) という Int 型になる
    putStrLn ("triple age = " ++ show (triple age))


-- 問題4
addTen :: Int -> Int
addTen x = x + 10

test4 :: IO ()
test4 = do
    putStrLn ("addTen age = " ++ show (addTen age))


-- 問題5
profileMessage :: String -> Int -> String
profileMessage profileName profileAge = "私の名前は " ++ profileName ++ "、" ++ show profileAge ++ "歳です。\nよろしくお願いします。"

test5 :: IO ()
test5 = do
    putStrLn (profileMessage name age)


-- 問題6
-- double :: Double
-- double = "Double"

-- 出力エラー
-- • Couldn't match type ‘[Char]’ with ‘Double’
--     Expected: Double
--     Actual: String
-- • In the expression: "Double"
--     In an equation for ‘double’: double = "Double"

-- 問題8
minus :: Int -> Int
minus x = x * (-1)

test8 :: IO ()
test8 = do
    putStrLn (show age ++ " → " ++ show (minus age))


main :: IO ()
main = do
    test1
    test2
    test3
    test4
    test5
    test8