module Main where

name :: String
name = "Kyo"

age :: Int
age = 23

double :: Int -> Int
double n = n * 2

introduce :: String -> Int -> String
introduce person personAge =
    person ++ " is " ++ show personAge ++ " years old."

main :: IO ()
main = do
    putStrLn "Lesson 01: values, types, and functions"
    putStrLn ("name = " ++ name)
    putStrLn ("age = " ++ show age)
    putStrLn ("double age = " ++ show (double age))
    putStrLn (introduce name age)
