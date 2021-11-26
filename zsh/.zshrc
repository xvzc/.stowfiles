zmodload zsh/zprof

ZSH_DISABLE_COMPFIX="true"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $HOME/.profile
source ~/.zsh/init
source ~/.zsh/func
source ~/.zsh/aliases
source ~/.zsh/env
source ~/.zsh/fzf
source ~/.zsh/styles
source ~/.zsh/opt
source ~/.zsh/bindkey
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/fpath
source ~/.zsh/load

prompt pure
