set fish_greeting

starship init fish | source
# enable_transience

alias v nvim
alias y yazi
alias h helix
alias z zathura
alias ff firefox
alias zd zeditor

alias la 'ls -a'
alias ll 'ls -l'

alias ts 'tmux ls'
alias tc 'tmux -u new-session -t'
alias ta 'tmux -u attach-session -t'

alias nifi 'nmcli device wifi connect'

# function vv
#      set selected_dir (cd ~/Documents/code && ls -d */ | fzf)
#      if test -n "$selected_dir"
#          cd ~/Documents/code/$selected_dir; and nvim .
#      end
# end

alias vv 'cd (cd ~/Documents/code && ls -d */ | fzf) && nvim .'
alias zz 'cd (cd ~/Documents/code && ls -d */ | fzf) && zeditor .'

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

set PATH $PATH $HOME/.local/share/nvm/v20.12.0/bin
set PATH $PATH fish_user_paths $HOME/.cargo/bin
set -Ux fish_user_paths $HOME/.local/bin $fish_user_paths

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# go
set --export PATH $HOME/.go/bin $PATH
