# LANG
export LANG=ja_JP.UTF-8

# history setting
HISTFILE=~/.zsh_histfile
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history

# basics
autoload -Uz colors
colors

# 補完設定
autoload -Uz compinit
compinit

zstyle ':completion:*' list-colors 'di=36' 'ln=35'
zstyle ':completion:*' use-cache true
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' menu select=1

# kill の候補にも色付き表示
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'

setopt list_packed
setopt correct

# cd setting
setopt auto_cd
setopt auto_pushd

function cd() {
    builtin cd $@ &&ls;
}

# プロント設定
PROMPT="%{${fg[yellow]}%}[%n@%m]%{${reset_color}%}%# "
PROMPT2="%{${fg[red]}%}[%n@%m]%{${reset_color}%}%# "
RPROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}[%D %*]"
SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "

# keybind
bindkey -e

# no beep sound
setopt nolistbeep

# alias
alias l='ls'
alias ls='ls --color'
alias ll='ls -l'
alias la='ls -aF'
alias df='df -h'
alias du='du -h'
alias nave='$HOME/.nave/nave/nave.sh'
