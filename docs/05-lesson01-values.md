# 05 レッスン 1: 値、型、関数

このレッスンでは、Haskell の最初の土台になる 3 つを扱います。

- 値
- 型
- 関数

サンプルコード:

```txt
app/lesson01-values/Main.hs
```

サンプルの実行:

```sh
cabal run lesson01-values
```

練習用コード:

```txt
app/lesson01-values/Exercises.hs
```

練習問題の実行:

```sh
cabal run lesson01-values-exercises
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

## 練習問題の進め方

サンプルコードの `app/lesson01-values/Main.hs` は、説明を読み返すために残しておきます。

練習では、代わりに次のファイルを編集します。

```txt
app/lesson01-values/Exercises.hs
```

実行するときは次を使います。

```sh
cabal run lesson01-values-exercises
```

このスタイルにしておくと、レッスン用のサンプルを壊さずに、自分の回答だけを別ファイルに残せます。

## 練習問題

答えはここには書きません。`app/lesson01-values/Exercises.hs` を編集して、実行しながら試してください。

### 問題 1: 値を書く

`name` と `age` を定義してください。

条件:

- `name` は `String`
- `age` は `Int`
- 型注釈を書くこと
- `main` の中で両方を表示すること

表示例の形:

```txt
name = Kyo
age = 20
```

### 問題 2: 新しい値を追加する

好きな言語名を表す `favoriteLanguage` を追加してください。

条件:

- 型は `String`
- 値は好きな文字列
- `main` の中で表示すること

表示例の形:

```txt
favorite language = Haskell
```

### 問題 3: triple 関数を追加する

整数を 3 倍にする `triple` 関数を追加してください。

条件:

- 型注釈を書くこと
- 引数は `Int`
- 戻り値も `Int`
- `main` の中で `triple age` を表示すること

表示例の形:

```txt
triple age = 60
```

### 問題 4: addTen 関数を追加する

整数に 10 を足す `addTen` 関数を追加してください。

条件:

- 型注釈を書くこと
- `main` の中で `addTen age` を表示すること

表示例の形:

```txt
addTen age = 30
```

### 問題 5: 自己紹介文を作る

好きな自己紹介文を作る関数を追加してください。

関数名の例:

```haskell
profileMessage
```

条件:

- `String` と `Int` を受け取ること
- `String` を返すこと
- `main` の中で表示すること

表示内容は自由です。

### 問題 6: 型エラーを観察する

わざと型エラーを起こして、エラーメッセージを読んでください。

やること:

1. `age` に文字列を入れてみる
2. `cabal run lesson01-values-exercises` を実行する
3. エラーを読む
4. 元に戻す

例:

```haskell
age :: Int
age = "twenty"
```

これは正しいコードではありません。エラーを観察するための実験です。

### 問題 7: show を外してみる

`show age` の `show` を外すとどうなるか試してください。

やること:

1. `show age` を `age` に変える
2. `cabal run lesson01-values-exercises` を実行する
3. エラーを読む
4. 元に戻す

この問題の目的は、`String` と `Int` はそのまま `++` でつなげられない、という感覚をつかむことです。

### 問題 8: 自分で関数を 1 つ作る

自分で好きな関数を 1 つ作ってください。

例:

- 数字を 2 乗する
- 数字から 1 を引く
- 文字列に挨拶を足す
- 年齢から来年の年齢を返す

条件:

- 型注釈を書くこと
- `main` の中で実行結果を表示すること
- 関数名は英小文字で始めること

## チェックリスト

終わったら、次を確認してください。

```sh
cabal run lesson01-values-exercises
```

確認すること:

- コマンドが成功する
- 少なくとも 1 つ、自分で作った関数がある
- `String` と `Int` の違いを少し説明できる
- `show` が何のためにあるか少し説明できる
- 型エラーを見ても、少し落ち着いて読める
