# oh-my-zsh
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-syntax-highlighting history extract)

source $ZSH/oh-my-zsh.sh

# zoxide
eval "$(zoxide init zsh)"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
