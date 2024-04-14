#!/usr/bin/env bash

# Usage
# ./change_mode.sh <mode>
# mode:
# 1. normal /   n
# 2. save   /   s

hyprland_config="$HOME/.config/hypr/hyprland.conf"

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <mode>"
  exit 1
fi

if [ ! -f "$hyprland_config" ]; then
  echo "Do you have hyprland installed?"
  exit 2
fi



echo "Mode changed to $1."
