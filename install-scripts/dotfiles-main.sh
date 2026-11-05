#!/bin/bash
# 💫 https://github.com/5starr-mont 💫 #
# Hyprland-Lua Deployment Script #

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PARENT_DIR="$SCRIPT_DIR/.."
cd "$PARENT_DIR" || { echo "Failed to change directory to $PARENT_DIR"; exit 1; }

if ! source "$(dirname "$(readlink -f "$0")")/Global_functions.sh" 2>/dev/null; then
  # If Global_functions.sh is missing, we define basic colors
  OK="$(tput setaf 2)[OK]$(tput sgr0)"
  INFO="$(tput setaf 4)[INFO]$(tput sgr0)"
  ERROR="$(tput setaf 1)[ERROR]$(tput sgr0)"
  NOTE="$(tput setaf 3)[NOTE]$(tput sgr0)"
  SKY_BLUE="$(tput setaf 6)"
  RESET="$(tput sgr0)"
fi

printf "${NOTE} Deploying Modern Lua Configuration (v0.57+)...\n"
if [ -d "/home/dreadhead/Fedora-Hyprland-Lua/Hyprland-Dots/config/hypr/lua" ]; then
  chmod +x /home/dreadhead/Fedora-Hyprland-Lua/install-scripts/lua_deploy.sh
  /home/dreadhead/Fedora-Hyprland-Lua/install-scripts/lua_deploy.sh
else
  echo -e "$ERROR Lua source not found within the installer directory"
  exit 1
fi

printf "\n%.0s" {1..2}
