if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# alias
alias nv='nvim'
alias sw='swww'
alias hx='helix'
alias rn='ranger'
alias gmc='git commit -m'
alias gs='git status'
alias ga='git add'
alias gl='git log'
alias gi='git init'

export JAVA_HOME=/usr/lib/jvm/java-21.0.2.u13-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# bun completions
[ -s "/home/awaki/.bun/_bun" ] && source "/home/awaki/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/home/awaki/.config/swww/target/release/

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
