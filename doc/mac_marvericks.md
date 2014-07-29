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

# ソフトウェア・アップデート
アップデートする。

# ソフトウェアインストール
- chromeインストール
- Aviraインストール
- iTerm2インストール
- sublime text 2インストール

# Dotfiles
```bash
$ git clone git://github.com/nownabe/dotfiles.git ~/.dotfiles
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
$ brew bundle
```

# Ruby

## Ruby(rbenv)インストール
```bash
$ if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
$ rbenv install 2.0.0-p353
$ rbenv global 2.0.0-p353
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

# Google IMEインストール
> http://www.google.co.jp/ime/

右上のアイコンで英数（Google）とひらがな（Google）を1回ずつ選べば、キーボードの「英数」と「かな」でGoogleIMEが選ばれるようになる。

# TODO
