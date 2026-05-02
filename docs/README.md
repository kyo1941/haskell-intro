# Haskell 入門ノート

この `docs` ディレクトリは、Haskell をまったく知らない状態から一緒に学ぶためのノートです。

まずは次の順番で読んでください。

1. [01 環境構築でなにをやったのか](./01-setup.md)
2. [02 各ツールはどういうものか](./02-tools.md)
3. [03 Haskell のファイル、書き方、実行方法](./03-files-and-running.md)
4. [04 学び方と最初の練習](./04-learning-plan.md)
5. [05 レッスン 1: 値、型、関数](./05-lesson01-values.md)
6. [06 レッスン 2: Bool と if then else](./06-lesson02-conditions.md)
7. [07 レッスン 3: リスト、map、filter](./07-lesson03-lists.md)
8. [08 レッスン 4: パターンマッチ](./08-lesson04-pattern-matching.md)

## このプロジェクトの現在地

このディレクトリは、Cabal で作った最小の Haskell プロジェクトです。

```txt
haskell-intro/
  app/
    Main.hs
  docs/
  haskell-intro.cabal
  README.md
```

最初は、細かい仕組みを全部覚える必要はありません。

まずは次の 3 つだけ押さえましょう。

- Haskell のコードは主に `.hs` ファイルに書く
- `cabal run` でビルドして実行する
- エラーが出たら、型や名前の間違いをコンパイラが教えてくれている

この先は、私が先生役として「小さく書く、動かす、なぜそうなるか見る」という進め方で一緒に案内します。
