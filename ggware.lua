local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/theyhatecloud/GGV1/main/gui"))()
local L_4_ = L_3_.CreateLib("Larp.LOL","DarkTheme")
local L_13_ = L_4_:NewTab("Settings")
local L_14_ = L_13_:NewSection("UwU esp")
L_14_:NewKeybind(
    "Keybind Gui Toggle",
    "h",
    Enum.KeyCode.Period,
    function()
	L_3_:ToggleUI()
end
)
local L_17_ = L_4_:NewTab("ESP")
local L_18_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/theyhatecloud/GGV1/main/ggesp"))()
local L_19_ = L_17_:NewSection("UwU esp")
L_19_:NewToggle(
    "ESP",
    "ESP",
    function(L_201_arg0)
	L_18_:Toggle(L_201_arg0)
end
)
L_19_:NewToggle(
    "Tracers",
    "ESP Tracers",
    function(L_202_arg0)
	L_18_.Tracers = L_202_arg0
end
)
L_19_:NewToggle(
    "Names",
    "ESP Names",
    function(L_203_arg0)
	L_18_.Names = L_203_arg0
end
)
L_19_:NewToggle(
    "Boxes",
    "ESP Boxes",
    function(L_204_arg0)
	L_18_.Boxes = L_204_arg0
end
) 
