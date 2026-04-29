# 07 レッスン 3: リスト、map、filter

このレッスンでは、複数の値をまとめて扱う方法を学びます。

- リスト
- `map`
- `filter`
- `length`

サンプルコード:

```txt
app/lesson03-lists/Main.hs
```

サンプルの実行:

```sh
cabal run lesson03-lists
```

練習用コード:

```txt
app/lesson03-lists/Exercises.hs
```

練習問題の実行:

```sh
cabal run lesson03-lists-exercises
```

## リスト

リストは、同じ型の値を複数まとめるものです。

```haskell
numbers :: [Int]
numbers = [1, 2, 3, 4, 5]
```

`[Int]` は「`Int` のリスト」です。

文字列のリストならこうです。

```haskell
names :: [String]
names = ["Haskell", "Cabal", "GHC"]
```

リストの中身は同じ型でそろえる必要があります。

これは OK です。

```haskell
[1, 2, 3]
```

これはエラーになります。

```haskell
[1, "two", 3]
```

`Int` と `String` が混ざっているからです。

## show でリストを表示する

`Int` と同じように、リストも `show` で表示用の `String` にできます。

```haskell
putStrLn ("numbers = " ++ show numbers)
```

## map

`map` は、リストの各要素に関数を適用します。

```haskell
double :: Int -> Int
double n = n * 2

doubledNumbers :: [Int]
doubledNumbers = map double numbers
```

もし `numbers` が `[1, 2, 3]` なら、`map double numbers` は `[2, 4, 6]` になります。

読み方:

```txt
numbers の各要素に double を適用する
```

## filter

`filter` は、条件を満たす要素だけを残します。

```haskell
isEvenNumber :: Int -> Bool
isEvenNumber n = even n

evenNumbers :: [Int]
evenNumbers = filter isEvenNumber numbers
```

`filter` に渡す関数は、結果が `Bool` になる必要があります。

もし `numbers` が `[1, 2, 3, 4]` なら、`filter isEvenNumber numbers` は `[2, 4]` になります。

## length

`length` はリストの要素数を返します。

```haskell
length names
```

`names` が `["Haskell", "Cabal", "GHC"]` なら、結果は `3` です。

表示するときは `show` を使います。

```haskell
putStrLn ("length names = " ++ show (length names))
```

## 練習問題

答えはここには書きません。`app/lesson03-lists/Exercises.hs` を編集して、実行しながら試してください。

### 問題 1: 数値リストを作る

`scores` という点数リストを作ってください。

条件:

- 型は `[Int]`
- 要素は 5 個以上
- `main` の中で表示すること

表示例の形:

```txt
scores = [80,60,45,90,100]
```

### 問題 2: doubleAll を作る

`Int` のリストを受け取って、すべての要素を 2 倍にする `doubleAll` を作ってください。

条件:

- 型注釈を書くこと
- `map` を使うこと
- `main` の中で `doubleAll scores` を表示すること

### 問題 3: passedScores を作る

点数リストから、60 点以上だけを残す `passedScores` を作ってください。

条件:

- 型注釈を書くこと
- `filter` を使うこと
- 60 点以上かどうかを判定する関数も作ること
- `main` の中で表示すること

### 問題 4: shortWords を作る

文字列リストから、長さが 5 以下の文字列だけを残す `shortWords` を作ってください。

条件:

- `wordsList :: [String]` を作ること
- `length` を使うこと
- `filter` を使うこと
- `main` の中で表示すること

### 問題 5: countScores を作る

`scores` の要素数を表示してください。

条件:

- `length` を使うこと
- 表示には `show` を使うこと

表示例の形:

```txt
count scores = 5
```

### 問題 6: 型エラーを観察する

わざとリストの中に違う型を混ぜて、エラーを読んでください。

やること:

1. `[1, 2, "three"]` のようなリストを作る
2. `cabal run lesson03-lists-exercises` を実行する
3. エラーを読む
4. 元に戻す

これは正しいコードではありません。エラーを観察するための実験です。

### 問題 7: filter に Bool 以外の関数を渡してみる

わざと `filter` に `Int -> Int` の関数を渡して、エラーを読んでください。

やること:

1. `filter double scores` のようなコードを試す
2. `cabal run lesson03-lists-exercises` を実行する
3. エラーを読む
4. 元に戻す

`filter` に渡す関数は、結果が `Bool` である必要があります。

### 問題 8: 自分でリスト処理を 1 つ作る

自分で好きなリスト処理を 1 つ作ってください。

例:

- 100 点だけを取り出す
- 0 より大きい数だけを残す
- 文字列すべてに `"!"` を足す
- 文字列の長さリストを作る

条件:

- 型注釈を書くこと
- `map` または `filter` を使うこと
- `main` の中で実行結果を表示すること

## チェックリスト

終わったら、次を確認してください。

```sh
cabal run lesson03-lists-exercises
```

確認すること:

- コマンドが成功する
- `[Int]` と `[String]` の読み方がわかる
- `map` は各要素を変換すると説明できる
- `filter` は条件に合う要素だけ残すと説明できる
- `filter` に渡す関数は `Bool` を返す必要があると説明できる
