
zmodload zsh/zprof
# skip_global_compinit=1

ZSH_DISABLE_COMPFIX="true"

# plugins=(
#     fzf
#     macos
#     zsh-syntax-highlighting
#     docker
#     docker-compose
# )

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $HOME/.profile
source ~/.zsh/init
source ~/.zsh/func
source ~/.zsh/aliases
source ~/.zsh/env
source ~/.zsh/fzf
source ~/.zsh/styles

fpath+=$HOME/.zsh/pure
zmodload zsh/nearcolor
autoload -U promptinit; promptinit
autoload -Uz compinit && compinit

prompt pure

source ~/.zsh/bindkey
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

