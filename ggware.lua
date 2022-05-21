local L_1_ = "t"
local L_2_ = game.Players.LocalPlayer:GetMouse()
L_2_.KeyDown:Connect(
    function(L_22_arg0)
	if L_22_arg0 == L_1_ then
		if DaHoodSettings.SilentAim == true then
			DaHoodSettings.SilentAim = false
		else
			DaHoodSettings.SilentAim = true
		end
	end
end
)
game:GetService("RunService").RenderStepped:Connect(
    function()
	for L_23_forvar0, L_24_forvar1 in pairs(game.CoreGui:GetChildren()) do
		if L_24_forvar1.Name == "PostmansAutoRob" then
			L_24_forvar1:Destroy()
		end
	end
	for L_25_forvar0, L_26_forvar1 in pairs(game.CoreGui:GetChildren()) do
		if L_26_forvar1.Name == "WarningGUI" then
			L_26_forvar1:Destroy()
		end
	end
end
)
game.StarterGui:SetCore(
    "SendNotification",
    {
	Title = "https://discord.gg/ThAzXKYQQF",
	Text = "UwU, You're whitelisted.",
}
)
local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/theyhatecloud/GGV1/main/gui"))()
local L_4_ = L_3_.CreateLib("Larp.LOL","Serpent")
local L_5_ = L_4_:NewTab("Aimlock")
local L_6_ = L_5_:NewSection("Larp.LOL")
L_6_:NewButton(
    "Aimlock",
    "Beam niggas down",
    function()

L_6_:NewTextBox(
    "Aimlock Key",
    "Aimlock Key should be lowercase.",
    function(L_69_arg0)
	getgenv().AimlockKey = L_69_arg0
end
)
L_6_:NewTextBox(
    "Aimlock Prediction",
    "Customize your aimlock prediction",

end
)
L_6_:NewDropdown(

    function(L_71_arg0)
	getgenv().AimPart = L_71_arg0
end
)
local L_7_ = L_4_:NewTab("Silent Aim")
local L_8_ = L_7_:NewSection("Larp.LOL")
L_8_:NewButton(

    function()

end
)
L_8_:NewTextBox(
    "Silent Aim Prediction",
    "0.157 for low ping 0.178 high ping",
    function(L_72_arg0)
	DaHoodSettings.Prediction = L_72_arg0
end
)
L_8_:NewDropdown(
    "Silent Aim Part",
    "yes bro flash is cool",
    {
	"Head",
	"UpperTorso",
	"HumanoidRootPart",
	"LowerTorso"
},
    function(L_73_arg0)
	Aiming.TargetPart = L_73_arg0
end
)
L_8_:NewTextBox(
    "Silent Aim Fov",
    "yes bro i am cool ()",
    function(L_74_arg0)
	Aiming.FOV = L_74_arg0
end
)
L_8_:NewToggle(
    "Silent Aim Show Fov",
    "yea",
    function(L_75_arg0)
	Aiming.ShowFOV = L_75_arg0
end
)
local L_11_ = L_4_:NewTab("Antilock")
local L_12_ = L_11_:NewSection("Larp.lol")
L_12_:NewButton(
    "Anti-Lock",
    "Key is Z.",
    function()
	repeat
		wait()
	until game:IsLoaded()
	getgenv().Fix = true
	getgenv().TeclasWS = {
		["tecla1"] = "nil",
		["tecla2"] = "nil",
		["tecla3"] = "H"
	}
	local L_121_ = game:GetService("Players")
	local L_122_ = game:GetService("StarterGui") or "son una mierda"
	local L_123_ = L_121_.LocalPlayer
	local L_124_ = L_123_:GetMouse()
	local L_125_ = getrenv()._G
	local L_126_ = getrawmetatable(game)
	local L_127_ = L_126_.__newindex
	local L_128_ = L_126_.__index
	local L_129_ = 22
	local L_130_ = true
	function anunciar_atentado_terrorista(L_138_arg0)
		L_122_:SetCore("SendNotification", {
			Title = "anti lock fix",
			Text = L_138_arg0
		})
	end
	getgenv().TECHWAREWALKSPEED_LOADED = true
	wait(1.5)
	anunciar_atentado_terrorista("Press  " .. TeclasWS.tecla3 .. " to turn on/off anti lock fix")
	L_124_.KeyDown:Connect(
            function(L_139_arg0)
		if L_139_arg0:lower() == TeclasWS.tecla1:lower() then
			L_129_ = L_129_ + 1
			anunciar_atentado_terrorista("播放器速度已提高 (speed = " .. tostring(L_129_) .. ")")
		elseif L_139_arg0:lower() == TeclasWS.tecla2:lower() then
			L_129_ = L_129_ - 1
			anunciar_atentado_terrorista("玩家的速度已降低 (speed = " .. tostring(L_129_) .. ")")
		elseif L_139_arg0:lower() == TeclasWS.tecla3:lower() then
			if L_130_ then
				L_130_ = false
				anunciar_atentado_terrorista("anti lock fix off")
			else
				L_130_ = true
				anunciar_atentado_terrorista("anti lock fix on")
			end
		end
	end
        )
	setreadonly(L_126_, false)
	L_126_.__index =
            newcclosure(
            function(L_140_arg0, L_141_arg1)
		local L_142_ = checkcaller()
		if L_141_arg1 == "WalkSpeed" and not L_142_ then
			return L_125_.CurrentWS
		end
		return L_128_(L_140_arg0, L_141_arg1)
	end
        )
	L_126_.__newindex =
            newcclosure(
            function(L_143_arg0, L_144_arg1, L_145_arg2)
		local L_146_ = checkcaller()
		if L_130_ then
			if L_144_arg1 == "WalkSpeed" and L_145_arg2 ~= 0 and not L_146_ then
				return L_127_(L_143_arg0, L_144_arg1, L_129_)
			end
		end
		return L_127_(L_143_arg0, L_144_arg1, L_145_arg2)
	end
        )
	setreadonly(L_126_, true)
	repeat
		wait()
	until game:IsLoaded()
	local L_131_ = game:service("Players")
	local L_132_ = L_131_.LocalPlayer
	repeat
		wait()
	until L_132_.Character
	local L_133_ = game:service("UserInputService")
	local L_134_ = game:service("RunService")
	local L_135_ = -0.27
	local L_136_ = false
	local L_137_
	L_133_.InputBegan:connect(
            function(L_147_arg0)
		if L_147_arg0.KeyCode == Enum.KeyCode.LeftBracket then
			L_135_ = L_135_ + 0.01
			print(L_135_)
			wait(0.2)
			while L_133_:IsKeyDown(Enum.KeyCode.LeftBracket) do
				wait()
				L_135_ = L_135_ + 0.01
				print(L_135_)
			end
		end
		if L_147_arg0.KeyCode == Enum.KeyCode.RightBracket then
			L_135_ = L_135_ - 0.01
			print(L_135_)
			wait(0.2)
			while L_133_:IsKeyDown(Enum.KeyCode.RightBracket) do
				wait()
				L_135_ = L_135_ - 0.01
				print(L_135_)
			end
		end
		if L_147_arg0.KeyCode == Enum.KeyCode.Z then
			L_136_ = not L_136_
			if L_136_ == true then
				repeat
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * L_135_
					game:GetService("RunService").Stepped:wait()
				until L_136_ == false
			end
		end
	end
        )
end
)
local L_13_ = L_4_:NewTab("Settings")
local L_14_ = L_13_:NewSection("Larp.LOL")
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
local L_19_ = L_17_:NewSection("Larp.LOL")
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
