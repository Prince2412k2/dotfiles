#!/usr/bin/env bash

mapfile -t files < <(eza -1 ~/.local)

makedir() {
  mkdir -p ~/dotfiles/"$1"/.local/
}

copydir() {
  cp -r ~/.local/"$1" ~/dotfiles/"$1"/.local/
}

for item in "${files[@]}"; do
  echo "Do you want to back up: $item?"
  choice=$(gum choose "Yes" "No" "exit")
  if [[ "$choice" == "Yes" ]]; then
    makedir "$item"
    copydir "$item"
  fi
  if [[ "$choice" == "exit" ]]; then
    exit
  fi
done
