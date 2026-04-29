# 05 レッスン 1: 値、型、関数

このレッスンでは、Haskell の最初の土台になる 3 つを扱います。

- 値
- 型
- 関数

使うファイル:

```txt
app/lesson01-values/Main.hs
```

実行:

```sh
cabal run lesson01-values
```

## 値

Haskell では、名前に値を結びつけます。

```haskell
name :: String
name = "Kyo"
```

これは「`name` は `String` 型の値で、中身は `"Kyo"`」という意味です。

## 型

```haskell
age :: Int
age = 20
```

`Int` は整数です。

`name :: String` や `age :: Int` のような行を型注釈と呼びます。

型注釈は、最初のうちはなるべく書きます。Haskell に慣れるための補助線になります。

## 関数

```haskell
double :: Int -> Int
double n = n * 2
```

`Int -> Int` は「`Int` を受け取って `Int` を返す」という意味です。

`double n = n * 2` は「`double` に `n` が来たら、結果は `n * 2`」という定義です。

## 複数の引数を持つ関数

```haskell
introduce :: String -> Int -> String
introduce person personAge =
    person ++ " is " ++ show personAge ++ " years old."
```

`String -> Int -> String` は「`String` と `Int` を受け取って `String` を返す」と読みます。

厳密にはもう少し深い意味がありますが、最初はこの読み方で大丈夫です。

## main

```haskell
main :: IO ()
main = do
    putStrLn "Lesson 01: values, types, and functions"
    putStrLn ("name = " ++ name)
```

`main` はプログラムの入口です。

`putStrLn` は文字列を画面に表示します。

`show` は `Int` などを表示用の `String` に変換します。

## 今日の練習

`app/lesson01-values/Main.hs` を少し変えてみましょう。

1. `name` を自分の名前に変える
2. `age` を好きな数字に変える
3. `triple :: Int -> Int` を追加する
4. `main` の中で `triple age` を表示する

ヒント:

```haskell
triple :: Int -> Int
triple n = n * 3
```

表示するときはこうします。

```haskell
putStrLn ("triple age = " ++ show (triple age))
```

編集したら、次で実行します。

```sh
cabal run lesson01-values
```
