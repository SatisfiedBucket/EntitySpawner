-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Doors Entity Spawner", 5013109572)

-- themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

-- Entities
local function Rush(kill)
    if kill then
        spawn(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/EntitySpawner/main/Rush%20Kill.lua"))()
        end)
    else
        spawn(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/EntitySpawner/main/Rush.lua"))()
        end)
    end
end

local function Ambush(kill)
    if kill then
        spawn(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/EntitySpawner/main/Ambush%20Kill.lua"))()
        end)
    else
        spawn(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/EntitySpawner/main/Ambush.lua"))()
        end)
    end
end

local function Depth()
    spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/DoorsCustomEntites/main/Depth.lua"))()
    end)
end

local function Intruder()
    spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/DoorsCustomEntites/main/Intruder.lua"))()
    end)
end

local function A60()
    spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/DoorsCustomEntites/main/A-60.lua"))()
    end)
end

local function A90()
    spawn(function()
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules["A90"])(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game))
    end)
end

local function A120()
    spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/DoorsCustomEntites/main/A-120.lua"))()
    end)
end

local function TriggeredRush()
    spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/DoorsCustomEntites/main/TriggeredRush.lua"))()
    end)
end

local function TriggeredAmbush()
    spawn(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SatisfiedBucket/DoorsCustomEntites/main/TriggeredAmbush.lua"))()
    end)
end

-- first page
local page = venyx:addPage("Entities", 5012544693)
local section1 = page:addSection("Doors Entities")
local section2 = page:addSection("Ultra-Nightmare Entities (ALL KILL)")
local section3 = page:addSection("Custom Entites (ALL KILL)")

-- Add entities
section1:addButton("Rush (Friendly)", function()
	Rush(false)
end)

section1:addButton("Rush", function()
	Rush(true)
end)

section1:addButton("Ambush (Friendly)", function()
	Ambush(false)
end)

section1:addButton("Ambush", function()
	Ambush(true)
end)

section1:addButton("A-60", function()
	A60()
end)

section1:addButton("A-90 (Friendly)", function()
	A90()
end)

section1:addButton("A-120", function()
	A120()
end)

section2:addButton("Intruder", function()
	Intruder()
end)

section2:addButton("Triggered Rush", function()
	TriggeredRush()
end)

section2:addButton("Triggered Ambush", function()
	TriggeredAmbush()
end)

section3:addButton("Depth", function()
	Depth()
end)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
	colors:addColorPicker(theme, color, function(color3)
		venyx:setTheme(theme, color3)
	end)
end

local settings = venyx:addPage("Settings", 5012544693)
local generalSettings = settings:addSection("General")

generalSettings:addKeybind("Toggle Keybind", Enum.KeyCode.P, function()
	print("Activated Keybind")
	venyx:toggle()
end, function()
	print("Changed Keybind")
end)

local credits = venyx:addPage("Credits", 5012544693)
credits:addSection("Script by V5#7463")
credits:addSection("Made for a friend")
credits:addSection("Made with Venyx UI Lib")

-- load
venyx:SelectPage(venyx.pages[1], true)
