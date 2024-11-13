if status is-interactive
    # Commands to run in interactive sessions can go here
end

# removes the mapping <C-t> which is being used to close the terminal in NeoVim
bind --erase --all \ct

alias vim="nvim"
alias rm="rm -I"
source ~/.pyvenv/bin/activate.fish

# fish is aware of the paths set by brew:
# to ensure that brew paths are recognized inside fish, run:
#    /opt/brew/bin/brew shellenv >> ~/.config/fish/config.fish 

fish_config prompt choose scales

# set -x TERM tmux-256color

# brew paths
set --global --export HOMEBREW_PREFIX "/opt/homebrew";
set --global --export HOMEBREW_CELLAR "/opt/homebrew/Cellar";
set --global --export HOMEBREW_REPOSITORY "/opt/homebrew";
fish_add_path --global --move --path "/opt/homebrew/bin" "/opt/homebrew/sbin";
if test -n "$MANPATH[1]"; set --global --export MANPATH '' $MANPATH; end;
if not contains "/opt/homebrew/share/info" $INFOPATH; set --global --export INFOPATH "/opt/homebrew/share/info" $INFOPATH; end;

# runs neofetch if installed
# if type -q neofetch
# 	neofetch
# end

# init zoxide if installed
fish_add_path /opt/homebrew/bin/zoxide
zoxide init fish | source
