source ~/bash/rc

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

#add scripts to path
export PATH="$PATH:$HOME/.local/scripts"
export PATH="/$PATH:$HOME/.cargo/bin/"
export PATH=$PATH:/home/prince/.local/bin

#tmux-sessionizer
bind '"\C-f":"tmux-sessionizer\n"'

set -o hashall
