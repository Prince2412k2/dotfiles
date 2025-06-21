#!/usr/bin/env bash

for item in ~/.local/scripts/*; do
  chmod +x "$item"
done
