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

source ~/.zshinputcr
source ~/bash/aliases

_conda_lazy_init() {
  # Unset the alias to prevent recursion
  unalias conda 2>/dev/null
  unset -f _conda_lazy_init

  # Actually initialize conda
  __conda_setup="$('/home/prince/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
    eval "$__conda_setup"
  else
    if [ -f "/home/prince/miniconda3/etc/profile.d/conda.sh" ]; then
      . "/home/prince/miniconda3/etc/profile.d/conda.sh"
    else
      export PATH="/home/prince/miniconda3/bin:$PATH"
    fi
  fi
  unset __conda_setup

  # Re-run the command the user originally typed
  conda "$@"
}

alias conda='_conda_lazy_init'

eval "$(zoxide init zsh)"

