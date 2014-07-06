# Ubuntu 14.04インストール
日本語版をインストールする。
> https://www.ubuntulinux.jp/

## アップデート
```bash
$ sudo apt-get update
$ sudo apt-get upgrade
```

## aptitudeインストール

```bash
$ sudo apt-get install aptitude
```

# dotfiles

## gitセットアップ

### gitインストール
```bash
$ sudo aptitude install git-core
$ git --version
```

### git設定
```bash
$ git config --global user.name "username"
$ git config --global user.email "email"
$ git config --global color.ui true
```

## SSH設定
```bash
$ ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
$ cat <<EOF > ~/.ssh/config
> Host github.com
>   User git
> EOF
$ chmod 600 ~/.ssh/config
$ ssh github.com
```
公開鍵をgithubへ登録する

## dotfilesセットアップ
```
$ git clone ssh://github.com/nownabe/dotfiles.git .dotfiles
$ .dotfiles/setup.sh
```

# Zshセットアップ
```bash
$ sudo aptitude install zsh
$ which zsh
/usr/bin/zsh
$ chsh -s /usr/bin/zsh
$ sudo reboot
```

# Ubuntu設定

> http://www.k5.dion.ne.jp/~r-f/sicklylife/memo/ubuntu1404/settings.html

## 普通のスクロールバーにする
```bash
$ gsettings set com.canonical.desktop.interface scrollbar-mode normal
```

元に戻すには、
```bash
$ gsettings reset com.canonical.desktop.interface scrollbar-mode
```

## Dashのオンライン検索を無効化
1. ランチャーの「システム設定」
2. 「セキュリティとプライバシー」
3. 「検索」タブ
4. 「オンライン結果を含める」をオフに

## 日本語のディレクトリ名を英語に
1.  `$ env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update`
2. 「Update Names」をクリック

## ワークスペース

### ワークスペース有効化
1. 「システム設定」
2. 「外観」
3. 「挙動」タブ
4. 「ワークスペースを有効にする」をチェック

### ショートカットキー変更
1. 「システム設定」
2. 「キーボード」
3. 「ショートカット」タブ
4. 「ナビゲーション」
  - ウインドウを左側のワークスペースへ移動する：Ctrl+Alt+Left
  - 左側のワークスペースへ切り替え：Ctrl+Left

## ランチャー
自動で隠す

1. 「システム設定」
2. 「外観」
3. 「挙動」タブ
4. 「Lancherを自動的に隠す」をオン

## 時計
### 右上の表示
1. 「システム設定」
2. 「時刻と日付」
2. 「時計」タブ
3. 「曜日」、「月日」、「年」にチェック

### NTPサーバをNICTに
```bash
sudo sed -i 's/ntp.ubuntu.com/ntp.nict.jp/' /etc/default/ntpdate
```
