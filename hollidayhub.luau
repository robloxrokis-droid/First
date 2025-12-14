-- Holiday Hub (Universal Version)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local LMG2L = {}

-- ScreenGui
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
LMG2L["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LMG2L["ScreenGui_1"].ResetOnSpawn = false

-- Main Frame
LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"])
LMG2L["Frame_2"].BorderSizePixel = 0
LMG2L["Frame_2"].BackgroundColor3 = Color3.fromRGB(24,168,1)
LMG2L["Frame_2"].AnchorPoint = Vector2.new(0.5,0.5)
LMG2L["Frame_2"].Size = UDim2.new(0.29136,0,0.52859,0)
LMG2L["Frame_2"].Position = UDim2.new(0.5,0,0.5,0)

-- ScrollingFrame
LMG2L["ScrollingFrame_3"] = Instance.new("ScrollingFrame", LMG2L["Frame_2"])
LMG2L["ScrollingFrame_3"].ScrollingDirection = Enum.ScrollingDirection.Y
LMG2L["ScrollingFrame_3"].BorderSizePixel = 0
LMG2L["ScrollingFrame_3"].BackgroundColor3 = Color3.fromRGB(88,255,22)
LMG2L["ScrollingFrame_3"].AutomaticCanvasSize = Enum.AutomaticSize.Y
LMG2L["ScrollingFrame_3"].Size = UDim2.new(0.92965,0,0.8655,0)
LMG2L["ScrollingFrame_3"].Position = UDim2.new(0.03478,0,0.10526,0)
LMG2L["ScrollingFrame_3"].ScrollBarThickness = 4

local layout = Instance.new("UIListLayout", LMG2L["ScrollingFrame_3"])
layout.Padding = UDim.new(0.03,0)

-- Button template
local template = Instance.new("TextButton", LMG2L["ScrollingFrame_3"])
template.Size = UDim2.new(1,0,0.1,0)
template.BackgroundColor3 = Color3.fromRGB(8,66,0)
template.TextColor3 = Color3.fromRGB(255,255,255)
template.BorderSizePixel = 0
template.TextScaled = true
template.Visible = false

-- Top bar
local top = Instance.new("Frame", LMG2L["Frame_2"])
top.BorderSizePixel = 0
top.BackgroundColor3 = Color3.fromRGB(2,255,39)
top.Size = UDim2.new(0.96985,0,0.07602,0)
top.Position = UDim2.new(0.01739,0,0.0117,0)

local title = Instance.new("TextLabel", top)
title.Size = UDim2.new(0.77,0,0.66,0)
title.Position = UDim2.new(0.02,0,0.17,0)
title.BackgroundTransparency = 1
title.TextScaled = true
title.Text = "Holiday Hub"
title.TextColor3 = Color3.fromRGB(255,255,255)

local close = Instance.new("TextButton", top)
close.Size = UDim2.new(0.11009,0,0.83333,0)
close.Position = UDim2.new(0.86239,0,0.08333,0)
close.Text = "X"
close.TextScaled = true
close.BackgroundColor3 = Color3.fromRGB(255,0,0)
close.TextColor3 = Color3.fromRGB(255,255,255)
close.BorderSizePixel = 0

close.MouseButton1Click:Connect(function()
    LMG2L["ScreenGui_1"]:Destroy()
end)

-- Button creator
local function createButton(name, url)
    local b = template:Clone()
    b.Parent = LMG2L["ScrollingFrame_3"]
    b.Visible = true
    b.Text = name
    b.MouseButton1Click:Connect(function()
        pcall(function()
            loadstring(game:HttpGet(url))()
        end)
    end)
end

-- Buttons
createButton("warden", "https://raw.githubusercontent.com/ilikeices/script/refs/heads/main/warden.luau")
createButton("krystal dance v3", "https://raw.githubusercontent.com/ilikeices/script/refs/heads/main/kvd.Luau")
createButton("xester", "https://rawscripts.net/raw/Just-a-baseplate.-Jb-xester-14221")
createButton("pandora", "https://rawscripts.net/raw/Just-a-baseplate.-jb-fe-pndor-14850")
createButton("human hub", "https://raw.githubusercontent.com/ilikeices/script/refs/heads/main/human.luau")
createButton("clovr", "https://rawscripts.net/raw/Just-a-baseplate.-FE-Fake-VR-45999")
createButton("zero hub", "https://raw.githubusercontent.com/ilikeices/script/refs/heads/main/zero.luau")
createButton("giant", "https://raw.githubusercontent.com/ilikeices/script/refs/heads/main/giant.luau")
createButton("car", "https://raw.githubusercontent.com/ilikeices/script/refs/heads/main/car.luau")
createButton("holiday feel", "https://raw.githubusercontent.com/ilikeices/script/refs/heads/main/hdf.luau")
