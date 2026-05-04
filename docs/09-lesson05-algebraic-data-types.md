# 09 レッスン 5: 代数的データ型

このレッスンでは、自分で新しい型を作る方法を学びます。

- `data` で型を作る
- 値コンストラクタ
- データを持つコンストラクタ
- 作った型をパターンマッチで使う
- `deriving Show` で表示できるようにする

サンプルコード:

```txt
app/lesson05-algebraic-data-types/Main.hs
```

サンプルの実行:

```sh
cabal run lesson05-algebraic-data-types
```

練習用コード:

```txt
app/lesson05-algebraic-data-types/Exercises.hs
```

練習問題の実行:

```sh
cabal run lesson05-algebraic-data-types-exercises
```

## data で型を作る

`data` を使うと、自分のプログラムに合う型を作れます。

```haskell
data TrafficLight = Red | Yellow | Green
    deriving Show
```

読み方:

- `TrafficLight` という型を作る
- その値は `Red`、`Yellow`、`Green` のどれか
- `deriving Show` によって `show Red` のように表示用文字列へ変換できる

`Red`、`Yellow`、`Green` は値コンストラクタと呼ばれます。

## 作った型を使う

作った型は、`Int` や `Bool` と同じように型注釈で使えます。

```haskell
trafficMessage :: TrafficLight -> String
trafficMessage Red = "stop"
trafficMessage Yellow = "be careful"
trafficMessage Green = "go"
```

これは lesson4 のパターンマッチと同じ考え方です。

- 引数が `Red` なら `"stop"`
- 引数が `Yellow` なら `"be careful"`
- 引数が `Green` なら `"go"`

`Bool` には `True` と `False` があります。自分で作った `TrafficLight` には、今ここで決めた `Red`、`Yellow`、`Green` があります。

## データを持つコンストラクタ

コンストラクタは追加のデータを持てます。

```haskell
data Shape = Circle Int | Rectangle Int Int
    deriving Show
```

読み方:

- `Shape` という型を作る
- `Circle` は `Int` を 1 つ持つ
- `Rectangle` は `Int` を 2 つ持つ

値を作るときはこう書きます。

```haskell
Circle 10
Rectangle 8 4
```

## 持っているデータを取り出す

データを持つコンストラクタも、パターンマッチで中身を取り出せます。

```haskell
shapeArea :: Shape -> Int
shapeArea (Circle radius) = 3 * radius * radius
shapeArea (Rectangle width height) = width * height
```

`Circle radius` は「`Circle` が持っている `Int` を `radius` という名前で受け取る」という意味です。

`Rectangle width height` は「2 つの `Int` を `width` と `height` として受け取る」という意味です。

## 1 つの型に複数の形を持たせる

次のように、同じ `Todo` 型の中に文字列と真偽値をまとめられます。

```haskell
data Todo = Todo String Bool
    deriving Show
```

左側の `Todo` は型名です。右側の `Todo` は値コンストラクタです。

```haskell
todoMessage :: Todo -> String
todoMessage (Todo title True) = "[done] " ++ title
todoMessage (Todo title False) = "[todo] " ++ title
```

型名とコンストラクタ名は同じ名前にできます。最初は少し不思議ですが、かなりよく使われる形です。

## 練習問題

答えはここには書きません。`app/lesson05-algebraic-data-types/Exercises.hs` を編集して、実行しながら試してください。

### 問題 1: Weather を使う

`Weather` を受け取って、天気ごとのメッセージを返す `weatherMessage` を完成させてください。

条件:

- `Sunny` なら `"nice day"`
- `Rainy` なら `"take umbrella"`
- `Cloudy` なら `"gray sky"`
- `main` の中で 3 通りすべて表示すること

### 問題 2: Payment を使う

`Payment` ごとに手数料を返す `paymentFee` を完成させてください。

条件:

- `Cash` なら `0`
- `CreditCard` なら `3`
- `Point` なら `1`
- 表示するときは `show` を使うこと

### 問題 3: Item から中身を取り出す

`Item` は商品名と価格を持つ型です。

```haskell
data Item = Book String Int | Food String Int
```

`itemName` と `itemPrice` を完成させてください。

条件:

- `Book name price` から `name` を取り出す
- `Food name price` から `name` を取り出す
- `Book name price` から `price` を取り出す
- `Food name price` から `price` を取り出す

使わない値には `_` を使ってかまいません。

### 問題 4: Score を使う

欠席か、点数があるかを表す `Score` を使って、`scoreMessage` を完成させてください。

条件:

- `Absent` なら `"absent"`
- `Scored 80` のように点数があるなら `"score: 80"` の形で返す
- 点数の表示には `show` を使うこと

### 問題 5: Task を使う

`Task` はタイトルと完了状態を持つ型です。

```haskell
data Task = Task String Bool
```

`taskStatus` を完成させてください。

条件:

- 完了済みなら `"[done] タイトル"` の形
- 未完了なら `"[todo] タイトル"` の形
- `Task title True` と `Task title False` のようにパターンマッチすること

### 問題 6: deriving Show を外してみる

わざと `deriving Show` を消して、何が起きるか観察してください。

やること:

1. `Weather` または `Item` の `deriving Show` をコメントアウトする
2. `cabal run lesson05-algebraic-data-types-exercises` を実行する
3. エラーを読む
4. 元に戻す

`show` で表示するには、その型が `Show` に対応している必要があります。

### 問題 7: パターンを足りなくしてみる

わざとパターンを 1 つ消して、何が起きるか観察してください。

やること:

1. `weatherMessage Cloudy = ...` のようなケースを 1 つコメントアウトする
2. `Cloudy` で `weatherMessage` を呼ぶ
3. `cabal run lesson05-algebraic-data-types-exercises` を実行する
4. warning または実行時エラーを読む
5. 元に戻す

作った型でも、パターンが足りないと「全部の形を扱えていない」状態になります。

### 問題 8: 自分で型を作る

自分で好きな `data` を 1 つ作ってください。

例:

- `Drink = Coffee | Tea | Water`
- `Pet = Dog String | Cat String`
- `Result = Win | Lose | Draw`
- `User = User String Int`

条件:

- `deriving Show` を付けること
- その型を受け取る関数を 1 つ作ること
- パターンマッチを使うこと
- `main` の中で実行結果を表示すること

## チェックリスト

終わったら、次を確認してください。

```sh
cabal run lesson05-algebraic-data-types-exercises
```

確認すること:

- コマンドが成功する
- `data` で新しい型を作れる
- 値コンストラクタを説明できる
- `Circle Int` のような「データを持つコンストラクタ」を読める
- コンストラクタの中身をパターンマッチで取り出せる
- `deriving Show` が表示のために必要だと説明できる
