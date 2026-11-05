-- Window and Layer Rules
-- Translated from configs/WindowRules.conf

-- Helper for repetitive tagging
local function add_tag(class_regex, tag)
    hl.window_rule({
        match = { class = class_regex },
        tag = tag,
    })
end

-- Browser tags
add_tag("^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$", "+browser")
add_tag("^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$", "+browser")
add_tag("^(chrome-.+-Default)$", "+browser")
add_tag("^([Cc]hromium)$", "+browser")
add_tag("^([Mm]icrosoft-edge(-stable|-beta|-dev|-unstable))$", "+browser")
add_tag("^(Brave-browser(-beta|-dev|-unstable)?)$", "+browser")
add_tag("^([Tt]horium-browser|[Cc]achy-browser)$", "+browser")
add_tag("^(zen-alpha|zen)$", "+browser")

-- Notif tags
add_tag("^(swaync-control-center|swaync-notification-window|swaync-client|class)$", "+notif")

-- KooL settings tags
hl.window_rule({ match = { title = "^(KooL Quick Cheat Sheet)$" }, tag = "+KooL_Cheat" })
hl.window_rule({ match = { title = "^(KooL Hyprland Settings)$" }, tag = "+KooL_Settings" })
add_tag("^(nwg-displays|nwg-look)$", "+KooL-Settings")

-- Terminal tags
add_tag("^(Alacritty|kitty|kitty-dropterm)$", "+terminal")

-- Email tags
add_tag("^([Tt]hunderbird|org.mozilla.Thunderbird)$", "+email")
add_tag("^(eu.betterbird.Betterbird)$", "+email")
add_tag("^(org.gnome.Evolution)$", "+email")

-- Project tags
add_tag("^(codium|codium-url-handler|VSCodium)$", "+projects")
add_tag("^(VSCode|code|code-url-handler)$", "+projects")
add_tag("^(jetbrains-.+)$", "+projects")
add_tag("^(dev.zed.Zed|antigravity)$", "+projects")

-- Screenshare tags
add_tag("^(com.obsproject.Studio)$", "+screenshare")

-- IM tags
add_tag("^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$", "+im")
add_tag("^([Ff]erdium)$", "+im")
add_tag("^([Ww]hatsapp-for-linux)$", "+im")
add_tag("^(org.telegram.desktop|io.github.tdesktop_x64.TDesktop)$", "+im")
add_tag("^(teams-for-linux)$", "+im")
add_tag("^(im.riot.Riot|Element)$", "+im")

-- Game tags
add_tag("^(gamescope)$", "+games")
add_tag("^(steam_app_\\d+)$", "+games")

-- Gamestore tags
add_tag("^([Ss]team)$", "+gamestore")
hl.window_rule({ match = { title = "^([Ll]utris)$" }, tag = "+gamestore" })
add_tag("^(com.heroicgameslauncher.hgl)$", "+gamestore")

-- File-manager tags
add_tag("^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt)$", "+file-manager")
add_tag("^(app.drey.Warp)$", "+file-manager")

-- Wallpaper tags
add_tag("^([Ww]aytrogen)$", "+wallpaper")

-- Multimedia tags
add_tag("^([Aa]udacious)$", "+multimedia")
add_tag("^([Mm]pv|vlc)$", "+multimedia_video")

-- Settings tags
hl.window_rule({ match = { title = "^(ROG Control)$" }, tag = "+settings" })
add_tag("^(wihotspot(-gui)?)$", "+settings")
add_tag("^([Bb]aobab|org.gnome.[Bb]aobab)$", "+settings")
add_tag("^(gnome-disks|wihotspot(-gui)?)$", "+settings")
hl.window_rule({ match = { title = "(Kvantum Manager)" }, tag = "+settings" })
add_tag("^(file-roller|org.gnome.FileRoller)$", "+settings")
add_tag("^(nm-applet|nm-connection-editor|blueman-manager)$", "+settings")
add_tag("^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$", "+settings")
add_tag("^(qt5ct|qt6ct)$", "+settings")
hl.window_rule({ match = { class = "(xdg-desktop-portal-gtk)" }, tag = "+settings" })
add_tag("^(org.kde.polkit-kde-authentication-agent-1)$", "+settings")
add_tag("^([Rr]ofi)$", "+settings")
add_tag("^(btrfs-assistant)$", "+settings")
add_tag("^(timeshift-gtk)$", "+settings")

