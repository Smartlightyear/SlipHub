print("Enjoy!")

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "SlipHub", -- Required
	Text = "Made by DaNoob, go follow me!", -- Required
	Icon = "rbxassetid://111440803301321" -- Optional
})
wait(2)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "SlipHub", -- Required
	Text = "Hope you enjoy the script " .. game.Players.LocalPlayer.Name .. "!", -- Required
	Icon = "rbxassetid://88748430657817" -- Optional
})

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Slip hub, Hello " .. game.Players.LocalPlayer.Name, "Ocean")

local Main = Window:NewTab("Main")

local Section = Main:NewSection("Mods for " .. game.Players.LocalPlayer.Name)

local autoFarmEnabled = false

Section:NewToggle("Auto Farm", "Automatically moves you to the portal", function(state)
    autoFarmEnabled = state
    
    if state then
        print("Auto Farm Enabled")
        while autoFarmEnabled do
            local player = game.Players.LocalPlayer
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(813.465515, 262.482849, -1107.98914)
            end
            task.wait(0.1) -- Prevents freezing, adjust if needed
        end
    else
        print("Auto Farm Disabled")
    end
end)


Section:NewButton("Make it to the End","Sends " .. game.Players.LocalPlayer.Name .. " to the end", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(813.465515, 262.482849, -1107.98914, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

Section:NewButton("Fling", "Anybody who touches you gets flinged", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/CwqqSjsx",true))()
end)

Section:NewButton("Fly GUI", "OMG GUYS I THINK " .. game.Players.LocalPlayer.Name .. " IS A ADMIN", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

Section:NewSlider("WalkSpeed Slider", "Adjust your walk speed", 500, 0, function(s) 
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end
end)


Section:NewLabel("Config")

Section:NewKeybind("Toggle UI", "Lets you toggle the UI using this Keybind!", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

local CTab = Window:NewTab("Credits")

local CSection = CTab:NewSection("Credits")

CSection:NewLabel("Scripter/Creator: DaNoob")
CSection:NewLabel("Other Scripter/Developer: LunarScripts")
CSection:NewLabel("Tester: " .. game.Players.LocalPlayer.Name)

CSection:NewButton("Copy DaNoob's Youtube link", "Creators Youtube", function()
    setclipboard("https://www.youtube.com/@TagcLa")
end)

CSection:NewButton("Copy DaNoob's ScriptBlox link", "Creators Youtube", function()
    setclipboard("https://scriptblox.com/u/DaNoob")
end)



CSection:NewButton("Copy Lunar's Youtube link", "Creators Youtube", function()
	setclipboard("https://www.youtube.com/@MaxximusPrimal")
end)

CSection:NewButton("Copy Lunar's ScriptBlox link", "Creators Youtube", function()
	setclipboard("https://scriptblox.com/u/LunarScripts")
end)

