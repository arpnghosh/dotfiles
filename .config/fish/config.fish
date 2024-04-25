set fish_greeting
starship init fish | source

alias nv 'nvim'
alias neo 'neovide --no-fork'
alias rn 'ranger'

alias ts 'tmux ls'
alias tc 'tmux -u new-session -t'
alias ta 'tmux -u attach-session -t'
alias nifi 'nmcli device wifi connect'

set PATH $PATH $HOME/.local/share/nvm/v20.12.0/bin
set PATH $PATH fish_user_paths $HOME/.cargo/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