-- Viewer tags
add_tag("^(gnome-system-monitor|org.gnome.SystemMonitor|io.missioncenter.MissionCenter)$", "+viewer")
add_tag("^(evince)$", "+viewer")
add_tag("^(eog|org.gnome.Loupe)$", "+viewer")

-- Special override rules
hl.window_rule({ match = { tag = "multimedia_video" }, no_blur = true, opacity = { 1.0, 1.0 } })
hl.window_rule({ match = { tag = "multimedia" }, no_blur = true, opacity = { 1.0, 1.0 } })

-- POSITION
hl.window_rule({ match = { tag = "KooL_Cheat" }, center = true })
hl.window_rule({ match = { tag = "KooL-Settings" }, center = true })
hl.window_rule({ match = { title = "^(ROG Control)$" }, center = true })
hl.window_rule({ match = { title = "^(Keybindings)$" }, center = true })
hl.window_rule({ match = { class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$" }, center = true })
hl.window_rule({ match = { class = "^([Ff]erdium)$" }, center = true })

-- IDLE INHIBIT
hl.window_rule({ match = { fullscreen = true }, idle_inhibit = "fullscreen" })
hl.window_rule({ match = { fullscreen = 1 }, idle_inhibit = "fullscreen" })
hl.window_rule({ match = { class = "^(*)$" }, idle_inhibit = "fullscreen" })
hl.window_rule({ match = { title = "^(*)$" }, idle_inhibit = "fullscreen" })

-- FLOAT
hl.window_rule({ match = { tag = "KooL_Cheat" }, float = true })
hl.window_rule({ match = { tag = "wallpaper" }, float = true, center = true })
hl.window_rule({ match = { tag = "settings" }, float = true, center = true })
hl.window_rule({ match = { tag = "viewer" }, float = true, center = true })
hl.window_rule({ match = { tag = "KooL-Settings" }, float = true, center = true })
hl.window_rule({ match = { class = "([Zz]oom|onedriver|onedriver-launcher)" }, float = true })
hl.window_rule({ match = { class = "(org.gnome.Calculator|qalculate-gtk)" }, float = true })
hl.window_rule({ match = { class = "^(mpv|com.github.rafostar.Clapper)$" }, float = true })
hl.window_rule({ match = { class = "^([Qq]alculate-gtk)$" }, float = true })
hl.window_rule({ match = { class = "^([Ff]erdium)$" }, float = true })

-- Popups and dialogue
hl.window_rule({ match = { title = "^(Authentication Required)$" }, float = true, center = true })
hl.window_rule({
    match = { class = "(codium|codium-url-handler|VSCodium)", title = "negative:(.*codium.*|.*VSCodium.*)" },
    float = true
})
hl.window_rule({
    match = { class = "^(com.heroicgameslauncher.hgl)$", title = "negative:(Heroic Games Launcher)" },
    float = true
})
hl.window_rule({
    match = { class = "^([Ss]team)$", title = "negative:^([Ss]team)$" },
    float = true
})
hl.window_rule({
    match = { title = "^(Add Folder to Workspace)$" },
    float = true,
    size = { "0.7*monitor_w", "0.6*monitor_h" },
    center = true
})
hl.window_rule({
    match = { title = "^(Save As)$" },
    float = true,
    size = { "0.7*monitor_w", "0.6*monitor_h" },
    center = true
})
hl.window_rule({
    match = { initial_title = "(Open Files)" },
    float = true,
    size = { "0.7*monitor_w", "0.6*monitor_h" }
})
hl.window_rule({
    match = { title = "^(SDDM Background)$" },
    float = true,
    center = true,
    size = { "0.16*monitor_w", "0.12*monitor_h" }
})
hl.window_rule({
    match = { class = "^(yad)$" },
    float = true,
    center = true,
    size = { "0.2*monitor_w", "0.2*monitor_h" }
})
hl.window_rule({
    match = { class = "^(hyprland-donate-screen)$" },
    float = true,
    center = true
})

-- OPACITY
hl.window_rule({ match = { tag = "browser" }, opacity = { 0.99, 0.8 } })
hl.window_rule({ match = { tag = "projects" }, opacity = { 0.9, 0.8 } })
hl.window_rule({ match = { tag = "im" }, opacity = { 0.94, 0.86 } })
hl.window_rule({ match = { tag = "multimedia" }, opacity = { 0.94, 0.86 } })
hl.window_rule({ match = { tag = "file-manager" }, opacity = { 0.9, 0.8 } })
hl.window_rule({ match = { tag = "terminal" }, opacity = { 0.9, 0.7 } })
hl.window_rule({ match = { tag = "settings" }, opacity = { 0.8, 0.7 } })
hl.window_rule({ match = { tag = "viewer" }, opacity = { 0.82, 0.75 } })
hl.window_rule({ match = { tag = "wallpaper" }, opacity = { 0.9, 0.7 } })
hl.window_rule({ match = { class = "^(gedit|org.gnome.TextEditor|mousepad)$" }, opacity = { 0.8, 0.7 } })
hl.window_rule({ match = { class = "^(deluge)$" }, opacity = { 0.9, 0.8 } })
hl.window_rule({ match = { class = ^(seahorse)$ }, opacity = { 0.9, 0.8 } })
hl.window_rule({ match = { title = "^(Picture-in-Picture)$" }, opacity = { 0.95, 0.75 } })

-- SIZE
hl.window_rule({ match = { tag = "KooL_Cheat" }, size = { "0.65*monitor_w", "0.9*monitor_h" } })
hl.window_rule({ match = { tag = "wallpaper" }, size = { "0.7*monitor_w", "0.7*monitor_h" } })
hl.window_rule({ match = { tag = "settings" }, size = { "0.7*monitor_w", "0.7*monitor_h" } })
hl.window_rule({ match = { class = "^([Ff]erdium)$" }, size = { "0.6*monitor_w", "0.7*monitor_h" } })

-- BLUR & FULLSCREEN
hl.window_rule({ match = { tag = "games" }, no_blur = true, fullscreen = 0 })
hl.window_rule({ match = { tag = "games" }, fullscreen = 0 })

-- Focus
hl.window_rule({ match = { class = "^(jetbrains-*)" }, no_initial_focus = true })
hl.window_rule({ match = { title = "^(wind.*)$" }, no_initial_focus = true })

-- LAYER RULES
hl.layer_rule({ match = { namespace = "rofi" }, blur = true })
hl.layer_rule({ match = { namespace = "notifications" }, blur = true })
hl.layer_rule({ match = { namespace = "quickshell:overview" }, blur = true })
hl.layer_rule({ match = { namespace = "quickshell:overview" }, ignore_alpha = 0.5 })

-- Named Rules
hl.window_rule({
    name = "Whatsapp-zapzap",
    match = { class = "^([Ww]hatsapp-for-linux|ZapZap|com.rtosta.zapzap)$" },
    size = { "0.6*monitor_w", "0.7*monitor_h" },
    center = true,
})
hl.window_rule({
    name = "Picture-in-Picture",
    match = { title = "^(Picture-in-Picture)$" },
    float = true,
    move = { "72%", "7%" },
    opacity = { 0.95, 0.75 },
    pin = true,
    keep_aspect_ratio = true,
    size = { "0.3*monitor_w", "0.3*monitor_h" },
})
hl.window_rule({
    name = "Thunar-Progress-bar",
    match = { class = "^(thunar)$" },
    match_title = { title = "^(File Operation Progress)$" },
    float = true,
    center = true,
    size = { "0.26*monitor_w", "0.18*monitor_h" },
})
