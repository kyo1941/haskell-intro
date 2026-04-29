# 04 学び方と最初の練習

ここからは、先生と一緒に進める前提の学習計画です。

Haskell は最初に独特に見えますが、進め方はシンプルです。

```txt
小さく書く
  -> cabal run で動かす
  -> cabal repl で式と型を試す
  -> エラーを読む
  -> 少しだけ直す
```

この繰り返しで進めます。

## 最初に大事な考え方

Haskell では、プログラムを「手順」よりも「式」と「変換」で考えることが多いです。

たとえば、次のような関数を書きます。

```haskell
double :: Int -> Int
double n = n * 2
```

これは「`n` を受け取ったら、`n * 2` という値になる」という定義です。

命令を順番に実行するというより、「この名前はこういう値」「この関数はこういう変換」と考えます。

## レッスン 1: 値と関数

目標:

- 値を書く
- 関数を書く
- 型注釈を読む
- `cabal run` で実行する

使うファイル:

```txt
app/Main.hs
```

練習コード:

```haskell
module Main where

name :: String
name = "Kyo"

age :: Int
age = 20

double :: Int -> Int
double n = n * 2

main :: IO ()
main = do
    putStrLn ("name = " ++ name)
    putStrLn ("age = " ++ show age)
    putStrLn ("double age = " ++ show (double age))
```

実行:

```sh
cabal run
```

ここで見るポイント:

- `String` は文字列
- `Int` は整数
- `show` は数値などを文字列に変える
- `IO ()` の中で `putStrLn` を使って表示する

## レッスン 2: 条件分岐

目標:

- `if then else` を使う
- 真偽値 `Bool` に慣れる

例:

```haskell
isAdult :: Int -> Bool
isAdult age = age >= 18

message :: Int -> String
message age =
    if isAdult age
        then "adult"
        else "minor"
```

Haskell の `if` は必ず `else` が必要です。

理由は、Haskell の `if` は文ではなく式だからです。つまり、全体として必ず何かの値になります。

## レッスン 3: リスト

目標:

- 複数の値を扱う
- `map`、`filter` に触れる

例:

```haskell
numbers :: [Int]
numbers = [1, 2, 3, 4, 5]

doubled :: [Int]
doubled = map double numbers

evens :: [Int]
evens = filter even numbers
```

`[Int]` は「Int のリスト」です。

## レッスン 4: 型を読む

目標:

- `:type` を使う
- 型から関数の意味を推測する

`cabal repl` を開きます。

```sh
cabal repl
```

試すもの:

```haskell
:type map
:type filter
:type putStrLn
:type show
```

Haskell は、型がとてもよく喋ります。

わからない関数が出てきたら、まず型を見る習慣をつけます。

## レッスン 5: 自分用の小さなプログラム

目標:

- 自分でテーマを決めて小さく書く

候補:

- 摂氏から華氏に変換する
- 税込み価格を計算する
- 点数から合格、不合格を返す
- 名前リストを加工する

例:

```haskell
taxIncluded :: Int -> Int
taxIncluded price = price * 110 `div` 100
```

バッククォートで囲むと、普通の関数を演算子のように使えます。

```haskell
price `div` 100
```

これは次と同じです。

```haskell
div price 100
```

## 私との進め方

このリポジトリでは、次の流れで一緒に進めるのがよいです。

1. あなたが「次は値と関数をやりたい」のように言う
2. 私が `app/Main.hs` に小さな課題を用意する
3. 実行して結果を見る
4. エラーが出たら、エラー文の読み方を説明する
5. わかったところまで `docs` に追記する

Haskell は、エラーを敵にしないのが大事です。

コンパイラはかなり厳しいですが、そのぶん「ここが違う」と早めに教えてくれます。最初は怒られているように見えますが、実際にはかなり丁寧な先生です。

## 次にやること

次のどちらかから始めるのがおすすめです。

```sh
cabal run
```

で今の最小プログラムを実行する。

または、

```sh
cabal repl
```

で対話環境を開き、次を試す。

```haskell
1 + 2
2 * 10
"Hello" ++ " Haskell"
:type 42
:type "Hello"
```

ここまでできたら、次は `app/Main.hs` に値と関数を書いていきます。
