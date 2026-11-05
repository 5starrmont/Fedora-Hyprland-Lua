-- Default Startup Applications
-- Translated from configs/Startup_Apps.conf

local wallDIR = os.getenv("HOME") .. "/Pictures/wallpapers"

-- Wallpaper daemon
hl.exec_once("swww-daemon --format xrgb")

-- Environment initialization
hl.exec_once("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
hl.exec_once("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

-- Core Apps
hl.exec_once(_G.scriptsPath .. "/Dropterminal.sh kitty &")
hl.exec_once(_G.scriptsPath .. "/Polkit.sh")
hl.exec_once("nm-applet --indicator")
hl.exec_once("nm-tray")
hl.exec_once("swaync")
hl.exec_once("waybar")
hl.exec_once("qs -c overview")
hl.exec_once("hypridle")
hl.exec_once(_G.scriptsPath .. "/Hyprsunset.sh init")

-- Personal Scripts
hl.exec_once("~/.config/hypr/battery_alert.sh")

-- Clipboard management
hl.exec_once("wl-paste --type text --watch cliphist store")
hl.exec_once("wl-paste --type image --watch cliphist store")

-- Extra apps
hl.exec_once("blueman-applet")
hl.exec_once("ags")
hl.exec_once("qs -c overview")
hl.exec_once(_G.scriptsPath .. "/KeybindsLayoutInit.sh")
