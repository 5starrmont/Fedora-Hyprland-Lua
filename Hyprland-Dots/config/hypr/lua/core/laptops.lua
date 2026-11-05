-- Laptop Specific Configurations
-- Translated from configs/Laptops.conf

local mainMod = "SUPER"

-- Keyboard & Monitor Brightness
hl.bind(" , xf86KbdBrightnessDown", hl.dsp.exec_cmd(_G.scriptsPath .. "/BrightnessKbd.sh --dec"))
hl.bind(" , xf86KbdBrightnessUp", hl.dsp.exec_cmd(_G.scriptsPath .. "/BrightnessKbd.sh --inc"))
hl.bind(" , xf86MonBrightnessDown", hl.dsp.exec_cmd(_G.scriptsPath .. "/Brightness.sh --dec"))
hl.bind(" , xf86MonBrightnessUp", hl.dsp.exec_cmd(_G.scriptsPath .. "/Brightness.sh --inc"))

-- ASUS Specifics
hl.bind(" , xf86Launch1", hl.dsp.exec_cmd("rog-control-center"))
hl.bind(" , xf86Launch3", hl.dsp.exec_cmd("asusctl led-mode -n"))
hl.bind(" , xf86Launch4", hl.dsp.exec_cmd("asusctl profile -n"))

-- Touchpad Toggle
hl.bind(" , xf86TouchpadToggle", hl.dsp.exec_cmd(_G.scriptsPath .. "/TouchPad.sh"))

-- Laptop Screenshot Keybindings (F6)
hl.bind(mainMod .. " + F6", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --now"))
hl.bind(mainMod .. " + SHIFT + F6", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --area"))
hl.bind(mainMod .. " + CTRL + F6", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --in5"))
hl.bind(mainMod .. " + ALT + F6", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --in10"))
hl.bind("ALT + F6", hl.dsp.exec_cmd(_G.scriptsPath .. "/ScreenShot.sh --active"))

-- Touchpad Device Configuration
hl.device({
    name = "asue1209:00-04f3:319f-touchpad",
    enabled = true,
})
