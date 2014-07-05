# Wifiセットアップ

> https://wiki.debian.org/iwlwifi

## non-freeレポジトリ追加
`nano /etc/apt/sources.list`

```
#

# deb cdrom:[Debian GNU/Linux 7.5.0 _Wheezy_ - Official amd64 NETINST Binary-1 20140426-13$

#deb cdrom:[Debian GNU/Linux 7.5.0 _Wheezy_ - Official amd64 NETINST Binary-1 20140426-13:$

deb http://ftp.riken.jp/Linux/debian/debian/ wheezy main contrib non-free
deb-src http://ftp.riken.jp/Linux/debian/debian/ wheezy main contrib non-free

deb http://security.debian.org/ wheezy/updates main contrib non-free
deb-src http://security.debian.org/ wheezy/updates main contrib non-free

# wheezy-updates, previously known as 'volatile'
deb http://ftp.riken.jp/Linux/debian/debian/ wheezy-updates main contrib non-free
deb-src http://ftp.riken.jp/Linux/debian/debian/ wheezy-updates main contrib non-free
```

## Wifiカードを調べる
```bash
$ lspci | grep Network
02:00.0 Network controller: Intel Corporation Ultimate N WiFi Link 5300
```

## 適合ファームウェアを調べる

## ファームウェアインストール
```bash
$ sudo apt-get update
$ sudo apt-get install firmware-iwlwifi
$ sudo modprobe -r iwlwifi
$ sudo modprobe iwlwifi
```

# gitセットアップ

## gitインストール
```bash
$ sudo aptitude install git-core
```

## git設定
$ git config --global user.name "nownabe"
$ git config --global user.email "nownabe@gmail.com"
$ git config --global core.editor vim
$ git config --global core.diff auto
$ git config --global core.branch auto
$ git config --global core.status auto
```

## SSH鍵作成
```bash
$ ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
```

## .ssh/config作成
`$ nano ~/.ssh/config`

```
Host github.com
  User git
```

# dotfilesセットアップ
```
$ git clone git://github.com/nownabe/dotfiles.git ~/.dotfiles
$ ~/.dotfiles/setup.sh
```

# Zshセットアップ

## Zshインストール
```bash
$ sudo aptitude install zsh
```

## 標準シェル切り替え
```bash
$ which zsh
/usr/bin/zsh
$ chsh -s /usr/bin/zsh
```


