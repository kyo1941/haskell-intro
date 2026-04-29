# haskell-intro

Haskell 入門用の最小 Cabal プロジェクトです。

## 入門ノート

学習用の説明は [docs/README.md](./docs/README.md) から読んでください。

## 使う道具

- `ghcup`: GHC、Cabal、HLS などのバージョン管理
- `ghc`: Haskell コンパイラ
- `cabal`: プロジェクト作成、ビルド、実行
- `haskell-language-server`: エディタの補完、型エラー表示

## よく使うコマンド

```sh
cabal run
```

プログラムをビルドして実行します。

```sh
cabal run lesson01-values
```

レッスン 1 のサンプルを実行します。

```sh
cabal run lesson02-conditions
```

レッスン 2 のサンプルを実行します。

```sh
cabal run lesson03-lists
```

レッスン 3 のサンプルを実行します。

```sh
cabal repl
```

対話環境を開きます。式を少しずつ試すときに使います。

```sh
cabal build
```

実行せずにビルドだけします。

## 最初に読むファイル

- `app/Main.hs`: プログラム本体
- `haskell-intro.cabal`: パッケージ設定
- `docs/README.md`: 入門ノートの入口

まずは `cabal run` で現在の最小プログラムを実行してください。
