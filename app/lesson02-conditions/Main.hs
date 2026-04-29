module Main where

age :: Int
age = 20

score :: Int
score = 82

isAdult :: Int -> Bool
isAdult personAge = personAge >= 18

adultMessage :: Int -> String
adultMessage personAge =
    if isAdult personAge
        then "adult"
        else "minor"

passMessage :: Int -> String
passMessage examScore =
    if examScore >= 60
        then "passed"
        else "failed"

main :: IO ()
main = do
    putStrLn "Lesson 02: Bool and if then else"
    putStrLn ("age = " ++ show age)
    putStrLn ("isAdult age = " ++ show (isAdult age))
    putStrLn ("adultMessage age = " ++ adultMessage age)
    putStrLn ("score = " ++ show score)
    putStrLn ("passMessage score = " ++ passMessage score)
