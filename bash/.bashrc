source ~/bash/rc

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

#add scripts to path
export PATH="$PATH:$HOME/.local/scripts"
export PATH="/$PATH:$HOME/.cargo/bin/"

#tmux-sessionizer
bind '"\C-f":"tmux-sessionizer\n"'

export SSL_CERT_FILE=/usr/lib/python3.13/site-packages/certifi/cacert.pem

set -o hashall
export TESSDATA_PREFIX=/usr/share/
