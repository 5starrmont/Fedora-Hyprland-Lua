-- Default Keybinds
-- Translated from configs/Keybinds.conf

local mainMod = "SUPER"

-- Common shortcuts
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("pkill rofi || true && rofi -show drun -modi drun,filebrowser,run,window"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("xdg-open \"https://\""))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(_G.scriptsPath .. "/OverviewToggle.sh"))
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("kitty")) -- Defaulting to kitty, will be overridden by user settings
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar")) -- Defaulting to thunar, will be overridden by user settings

-- Features / Extras
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(_G.scriptsPath .. "/ThemeChanger.sh"))
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd(_G.scriptsPath .. "/KeyHints.sh"))
hl.bind(mainMod .. " + ALT + R", hl.dsp.exec_cmd(_G.scriptsPath .. "/Refresh.sh"))
hl.bind(mainMod .. " + ALT + E", hl.dsp.exec_cmd(_G.scriptsPath .. "/RofiEmoji.sh"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(_G.scriptsPath .. "/RofiSearch.sh"))
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd("rofi -show window"))
hl.bind(mainMod .. " + ALT + O", hl.dsp.exec_cmd(_G.scriptsPath .. "/ChangeBlur.sh"))
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd(_G.scriptsPath .. "/GameMode.sh"))
hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd(_G.scriptsPath .. "/ChangeLayout.sh"))
hl.bind(mainMod .. " + ALT + V", hl.dsp.exec_cmd(_G.scriptsPath .. "/ClipManager.sh"))
hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd(_G.scriptsPath .. "/RofiThemeSelector.sh"))
hl.bind(mainMod .. " + CTRL + SHIFT + R", hl.dsp.exec_cmd("pkill rofi || true && " .. _G.scriptsPath .. "/RofiThemeSelector-modified.sh"))

-- Window Management
hl.bind(mainMod .. " + SHIFT + F", "fullscreen")
hl.bind(mainMod .. " + CTRL + F", "fullscreen", 1)
hl.bind(mainMod .. " + SPACE", "togglefloating")
hl.bind(mainMod .. " + ALT + SPACE", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))
hl.bind(mainMod .. " + SHIFT + Return", hl.dsp.exec_cmd(_G.scriptsPath .. "/Dropterminal.sh kitty"))

-- Zooming
hl.bind(mainMod .. " + ALT + mouse_down", hl.dsp.exec_cmd("hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor * 2.0}')\""))
hl.bind(mainMod .. " + ALT + mouse_up", hl.dsp.exec_cmd("hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor / 2.0}')\""))

-- Waybar
hl.bind(mainMod .. " + CTRL + ALT + B", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd(_G.scriptsPath .. "/WaybarStyles.sh"))
hl.bind(mainMod .. " + ALT + B", hl.dsp.exec_cmd(_G.scriptsPath .. "/WaybarLayout.sh"))

-- Night Light
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(_G.scriptsPath .. "/Hyprsunset.sh toggle"))

-- UserScripts
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd(_G.userScriptsPath .. "/RofiBeats.sh"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(_G.userScriptsPath .. "/WallpaperSelect.sh"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(_G.userScriptsPath .. "/WallpaperEffects.sh"))
hl.bind("CTRL + ALT + W", hl.dsp.exec_cmd(_G.userScriptsPath .. "/WallpaperRandom.sh"))
hl.bind(mainMod .. " + CTRL + O", "setprop", "active opaque toggle")
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.exec_cmd(_G.scriptsPath .. "/KeyBinds.sh"))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd(_G.scriptsPath .. "/Animations.sh"))
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.exec_cmd(_G.userScriptsPath .. "/ZshChangeTheme.sh"))
hl.bind("ALT_L + SHIFT_L", hl.dsp.exec_cmd(_G.scriptsPath .. "/KeyboardLayout.sh switch"))
hl.bind("SHIFT_L + ALT_L", hl.dsp.exec_cmd(_G.userScriptsPath .. "/Tak0-Per-Window-Switch.sh"))
hl.bind(mainMod .. " + ALT + C", hl.dsp.exec_cmd(_G.userScriptsPath .. "/RofiCalc.sh"))

-- System
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("hyprctl dispatch exit 0"))
hl.bind(mainMod .. " + Q", "killactive")
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd(_G.scriptsPath .. "/KillActiveProcess.sh"))
hl.bind("CTRL + ALT + L", hl.dsp.exec_cmd(_G.scriptsPath .. "/LockScreen.sh"))
hl.bind("CTRL + ALT + P", hl.dsp.exec_cmd(_G.scriptsPath .. "/Wlogout.sh"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(_G.scriptsPath .. "/Kool_Quick_Settings.sh"))

-- Layouts
hl.bind(mainMod .. " + CTRL + D", "layoutmsg", "removemaster")
hl.bind(mainMod .. " + I", "layoutmsg", "addmaster")
hl.bind(mainMod .. " + CTRL + Return", "layoutmsg", "swapwithmaster")
hl.bind(mainMod .. " + SHIFT + I", "layoutmsg", "togglesplit")
hl.bind(mainMod .. " + P", "pseudo")
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("hyprctl dispatch splitratio 0.3"))

