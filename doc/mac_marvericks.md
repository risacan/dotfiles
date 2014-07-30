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
## 


## Alfread 2
```bash
$ open "~/Applications/Alfread 2.app"
```

次以降のアプリはAlfreadから起動する。
Alfreadは`Alt + Space`で起動。

## 

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
