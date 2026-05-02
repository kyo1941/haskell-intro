module Main where

describeNumber :: Int -> String
describeNumber 0 = "zero"
describeNumber 1 = "one"
describeNumber n = "another number: " ++ show n

isEmpty :: [Int] -> Bool
isEmpty [] = True
isEmpty _ = False

firstMessage :: [String] -> String
firstMessage [] = "no names"
firstMessage (firstName : _) = "first name is " ++ firstName

sumFirstTwo :: [Int] -> Int
sumFirstTwo (x : y : _) = x + y
sumFirstTwo _ = 0

main :: IO ()
main = do
    putStrLn "Lesson 04: pattern matching"
    putStrLn ("describeNumber 0 = " ++ describeNumber 0)
    putStrLn ("describeNumber 7 = " ++ describeNumber 7)
    putStrLn ("isEmpty [] = " ++ show (isEmpty []))
    putStrLn ("isEmpty [1, 2, 3] = " ++ show (isEmpty [1, 2, 3]))
    putStrLn (firstMessage ["Haskell", "Cabal", "GHC"])
    putStrLn ("sumFirstTwo [10, 20, 30] = " ++ show (sumFirstTwo [10, 20, 30]))
    putStrLn ("sumFirstTwo [10] = " ++ show (sumFirstTwo [10]))
