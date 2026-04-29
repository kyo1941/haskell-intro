# 03 Haskell のファイル、書き方、実行方法

この章では、Haskell ではどんなファイルを作り、どこにコードを書き、どう実行するのかを見ます。

## このプロジェクトの重要ファイル

今のプロジェクトで最初に見るべきファイルは 2 つです。

```txt
app/Main.hs
haskell-intro.cabal
```

## app/Main.hs

`app/Main.hs` は、実際に Haskell のコードを書くファイルです。

現在の中身は次のようになっています。

```haskell
module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"
```

ひとつずつ見ます。

## module Main where

```haskell
module Main where
```

これは「このファイルは `Main` というモジュールです」という宣言です。

モジュールは、コードのまとまりです。

今は「Haskell ファイルの先頭に書く名前」くらいの理解で大丈夫です。

## main

```haskell
main :: IO ()
main = putStrLn "Hello, Haskell!"
```

Haskell の実行可能プログラムでは、`main` が入口です。

`cabal run` すると、最終的にこの `main` が実行されます。

## 型注釈

```haskell
main :: IO ()
```

これは型注釈です。

読み方は「`main` の型は `IO ()` です」です。

`IO` は、画面に文字を出す、入力を読む、ファイルを読む、ネットワークを使うなど、外の世界とやり取りする処理を表します。

`()` は「特別な値を返さない」くらいに思っておけば大丈夫です。

つまり `main :: IO ()` は、「`main` は外の世界とやり取りする実行処理です」という意味です。

## 値や関数を書く

Haskell では、値や関数を次のように書きます。

```haskell
answer :: Int
answer = 42
```

```haskell
double :: Int -> Int
double n = n * 2
```

`double :: Int -> Int` は、「`double` は `Int` を受け取って `Int` を返す関数です」という意味です。

`->` は関数の入力と出力を表します。

## 画面に表示する

文字を画面に出すには `putStrLn` を使います。

```haskell
putStrLn "Hello"
```

数値を文字列として表示したい場合は、`show` を使います。

```haskell
putStrLn (show 42)
```

文字列をつなぐには `++` を使います。

```haskell
putStrLn ("answer = " ++ show 42)
```

## 複数の処理を書く

`main` の中で複数の表示をしたいときは、`do` を使います。

```haskell
main :: IO ()
main = do
    putStrLn "Hello"
    putStrLn "Haskell"
```

Haskell ではインデントが大事です。

`do` の中の処理は、同じ深さでそろえます。

## haskell-intro.cabal

`haskell-intro.cabal` は、このプロジェクトの設定ファイルです。

重要なところだけ見ると、次のようになっています。

```cabal
executable haskell-intro
    main-is:          Main.hs
    build-depends:    base ^>=4.18.3.0
    hs-source-dirs:   app
    default-language: Haskell2010
```

意味は次の通りです。

- `executable haskell-intro`: 実行できるプログラムを作る
- `main-is: Main.hs`: 入口になるファイルは `Main.hs`
- `hs-source-dirs: app`: Haskell のソースは `app` ディレクトリにある
- `build-depends: base`: 標準的な基本ライブラリ `base` を使う
- `default-language: Haskell2010`: Haskell2010 という言語設定で書く

最初のうちは、このファイルを頻繁に触る必要はありません。

外部ライブラリを追加するときや、ファイル構成を増やすときに編集します。

## 実行方法

プロジェクトのルートディレクトリで次を実行します。

```sh
cabal run
```

このディレクトリでは、ルートは次の場所です。

```txt
/Users/kyo1941/func-pro/haskell
```

実行の流れはこうです。

```txt
cabal run
  -> haskell-intro.cabal を読む
  -> app/Main.hs を見つける
  -> GHC でコンパイルする
  -> main を実行する
```

## 対話環境で試す

Haskell は、いきなりファイルに全部書くより、`cabal repl` で少しずつ試すと理解しやすいです。

```sh
cabal repl
```

中で試す例:

```haskell
1 + 2
"hello" ++ " haskell"
:type 1
:type "hello"
:type putStrLn
```

終了するときは次を入力します。

```haskell
:quit
```

## 最初の編集練習

`app/Main.hs` を次のように変えてください。

```haskell
module Main where

answer :: Int
answer = 42

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    putStrLn ("answer = " ++ show answer)
```

保存したら実行します。

```sh
cabal run
```

期待する出力:

```txt
Hello, Haskell!
answer = 42
```

この練習で、次の 4 つをまとめて体験できます。

- `.hs` ファイルを書く
- 値に型をつける
- `main` から表示する
- `cabal run` で実行する
