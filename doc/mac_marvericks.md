# Mac初期設定

# システム環境設定
- マウス
  - Magick Mouseを接続する
  - 『ポイントとクリック』タブ
    - 『スクロールの方向：ナチュラル』からチェックを外す
    - 『副ボタンのクリック』で『右側をクリック』を選択
  - 『その他のジェスチャ』タブ
    - 『ページ間をスワイプ』で『1本指で左右にスクロール』を選択
- 一般
  - 『スクロールバーのクリック時』で『クリックされた場所にジャンプ』を選択
- Dock
  - 『Dockを自動的に隠す/表示』にチェック
- ディスプレイ
  - スペースを最大まで拡大
- キーボード
  - 『F1、F2などの…』にチェック
- 共有
  - コンピュータ名を編集  

# ソフトウェア・アップデート
アップデートする。

# Dotfiles
## SSH設定
ターミナルを開く
`Finder > アプリケーション > ユーティリティ > ターミナル`

### SSH鍵ペア作成
```bash
$ ssh-keygen -t rsa -b 4096
```

### SSH鍵をgithubに登録
```bash
$ cat .ssh/id_rsa.pub
```

### github.comの設定・確認
```bash
$ cat <<EOF > .ssh/config
Host github.com
  User git
EOF
$ ssh github.com
```

## Dotfilesセットアップ
git使おうとするとなんたらかんたらみたいなのが出てくるのでインストール

```bash
$ git clone ssh://github.com/nownabe/dotfiles.git ~/.dotfiles
$ ~/.dotfiles/setup.sh
```

# Homebrew
## Homebrewインストール
```bash
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

> 参考：http://qiita.com/koshihikari/items/8c1d3a0d4df32adba761

## brew bundle
```bash
$ .dotfiles/brew.sh
```

## 再起動
1回再起動する

# インストールしたアプリケーションの設定




## Alfread 2
```bash
$ open "~/Applications/Alfread 2.app"
```

次以降のアプリはAlfreadから起動する。
Alfreadは`Alt + Space`で起動。

## Google IME
環境設定を開く。

- 『一般』タブ
  - スペースの入力：半角
  - キー設定の選択：ATOK
- 『入力補助』
  - 『アルファベット』の変換前文字列を『半角』に
  - 『数字』の変換前文字列を『半角』に

システム環境設定で入力ソースからことえりを削除してGoogle IMEを追加する。
`Ctrl + Shift + j`で日本語入力、`Ctrl + Shift + ;`で英数入力に切り替えられる。

## Clipmenu
起動時に起動する。

## HyperSwitch
起動時に起動する。
Activate the window switcher forのところのチェックは外しておく。
あとは適当に。

## BetterTouchTool
- Window Snappingを有効にする
- AdvancedのMouseからMiddleクリックを調整する

## XtraFinder
- 『タブ』タブ
  - 『タブ』にチェック
- 『機能』タブ
  - 『カット＆ペースト』にチェック
  - 『フォルダを先頭に配置』にチェック
  - 『アイコン表示で項目を名前で整頓』にチェック
  - 『中央クリックでフォルダを新規ウィンドウまたは新規タブで開く』にチェック
  - 『で戻るでゴミ箱に入れる』にチェック
  - 『リスト表示時にフォルダの項目数を表示』にチェック
  - 『常にツールバーを表示』にチェック
  - 『”上に移動”ボタンをツールバーに追加』にチェック
  - 『XtraFinderの機能をツールバーに追加』にチェック

# Ruby

## Ruby(rbenv)インストール
```bash
$ if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
$ rbenv install 2.0.0-p353
$ rbenv install 2.1.2
$ rbenv global 2.1.2
$ gem install bundle
$ rbenv rehash
```

# Zsh
## ログインシェルの切替え
```bash
$ echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
$ chsh -s /usr/local/bin/zsh
```

## .zshrc
（dotfilesに含まれてる）
> シンプルなzshrc https://gist.github.com/mollifier/4964803
> 少し凝ったzshrc https://gist.github.com/mollifier/4979906
> .zshrcで見かけるautoloadの意味と使い方 http://qiita.com/yuku_t/items/77c23390e52168a2754a
> [Mac OS X] Homebrewでzshを導入する http://www.d-wood.com/blog/2014/03/14_5816.html
