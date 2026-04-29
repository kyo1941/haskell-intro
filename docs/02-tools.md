# 02 各ツールはどういうものか

Haskell の環境は、最初は道具の名前が多く見えます。

でも、まずは次の関係だけわかれば大丈夫です。

```txt
ghcup  ->  ghc / cabal / hls を入れて管理する
ghc    ->  Haskell コードを機械が実行できる形にする
cabal  ->  プロジェクトをビルド、実行、管理する
hls    ->  エディタで補完やエラー表示をする
```

## ghcup

`ghcup` は、Haskell ツールチェーンの管理ツールです。

主な役割:

- GHC をインストールする
- Cabal をインストールする
- Haskell Language Server をインストールする
- 使うバージョンを切り替える

よく使うコマンド:

```sh
ghcup list
```

インストール可能なバージョンと、今入っているものを表示します。

```sh
ghcup install ghc recommended
ghcup set ghc recommended
```

推奨版の GHC を入れて、既定の GHC にします。

```sh
ghcup install cabal recommended
ghcup set cabal recommended
```

推奨版の Cabal を入れて、既定の Cabal にします。

普段の学習では、`ghcup` はあまり頻繁には触りません。ツールを更新したいときや、バージョンを確認したいときに使います。

## ghc

`ghc` は Haskell のコンパイラです。

コンパイラとは、書いた Haskell コードをコンピュータが実行できる形に変換するプログラムです。

バージョン確認:

```sh
ghc --version
```

単体の `.hs` ファイルを直接コンパイルすることもできます。

```sh
ghc app/Main.hs
```

ただし、このプロジェクトでは基本的に `ghc` を直接使うより、`cabal` 経由で使います。

理由は、プロジェクトが大きくなると依存ライブラリ、ビルド設定、複数ファイルの関係をまとめて扱う必要があるからです。

## cabal

`cabal` は Haskell プロジェクトを扱うための道具です。

主な役割:

- プロジェクトを作る
- ビルドする
- 実行する
- 依存ライブラリを管理する
- 対話環境を開く

一番よく使うのはこの 3 つです。

```sh
cabal run
```

ビルドして実行します。普段はまずこれです。

```sh
cabal build
```

実行せずにビルドだけします。コードが正しいか確認したいときに使います。

```sh
cabal repl
```

対話環境を開きます。式、関数、型を試すときに使います。

`cabal repl` の中では、たとえば次のように入力できます。

```haskell
1 + 2
:type "hello"
:type putStrLn
```

`:type` は「この式の型は何か」を聞く命令です。Haskell 学習ではかなり大事です。

## haskell-language-server

`haskell-language-server`、略して HLS は、エディタを賢くするためのサーバーです。

主な役割:

- コード補完
- 型情報の表示
- エラー箇所の表示
- 定義ジャンプ
- フォーマット支援

自分で直接起動することはあまりありません。VS Code などのエディタが裏側で使います。

確認コマンド:

```sh
haskell-language-server-wrapper --version
```

## Hackage

Hackage は Haskell のパッケージ置き場です。

JavaScript の `npm`、Python の `PyPI`、Rust の `crates.io` に近いものです。

パッケージ索引を更新するには次を使います。

```sh
cabal update
```

今は標準ライブラリだけで学べば十分です。外部ライブラリは、必要になったタイミングで一緒に追加します。

## dist-newstyle

`cabal run` や `cabal build` を実行すると、`dist-newstyle/` というディレクトリができます。

これは Cabal のビルド成果物置き場です。

中身を直接編集する必要はありません。消しても、次にビルドすると再生成されます。

そのため `.gitignore` に入れています。

```gitignore
dist-newstyle/
```

## まず覚えるコマンド

最初のうちは、これだけで進められます。

```sh
cabal run
cabal build
cabal repl
```

迷ったら `cabal run`。式を試したくなったら `cabal repl`。このくらいの感覚で大丈夫です。
