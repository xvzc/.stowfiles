#!/bin/zsh

zmodload zsh/zprof

ZSH_DISABLE_COMPFIX="true"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(
	fzf
    git
    docker 
    docker-compose
    vi-mode
)

source $HOME/.profile
source ~/.zsh/func
source ~/.zsh/aliases
source ~/.zsh/env
source ~/.zsh/fzf
source ~/.zsh/opt
source ~/.zsh/keymaps
source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.zsh/styles
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.zsh/fpath
source ~/.zsh/load

prompt pure
