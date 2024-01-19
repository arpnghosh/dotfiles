export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"

plugins=(git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# alias
alias vim='nvim'
alias sw='swww'
alias hx='helix'
alias rn='ranger'
alias gmc='git commit -m'
alias gs='git status'
alias ga='git add'
alias gl='git log'
alias gi='git init'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# bun completions
[ -s "/home/awaki/.bun/_bun" ] && source "/home/awaki/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

