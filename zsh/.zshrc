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

source ~/.zsh/env
source ~/.zsh/func
source ~/.zsh/aliases
source ~/.zsh/fzf
source ~/.zsh/opt
source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.zsh/styles
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.zsh/fpath
source ~/.zsh/load
source ~/.zsh/keymaps
source ~/.zsh/vi-opt

source $HOME/.profile

prompt pure
