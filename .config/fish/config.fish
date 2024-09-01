set fish_greeting
starship init fish | source

set -U fish_cursor_default line

alias tmux="tmux -f ~/.config/tmux/tmux.conf"
alias nv 'nvim'
alias neo 'neovide --no-fork'
alias rn 'ranger'
alias zd 'zeditor'
alias hx 'helix'
alias ff 'firefox'
alias zz 'zathura'

alias la 'ls -a'
alias ll 'ls -l'

alias ts 'tmux ls'
alias tc 'tmux -u new-session -t'
alias ta 'tmux -u attach-session -t'
alias nifi 'nmcli device wifi connect'

set PATH $PATH $HOME/.local/share/nvm/v20.12.0/bin
set PATH $PATH fish_user_paths $HOME/.cargo/bin

set -Ux fish_user_paths $HOME/.local/bin $fish_user_paths

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
