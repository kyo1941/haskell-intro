module Main where

-- 問題1
isPositive :: Int -> Bool
isPositive num = num > 0

test1 :: IO ()
test1 = do
    -- とある IO に対して if で String が決定される(← IO と分岐が独立しているて Haskell っぽい)
    putStrLn ("isPositive 10 = " ++ 
        if isPositive 10
            then "True"
            else "False"
        )

    -- とある if に対して IO が決定される(← 分岐の中に IO が混入していて、分岐の時点で先が見えない)
    if isPositive 10
        then putStrLn "isPositive 10 = True"
        else putStrLn "isPositive 10 = False"


-- 問題2
temperatureMessage :: Int -> String
temperatureMessage temperature = if temperature >= 30
    then "hot"
    else "comfortable"

test2 :: IO ()
test2 = do
    putStrLn ("temperatureMessage 32 = " ++ temperatureMessage 32)


-- 問題3
passOrFail :: Int -> String
passOrFail score = if score >= 60
    then "pass"
    else "fail"

score1 :: Int
score2 :: Int

score1 = 30
score2 = 90

test3 :: IO ()
test3 = do
    putStrLn (show score1 ++ " -> " ++ passOrFail score1)
    putStrLn (show score2 ++ " -> " ++ passOrFail score2)


-- 問題4
isZero :: Int -> Bool
isZero num = num == 0

test4 :: IO ()
test4 = do
    putStrLn (if isZero 0
        then "Zero"
        else "Not Zero"
        )
    putStrLn (if isZero 100
        then "Zero"
        else "Not Zero"
        )


-- 問題5
notZeroMessage :: Int -> String
notZeroMessage num = if num /= 0
    then "not zero"
    else "zero"

test5 :: IO ()
test5 = do
    putStrLn (notZeroMessage 100)
    putStrLn (notZeroMessage 0)


-- 問題6
-- hoge :: String
-- hoge = if True
--     then "yes"
--     else 0

-- 出力エラー
-- • No instance for ‘Num String’ arising from the literal ‘0’
-- • In the expression: 0
--     In the expression: if True then "yes" else 0
--     In an equation for ‘hoge’: hoge = if True then "yes" else 0


-- 問題7
-- hoge :: String
-- hoge = if True then "yes"

-- 出力エラー (次の行を参照しているため、構文として完結していないとみなされていそう)
-- parse error on input ‘isLongString’

-- 問題8
isLongString :: String -> Bool
isLongString str = length str > 10

warningMessage :: Bool -> String
warningMessage cond = if cond
    then "Warning!!"
    else "Safe!!"

test8 :: IO ()
test8 = do
    putStrLn (warningMessage (isLongString "This is Long Message"))
    putStrLn (warningMessage (isLongString "short."))



main :: IO ()
main = do
    test1
    test2
    test3
    test4
    test5
    test8
