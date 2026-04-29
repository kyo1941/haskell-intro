module Main where

numbers :: [Int]
numbers = [1, 2, 3, 4, 5]

names :: [String]
names = ["Haskell", "Cabal", "GHC"]

double :: Int -> Int
double n = n * 2

isEvenNumber :: Int -> Bool
isEvenNumber n = even n

doubledNumbers :: [Int]
doubledNumbers = map double numbers

evenNumbers :: [Int]
evenNumbers = filter isEvenNumber numbers

main :: IO ()
main = do
    putStrLn "Lesson 03: lists, map, and filter"
    putStrLn ("numbers = " ++ show numbers)
    putStrLn ("names = " ++ show names)
    putStrLn ("doubledNumbers = " ++ show doubledNumbers)
    putStrLn ("evenNumbers = " ++ show evenNumbers)
    putStrLn ("length names = " ++ show (length names))
