source ~/.zshenv
fpath=(/usr/local/share/zsh-completions $fpath)
 
## 補完機能を有効化
autoload -Uz compinit
compinit -u
 
## 色を使う
autoload -Uz colors
colors
 
## Prompt
PROMPT="[%{${fg[green]}%}%n%{${reset_color}%}@%{${fg[cyan]}%}%m%{${reset_color}%}] %~
%# "
 
## History
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
## zsh間でヒストリを共有する
setopt share_history
## 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
## コマンドの余分なスペースを削除する
setopt hist_reduce_blanks
 
## Directory
## ディレクトリ名でcdする
setopt auto_cd
## cdで自動的にpushdする
setopt auto_pushd
## 重複したディレクトリを追加しない
setopt pushd_ignore_dups
 
## 補完
## tabキーで補完候補を切り替える
setopt auto_menu
## ワイルドカード展開を使用する
setopt extended_glob
## 補完候補を矢印等で選択
zstyle ':completion:*:default' menu select=1
## 補完能登気に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## sudoでも補完
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
/usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
## コマンド補完
bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward
 
## Other Options
## '#'以降をコメントとして扱う
setopt interactive_comments
## スペルミスの指摘
setopt correct
## 全履歴の表示
function history-all { history -E 1 }
 
## Aliases
################
 
case ${OSTYPE} in
linux*)
alias ls='ls --color' ;;
darwin*)
alias ls='ls -G' ;;
esac
 
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
 
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
 
alias mkdir='mkdir -p'
