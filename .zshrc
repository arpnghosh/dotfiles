alias nv='nvim'
alias rn='ranger'

alias ts='tmux ls'
alias tc='tmux new-session -t'
alias ta='tmux attach-session -t'

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export JAVA_HOME=/usr/lib/jvm/java-21.0.2.u13-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# bun completions
[ -s "/home/awaki/.bun/_bun" ] && source "/home/awaki/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/home/awaki/.spicetify

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

eval "$(starship init zsh)"
