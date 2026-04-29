# 06 レッスン 2: Bool と if then else

このレッスンでは、条件によって結果を変える方法を学びます。

- `Bool`
- 比較演算子
- `if then else`

サンプルコード:

```txt
app/lesson02-conditions/Main.hs
```

サンプルの実行:

```sh
cabal run lesson02-conditions
```

練習用コード:

```txt
app/lesson02-conditions/Exercises.hs
```

練習問題の実行:

```sh
cabal run lesson02-conditions-exercises
```

## Bool

`Bool` は真偽値の型です。

値は 2 つだけです。

```haskell
True
False
```

たとえば、次の関数は `Bool` を返します。

```haskell
isAdult :: Int -> Bool
isAdult personAge = personAge >= 18
```

`personAge >= 18` の結果は、条件を満たせば `True`、満たさなければ `False` です。

## 比較演算子

よく使う比較は次の通りです。

```haskell
age >= 18
age < 18
score == 100
score /= 0
```

意味:

- `>=`: 以上
- `<`: より小さい
- `==`: 等しい
- `/=`: 等しくない

Haskell では「等しい」は `=` ではなく `==` です。

`=` は定義に使います。

```haskell
age = 20
```

## if then else

条件で結果を分けるには `if then else` を使います。

```haskell
adultMessage :: Int -> String
adultMessage personAge =
    if isAdult personAge
        then "adult"
        else "minor"
```

読み方:

```txt
もし isAdult personAge が True なら "adult"
そうでなければ "minor"
```

## Haskell の if は式

Haskell の `if` は、必ず `else` が必要です。

理由は、Haskell の `if` は「文」ではなく「式」だからです。

つまり、`if ... then ... else ...` 全体が 1 つの値になります。

```haskell
message :: String
message =
    if True
        then "yes"
        else "no"
```

この場合、`message` は `"yes"` という値になります。

## then と else の型

`then` 側と `else` 側は同じ型である必要があります。

これは OK です。

```haskell
if score >= 60
    then "passed"
    else "failed"
```

どちらも `String` だからです。

これはエラーになります。

```haskell
if score >= 60
    then "passed"
    else 0
```

`then` 側は `String`、`else` 側は `Int` なので、1 つの値として型を決められません。

## 練習問題

答えはここには書きません。`app/lesson02-conditions/Exercises.hs` を編集して、実行しながら試してください。

### 問題 1: isPositive を作る

整数が 0 より大きいかどうかを返す `isPositive` を作ってください。

条件:

- 型注釈を書くこと
- 引数は `Int`
- 戻り値は `Bool`
- `main` の中で結果を表示すること

表示例の形:

```txt
isPositive 10 = True
```

### 問題 2: temperatureMessage を作る

気温を受け取って、暑いかどうかを文字列で返す `temperatureMessage` を作ってください。

条件:

- 引数は `Int`
- 戻り値は `String`
- 30 以上なら `"hot"`
- それ以外なら `"comfortable"`
- `main` の中で結果を表示すること

表示例の形:

```txt
temperatureMessage 32 = hot
```

### 問題 3: passOrFail を作る

点数を受け取って、合格か不合格かを返す `passOrFail` を作ってください。

条件:

- 引数は `Int`
- 戻り値は `String`
- 60 以上なら `"pass"`
- それ以外なら `"fail"`
- `main` の中で 2 つ以上の点数を試すこと

### 問題 4: isZero を作る

整数が 0 かどうかを返す `isZero` を作ってください。

条件:

- `==` を使うこと
- 戻り値は `Bool`
- `main` の中で結果を表示すること

### 問題 5: notZeroMessage を作る

整数が 0 ではないかどうかを文字列で返す `notZeroMessage` を作ってください。

条件:

- `/=` を使うこと
- 0 でなければ `"not zero"`
- 0 なら `"zero"`

### 問題 6: 型エラーを観察する

わざと `then` と `else` の型を変えて、エラーを読んでください。

やること:

1. どれかの `if` で、`then` 側を文字列、`else` 側を数値にする
2. `cabal run lesson02-conditions-exercises` を実行する
3. エラーを読む
4. 元に戻す

例:

```haskell
if True
    then "yes"
    else 0
```

これは正しいコードではありません。エラーを観察するための実験です。

### 問題 7: else を消してみる

`if` から `else` を消すとどうなるか試してください。

やること:

1. どれかの `if` から `else` を消す
2. `cabal run lesson02-conditions-exercises` を実行する
3. エラーを読む
4. 元に戻す

Haskell では `if` に必ず `else` が必要です。

### 問題 8: 自分で判定関数を作る

自分で好きな判定関数を 1 つ作ってください。

例:

- 偶数かどうか
- 100 点かどうか
- 文字列が `"Haskell"` かどうか
- 年齢が 65 以上かどうか

条件:

- 型注釈を書くこと
- `Bool` を返す関数を 1 つ以上作ること
- `if then else` を使って `String` を返す関数も 1 つ作ること
- `main` の中で実行結果を表示すること

## チェックリスト

終わったら、次を確認してください。

```sh
cabal run lesson02-conditions-exercises
```

確認すること:

- コマンドが成功する
- `Bool` を返す関数を作れた
- `if then else` で `String` を返す関数を作れた
- `then` と `else` は同じ型が必要だと説明できる
- `if` に `else` が必要な理由を少し説明できる
