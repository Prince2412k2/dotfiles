source ~/bash/rc

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

#add scripts to path
PATH="$PATH":"$HOME/.local/scripts/"
#tmux-sessionizer
bind '"\C-f":"tmux-sessionizer\n"'

set -o hashall
