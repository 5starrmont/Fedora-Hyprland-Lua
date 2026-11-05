-- Main Entry Point for Hyprland Lua Config (v0.57+)
-- Based on 5starr-mont's Modular Setup

-- Global Paths
_G.scriptsPath = "/home/dreadhead/.config/hypr/scripts"
_G.userScriptsPath = "/home/dreadhead/.config/hypr/UserScripts"

-- Loading Order: Defaults -> User Overrides
-- This ensures user settings overwrite the core defaults.

-- 1. Environment Variables
require("core.env")
require("UserConfigs.env")

-- 2. System/General Settings
require("core.system")
require("UserConfigs.settings")

-- 3. Window & Workspace Rules
require("core.window_rules")
require("UserConfigs.window_rules")

-- 4. Keybinds
require("core.keybinds")
require("UserConfigs.keybinds")

-- 5. Startup Applications
require("core.startup")
require("UserConfigs.startup")

-- 6. Laptop Specifics
require("core.laptops")
-- require("UserConfigs.laptops") -- Uncomment if needed

-- 7. Monitor Profiles (Dynamic Loading)
-- Usage: require("Monitor_Profiles.extend-right")
require("Monitor_Profiles.default")
