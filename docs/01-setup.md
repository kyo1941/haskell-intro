# 01 環境構築でなにをやったのか

このプロジェクトでは、macOS 上に Haskell を書いて実行するための基本環境を作りました。

## 入れたもの

入れた主なツールは次の 4 つです。

- `ghcup`
- `ghc`
- `cabal`
- `haskell-language-server`

それぞれの役割はあとで詳しく見ます。ここでは、環境構築の流れだけを先に整理します。

## 1. Homebrew で ghcup を入れた

最初に確認したところ、`ghc`、`cabal`、`stack`、`ghcup` はまだ入っていませんでした。

macOS には Homebrew が入っていたので、次のように `ghcup` を入れました。

```sh
brew install ghcup
```

`ghcup` は、Haskell 関連ツールのバージョンを管理する道具です。

Haskell では、コンパイラやビルドツールのバージョン相性が大事です。そのため、初心者のうちは `ghcup` に任せるのがわかりやすいです。

## 2. ghcup で推奨版の GHC を入れた

次に、Haskell のコンパイラである `ghc` を入れました。

```sh
ghcup install ghc recommended
ghcup set ghc recommended
```

この環境では `GHC 9.6.7` が入りました。

`recommended` を選んだ理由は、最新すぎる版よりも周辺ツールとの相性が安定しやすいからです。

## 3. ghcup で推奨版の Cabal を入れた

次に、プロジェクトの作成、ビルド、実行に使う `cabal` を入れました。

```sh
ghcup install cabal recommended
ghcup set cabal recommended
```

この環境では `cabal-install 3.14.2.0` が入りました。

## 4. ghcup で Haskell Language Server を入れた

エディタで補完、型表示、エラー表示を使うために `haskell-language-server` も入れました。

```sh
ghcup install hls recommended
```

VS Code などのエディタは、この HLS と通信して Haskell の編集支援を行います。

## 5. PATH を通した

`ghcup` が入れたツールは、基本的に次の場所に置かれます。

```txt
~/.ghcup/bin
```

最初は `cabal` や `ghc` を普通に打っても見つからなかったため、zsh の設定ファイルに PATH を追加しました。

対象ファイル:

- `~/.zshrc`
- `~/.zprofile`

追加した内容:

```sh
export PATH="$HOME/.ghcup/bin:$PATH"
```

これで新しいターミナルを開いたときに、次のコマンドがそのまま使えるようになります。

```sh
ghc --version
cabal --version
haskell-language-server-wrapper --version
```

## 6. Cabal プロジェクトを作った

このディレクトリに、最小の Haskell プロジェクトを作りました。

```sh
cabal init --non-interactive --minimal --package-name=haskell-intro --exe --main-is=Main.hs
```

これにより、主に次のファイルが作られました。

- `app/Main.hs`
- `haskell-intro.cabal`
- `CHANGELOG.md`

そのあと、入門用に次のファイルも追加しました。

- `README.md`
- `docs/`
- `.gitignore`
- `LICENSE`

## 7. cabal update を実行した

Cabal が外部ライブラリを探せるように、Hackage というパッケージ置き場の索引を更新しました。

```sh
cabal update
```

今すぐ外部ライブラリを使う必要はありませんが、後で `text`、`containers`、`aeson` などのライブラリを使うときに必要になります。

## 8. 実行確認をした

最後に、プロジェクトが動くことを確認しました。

```sh
cabal run
```

現在の `app/Main.hs` は最小のプログラムです。

```haskell
module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"
```

実行すると次のように表示されます。

```txt
Hello, Haskell!
```

ここまでで「Haskell を書く、ビルドする、実行する」ための入口はできています。
