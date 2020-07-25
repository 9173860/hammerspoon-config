-- 标题栏网速
hs.loadSpoon("SpeedMenu")
spoon.SpeedMenu.start()

-- 密码生成器
require "password-generator"
hs.hotkey.bind({"cmd", "ctrl", "alt"}, "p", "Password Generated",function() randPW() end)

-- 窗口设置
hs.loadSpoon("WinWin")
hs.hotkey.bind({"cmd", "ctrl", "alt"}, "=", function() spoon.WinWin:moveAndResize("fullscreen") end)
hs.hotkey.bind({"cmd", "ctrl", "alt"}, "-", function() spoon.WinWin:moveAndResize("shrink") end)
hs.hotkey.bind({"cmd", "ctrl", "alt"}, "space", function() spoon.WinWin:moveToScreen("next") end)