-- Window Cycling
hl.bind("ALT + tab", "cyclenext")
hl.bind("ALT + tab", "bringactivetotop")

-- Special Keys / Hot Keys
hl.bind(" , xf86audioraisevolume", hl.dsp.exec_cmd(_G.scriptsPath .. "/Volume.sh --inc"))
hl.bind(" , xf86audiolowervolume", hl.dsp.exec_cmd(_G.scriptsPath .. "/Volume.sh --dec"))
hl.bind("ALT + xf86audioraisevolume", hl.dsp.exec_cmd(_G.scriptsPath .. "/Volume.sh --inc-precise"))
hl.bind("ALT + xf86audiolowervolume", hl.dsp.exec_cmd(_G.scriptsPath .. "/Volume.sh --dec-precise"))
hl.bind(" , xf86AudioMicMute", hl.dsp.exec_cmd(_G.scriptsPath .. "/Volume.sh --toggle-mic"))
hl.bind(" , xf86audiomute", hl.dsp.exec_cmd(_G.scriptsPath .. "/Volume.sh --toggle"))
hl.bind(" , xf86Sleep", hl.dsp.exec_cmd("systemctl suspend"))
hl.bind(" , xf86Rfkill", hl.dsp.exec_cmd(_G.scriptsPath .. "/AirplaneMode.sh"))

-- Media
hl.bind(" , xf86AudioPlayPause", hl.dsp.exec_cmd(_G.scriptsPath .. "/MediaCtrl.sh --pause"))
hl.bind(" , xf86AudioPause", hl.dsp.exec_cmd(_G.scriptsPath .. "/MediaCtrl.sh --pause"))
hl.bind(" , xf86AudioPlay", hl.dsp.exec_cmd(_G.scriptsPath .. "/MediaCtrl.sh --pause"))
hl.bind(" , xf86AudioNext", hl.dsp.exec_cmd(_G.scriptsPath .. "/MediaCtrl.sh --nxt"))
hl.bind(" , xf86AudioPrev", hl.dsp.exec_cmd(_G.scriptsPath .. "/MediaCtrl.sh --prv"))
hl.bind(" , xf86audiostop", hl.dsp.exec_cmd(_G.scriptsPath .. "/MediaCtrl.sh --stop"))

-- Screenshots
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --now"))
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --area"))
hl.bind(mainMod .. " + CTRL + Print", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --in5"))
hl.bind(mainMod .. " + CTRL + SHIFT + Print", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --in10"))
hl.bind("ALT + Print", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --active"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --swappy"))

-- Resize
hl.bind(mainMod .. " + SHIFT + left", "resizeactive", "-50 0")
hl.bind(mainMod .. " + SHIFT + right", "resizeactive", "50 0")
hl.bind(mainMod .. " + SHIFT + up", "resizeactive", "0 -50")
hl.bind(mainMod .. " + SHIFT + down", "resizeactive", "0 50")

-- Move
hl.bind(mainMod .. " + CTRL + left", "movewindow", "l")
hl.bind(mainMod .. " + CTRL + right", "movewindow", "r")
hl.bind(mainMod .. " + CTRL + up", "movewindow", "u")
hl.bind(mainMod .. " + CTRL + down", "movewindow", "d")

-- Swap
hl.bind(mainMod .. " + ALT + left", "swapwindow", "l")
hl.bind(mainMod .. " + ALT + right", "swapwindow", "r")
hl.bind(mainMod .. " + ALT + up", "swapwindow", "u")
hl.bind(mainMod .. " + ALT + down", "swapwindow", "d")

-- Grouping
hl.bind(mainMod .. " + G", "togglegroup")
hl.bind(mainMod .. " + Tab", "changegroupactive", "f")
hl.bind(mainMod .. " + CTRL + tab", "changegroupactive")
hl.bind(mainMod .. " + SHIFT + Tab", "changegroupactive", "b")
hl.bind(mainMod .. " + CTRL + K", "moveintogroup", "l")
hl.bind(mainMod .. " + CTRL + L", "moveintogroup", "r")
hl.bind(mainMod .. " + CTRL + H", "moveoutofgroup")

-- Focus
hl.bind(mainMod .. " + left", "movefocus", "l")
hl.bind(mainMod .. " + right", "movefocus", "r")
hl.bind(mainMod .. " + up", "movefocus", "u")
hl.bind(mainMod .. " + down", "movefocus", "d")

-- Workspaces
hl.bind(mainMod .. " + tab", "workspace", "m+1")
hl.bind(mainMod .. " + SHIFT + tab", "workspace", "m-1")
hl.bind(mainMod .. " + SHIFT + U", "movetoworkspace", "special")
hl.bind(mainMod .. " + U", "togglespecialworkspace")

-- Workspace Loop (Optimized)
for i = 1, 10 do
    local key = i == 10 and "code:19" or "code:" .. (i + 9)
    hl.bind(mainMod .. " + " .. key, "workspace", i)
    hl.bind(mainMod .. " + SHIFT + " .. key, "movetoworkspace", i)
    hl.bind(mainMod .. " + CTRL + " .. key, "movetoworkspacesilent", i)
end

-- Mouse
hl.bindmd(mainMod .. " + mouse:272", "movewindow")
hl.bindmd(mainMod .. " + mouse:273", "resizewindow")
