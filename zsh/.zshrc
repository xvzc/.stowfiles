zmodload zsh/zprof
# skip_global_compinit=1

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
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fpath+=$HOME/.zsh/completion
fpath+=$HOME/.zsh/pure

zmodload zsh/nearcolor

autoload -U promptinit; promptinit
autoload -Uz compinit && compinit -i

prompt pure
