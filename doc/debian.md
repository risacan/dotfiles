# Wifiセットアップ

> https://wiki.debian.org/iwlwifi

## non-freeレポジトリ追加
```/etc/apt/sources.list
  GNU nano 2.2.6              File: /etc/apt/sources.list                        Modified  

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

# gitインストール

# dotfiles

