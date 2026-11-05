#!/bin/bash
# Lua-specific deployment script for Hyprland v0.57+

OK="$(tput setaf 2)[OK]$(tput sgr0)"
INFO="$(tput setaf 4)[INFO]$(tput sgr0)"
ERROR="$(tput setaf 1)[ERROR]$(tput sgr0)"

SOURCE_DIR="/home/dreadhead/hypr-lua"
TARGET_DIR="$HOME/.config/hypr/lua"
USER_CONFIGS_TARGET="$HOME/.config/hypr/lua/UserConfigs"

echo "${INFO} Deploying Modern Lua Configuration..."

# 1. Create target directories
mkdir -p "$TARGET_DIR/core" "$TARGET_DIR/UserConfigs" "$TARGET_DIR/Monitor_Profiles" "$TARGET_DIR/utils"

# 2. Backup existing UserConfigs if they exist
if [ -d "$USER_CONFIGS_TARGET" ]; then
    echo "${INFO} Backing up existing UserConfigs..."
    mkdir -p "$HOME/.config/hypr/lua_backup"
    rsync -a "$USER_CONFIGS_TARGET/" "$HOME/.config/hypr/lua_backup/UserConfigs/"
fi

# 3. Deploy Core Configs (Overwrites defaults)
echo "${INFO} Installing core modules..."
# Use the path relative to the installer root
LUA_REPO_SOURCE="$HOME/Fedora-Hyprland-Lua/Hyprland-Dots/config/hypr/lua"
cp -r "$LUA_REPO_SOURCE/core/"* "$TARGET_DIR/core/"
cp -r "$LUA_REPO_SOURCE/Monitor_Profiles/"* "$TARGET_DIR/Monitor_Profiles/"
cp "$LUA_REPO_SOURCE/main.lua" "$TARGET_DIR/main.lua"

# 4. Deploy UserConfigs (Only if they don't exist or user wants to reset)
# For the first install, we copy them from source.
if [ ! -d "$USER_CONFIGS_TARGET" ] || [ "$(ls -A $USER_CONFIGS_TARGET)" == "" ]; then
    echo "${INFO} Installing default UserConfigs..."
    cp -r "$SOURCE_DIR/UserConfigs/"* "$USER_CONFIGS_TARGET/"
fi

# 5. Finalize Hyprland config to point to Lua
echo "${INFO} Updating hyprland.conf to load Lua..."
echo "source = ~/.config/hypr/lua/main.lua" >> "$HOME/.config/hypr/hyprland.conf"

echo "${OK} Lua configuration deployed successfully!"
