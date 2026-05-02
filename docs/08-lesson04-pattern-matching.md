# 08 レッスン 4: パターンマッチ

このレッスンでは、値の「形」によって処理を分ける方法を学びます。

- 数値のパターンマッチ
- `_` ワイルドカード
- リストのパターンマッチ
- `[]` と `:` の読み方

サンプルコード:

```txt
app/lesson04-pattern-matching/Main.hs
```

サンプルの実行:

```sh
cabal run lesson04-pattern-matching
```

練習用コード:

```txt
app/lesson04-pattern-matching/Exercises.hs
```

練習問題の実行:

```sh
cabal run lesson04-pattern-matching-exercises
```

## 数値のパターンマッチ

`if` を使わなくても、引数の形ごとに関数を定義できます。

```haskell
describeNumber :: Int -> String
describeNumber 0 = "zero"
describeNumber 1 = "one"
describeNumber n = "another number: " ++ show n
```

読み方:

- 引数が `0` なら `"zero"`
- 引数が `1` なら `"one"`
- それ以外なら `n` として受け取る

上から順番に試されるので、具体的なパターンを先に書くのが大事です。

## ワイルドカード

使わない値には `_` を使えます。

```haskell
isEmpty :: [Int] -> Bool
isEmpty [] = True
isEmpty _ = False
```

`_` は「値は来るけれど、中身は使わない」という意味です。

## 空リスト

空のリストは `[]` で表します。

```haskell
isEmpty [] = True
```

これは「引数が空リストなら `True`」という意味です。

## リストの先頭を取り出す

リストは `:` で先頭と残りに分けられます。

```haskell
firstMessage :: [String] -> String
firstMessage [] = "no names"
firstMessage (firstName : _) = "first name is " ++ firstName
```

`firstName : _` は「先頭を `firstName` として取り出し、残りは使わない」という意味です。

リストが空のときに先頭は存在しないので、`[]` のケースを先に書いています。

## 先頭 2 つを取り出す

`:` は重ねて使えます。

```haskell
sumFirstTwo :: [Int] -> Int
sumFirstTwo (x : y : _) = x + y
sumFirstTwo _ = 0
```

`x : y : _` は「先頭が `x`、2 番目が `y`、残りは使わない」という意味です。

要素が 2 個未満なら `_ = 0` の方に進みます。

## 練習問題

答えはここには書きません。`app/lesson04-pattern-matching/Exercises.hs` を編集して、実行しながら試してください。

### 問題 1: describeBool を作る

`Bool` を受け取って、文字列にする `describeBool` を作ってください。

条件:

- 型注釈を書くこと
- `True` なら `"true"`
- `False` なら `"false"`
- `main` の中で両方を表示すること

### 問題 2: describeNumber を作る

数値を受け取って、特定の数だけ別メッセージにする `describeNumber` を作ってください。

条件:

- `0` なら `"zero"`
- `100` なら `"perfect"`
- それ以外なら `"other"`
- `main` の中で 3 通り以上試すこと

### 問題 3: firstScoreMessage を作る

点数リストの先頭を使ってメッセージを返す `firstScoreMessage` を作ってください。

条件:

- 引数は `[Int]`
- 空リストなら `"no scores"`
- 空でなければ先頭の点数を表示すること
- `main` の中で空リストと空でないリストを両方試すこと

表示例の形:

```txt
first score is 80
```

### 問題 4: secondScoreMessage を作る

点数リストの 2 番目を使ってメッセージを返す `secondScoreMessage` を作ってください。

条件:

- 引数は `[Int]`
- 要素が 2 個以上なら 2 番目を表示すること
- 要素が足りなければ `"not enough scores"` を返すこと

### 問題 5: countSmall を作る

リストの要素数をざっくり説明する `countSmall` を作ってください。

条件:

- 空リストなら `"empty"`
- 要素が 1 つなら `"one item"`
- 要素が 2 つ以上なら `"many items"`
- `length` は使わず、パターンマッチで書くこと

### 問題 6: パターンの順番を観察する

わざと `_` のパターンを先頭に置いて、何が起きるか観察してください。

やること:

1. どれかの関数で `_` のケースを一番上に書く
2. `cabal run lesson04-pattern-matching-exercises` を実行する
3. warning または動作を読む
4. 元に戻す

`_` は何にでも合うので、先に書くと後ろのパターンに到達できなくなります。

### 問題 7: 空リストのケースを消してみる

リストの先頭を取り出す関数から、空リストのケースを消してみてください。

やること:

1. `[]` のケースをコメントアウトする
2. 空リストで関数を呼ぶ
3. `cabal run lesson04-pattern-matching-exercises` を実行する
4. エラーを読む
5. 元に戻す

この問題は、パターンが足りないと実行時に失敗することがある、という観察です。

### 問題 8: 自分でパターンマッチ関数を作る

自分で好きなパターンマッチ関数を 1 つ作ってください。

例:

- 名前リストの先頭を挨拶する
- `[Int]` の先頭 2 つを足す
- `0`、`1`、それ以外でメッセージを変える
- 空リストかどうかを文字列で返す

条件:

- 型注釈を書くこと
- `if` ではなくパターンマッチを使うこと
- `main` の中で実行結果を表示すること

## チェックリスト

終わったら、次を確認してください。

```sh
cabal run lesson04-pattern-matching-exercises
```

確認すること:

- コマンドが成功する
- `_` の意味を説明できる
- `[]` が空リストだと説明できる
- `x : xs` がリストの先頭と残りを分ける形だと説明できる
- パターンは上から順に試されると説明できる
