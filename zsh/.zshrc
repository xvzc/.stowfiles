zmodload zsh/zprof

ZSH_DISABLE_COMPFIX="true"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(
	fzf
    macos
    docker 
    docker-compose
)

source $HOME/.profile
source ~/.zsh/init
source ~/.zsh/func
source ~/.zsh/aliases
source ~/.zsh/env
source ~/.zsh/fzf
source ~/.zsh/opt
source ~/.zsh/bindkey
source ~/.oh-my-zsh/oh-my-zsh.sh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/styles

source ~/.zsh/fpath
source ~/.zsh/load

prompt pure
