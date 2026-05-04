module Main where

data TrafficLight = Red | Yellow | Green
    deriving Show

trafficMessage :: TrafficLight -> String
trafficMessage Red = "stop"
trafficMessage Yellow = "be careful"
trafficMessage Green = "go"

data Shape = Circle Int | Rectangle Int Int
    deriving Show

shapeArea :: Shape -> Int
shapeArea (Circle radius) = 3 * radius * radius
shapeArea (Rectangle width height) = width * height

shapeMessage :: Shape -> String
shapeMessage (Circle radius) = "circle radius: " ++ show radius
shapeMessage (Rectangle width height) =
    "rectangle: " ++ show width ++ " x " ++ show height

data Todo = Todo String Bool
    deriving Show

todoMessage :: Todo -> String
todoMessage (Todo title True) = "[done] " ++ title
todoMessage (Todo title False) = "[todo] " ++ title

main :: IO ()
main = do
    putStrLn "Lesson 05: algebraic data types"
    putStrLn ("Red value = " ++ show Red)
    putStrLn ("trafficMessage Green = " ++ trafficMessage Green)
    putStrLn ("trafficMessage Yellow = " ++ trafficMessage Yellow)
    putStrLn ("shapeArea (Circle 10) = " ++ show (shapeArea (Circle 10)))
    putStrLn ("shapeArea (Rectangle 8 4) = " ++ show (shapeArea (Rectangle 8 4)))
    putStrLn (shapeMessage (Circle 5))
    putStrLn (shapeMessage (Rectangle 3 9))
    putStrLn (todoMessage (Todo "read lesson 05" True))
    putStrLn (todoMessage (Todo "solve exercises" False))
