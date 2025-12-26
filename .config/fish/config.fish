set fish_greeting

starship init fish | source

# Aliases
alias v nvim
alias z zed
alias y yazi

alias ls 'eza --icons'
alias la 'eza -a --icons'
alias ll 'eza -l --icons'
alias lla 'eza -la --icons'

alias ts 'tmux ls'
alias tc 'tmux -u new-session -t'
alias ta 'tmux -u attach-session -t'

alias nifi 'nmcli device wifi connect'
alias sync-notes '~/Documents/notes/sync-notes.sh'

# Functions
function vv
    set dir (cd ~/Documents/code && ls -d */ | fzf)
    [ -n "$dir" ] && cd ~/Documents/code/$dir && nvim .
end

function zz
    set dir (cd ~/Documents/code && ls -d */ | fzf)
    [ -n "$dir" ] && cd ~/Documents/code/$dir && zed .
end

# PATH Setup
fish_add_path $HOME/.local/share/nvm/v20.12.0/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.config/emacs/bin
fish_add_path $HOME/.bun/bin
fish_add_path $HOME/go/bin
fish_add_path /home/awaki/.opencode/bin

# Environment Variables - Node/Bun
set -gx BUN_INSTALL "$HOME/.bun"

# Environment Variables - Go
set -gx GOPATH $HOME/go

# Environment Variables - Lua
set -gx LUA_PATH "/usr/local/share/lua/5.4/?.lua;/usr/local/share/lua/5.4/?/init.lua;;"
set -gx LUA_CPATH "/usr/local/lib/lua/5.4/?.so;;"

# Environment Variables - pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
string match -q -- $PNPM_HOME $PATH || set -gx PATH "$PNPM_HOME" $PATH
