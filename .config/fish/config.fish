set fish_greeting

starship init fish | source

alias v nvim
alias z zeditor
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

# function vv
#      set selected_dir (cd ~/Documents/code && ls -d */ | fzf)
#      if test -n "$selected_dir"
#          cd ~/Documents/code/$selected_dir; and nvim .
#      end
# end

alias vv 'cd (cd ~/Documents/code && ls -d */ | fzf) && nvim .'
alias zz 'cd (cd ~/Documents/code && ls -d */ | fzf) && zeditor .'

fish_vi_key_bindings
# Set cursor style based on vi mode
function fish_vi_cursor --on-variable fish_bind_mode
    switch $fish_bind_mode
        case default
            echo -en "\e[2 q" # block cursor
        case insert
            echo -en "\e[6 q" # line cursor
        case visual
            echo -en "\e[2 q" # block cursor
    end
end

# nvm
set PATH $PATH $HOME/.local/share/nvm/v20.12.0/bin
set PATH $PATH fish_user_paths $HOME/.cargo/bin
set -Ux fish_user_paths $HOME/.local/bin $fish_user_paths

# emacs
set -Ux fish_user_paths $HOME/.config/emacs/bin

# lua
set -Ux LUA_PATH "/usr/local/share/lua/5.4/?.lua;/usr/local/share/lua/5.4/?/init.lua;;"
set -Ux LUA_CPATH "/usr/local/lib/lua/5.4/?.so;;"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# go
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# pnpm
set -gx PNPM_HOME "/home/awaki/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
