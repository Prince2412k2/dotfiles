# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# # Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
#
# source /usr/share/cachyos-zsh-config/cachyos-config.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

source ~/.local/share/fzf/completion.zsh
source ~/.local/share/fzf/key-bindings.zsh



export EDITOR=nvim
export VISUAL=nvim

#path
export PATH="$PATH:$HOME/.local/scripts"
export PATH="/$PATH:$HOME/.cargo/bin/"
export PATH=$PATH:/home/prince/.spicetify


#############sessionizer######################################
bindkey -s ^f "tmux-sessionizer\n"
##############################################################


#############CMD-EDITOR######################################
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

bindkey -e
##############################################################

source /usr/share/nvm/init-nvm.sh 
source ~/.zshinputcr
source ~/bash/aliases


eval "$(zoxide init zsh)"

