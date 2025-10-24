local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-------------------------------------------------------------------------------------------------------------------------

local Window = Rayfield:CreateWindow({
   Name = "WHITE HACKER",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by Sirius",
   ShowText = "WhHa'hub", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "White_Hacker"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "White-Hacker",
      Subtitle = "Key System",
      Note = "Prove that you really want to help.", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"84DK-HW6F-UWM7-YB1E-MT56"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-------------------------------------------------------------------------------------------------------------------------

local Tab = Window:CreateTab("🟡DashBoard🟡",0) -- Title, Image
local Section = Tab:CreateSection("Hi, if you're reading this, it means you entered the correct password and proved you're a white hat hacker. Happy hacking!")
local Section = Tab:CreateSection("it means you entered the correct password and proved you're a white hat hacker")
local Section = Tab:CreateSection("Happy hacking!")
local Tab = Window:CreateTab("--------------------------- ")
local Tab = Window:CreateTab("V1.1")
-------------------------------------------------------------------------------------------------------------------------



local Tab = Window:CreateTab("🟢Functions🟢",0) -- Title, Image
local Tab = Window:CreateTab("EXP1")

-------------------------------------------------------------------------------------------------------------------------


local Button = Tab:CreateButton({
   Name = "Anti Fling",
   Callback = function()
   local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local function setupAntiFlung()
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    
    -- Main protection loop
    while true do
        local currentVelocity = HumanoidRootPart.Velocity.Magnitude
        
        -- Detect fling velocity
        if currentVelocity > 150 then
            -- Break fling momentum
            HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            
            -- Anchor temporarily
            HumanoidRootPart.Anchored = true
            wait(0.1)
            HumanoidRootPart.Anchored = false
        end
        
        -- Remove any suspicious forces
        for _, force in ipairs(HumanoidRootPart:GetChildren()) do
            if force:IsA("BodyVelocity") or force:IsA("BodyAngularVelocity") then
                force:Destroy()
            end
        end
        
        wait(0.05)
    end
end

-- Execute protection
spawn(setupAntiFlung)

-- Re-inject when character respawns
LocalPlayer.CharacterAdded:Connect(function()
    wait(2)
    setupAntiFlung()
end)-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Anti Bang",
   Callback = function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart

workspace.FallenPartsDestroyHeight = -1000
local lastCFrame = hrp.CFrame

hrp.CFrame = CFrame.new(Vector3.new(0, -500, 0))

wait(0.7)

hrp.CFrame = lastCFrame
workspace.FallenPartsDestroyHeight = -500-- The function that takes place when the button is pressed
   end,
})


local Button = Tab:CreateButton({
   Name = "Anti IP Logger",
   Callback = function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local request = http_request or request or HttpPost or syn.request or fluxus.request
local oldfunc
oldfunc = hookfunction(request, function(requestData,...)
    if(string.find(requestData.Url, 'discord') or string.find(requestData.Url, 'webhook') or string.find(requestData.Url, 'ipv4')) then
        requestData.Url = 'jewish shit'
    end

    return oldfunc(requestData,...)
end)-- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Http Spy V2",
   Callback = function()
   local HttpSpy = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TitleText = Instance.new("TextLabel")
local MainContainer = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

-- Properties
HttpSpy.Name = "HttpSpy"
HttpSpy.Parent = game.CoreGui
HttpSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = HttpSpy
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.05, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 300)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 30)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = TitleBar

TitleText.Name = "TitleText"
TitleText.Parent = TitleBar
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 10, 0, 0)
TitleText.Size = UDim2.new(1, -40, 1, 0)
TitleText.Font = Enum.Font.GothamSemibold
TitleText.Text = "HTTP Spy v2"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextSize = 14
TitleText.TextXAlignment = Enum.TextXAlignment.Left

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Position = UDim2.new(1, -30, 0, 0)
MinimizeButton.Size = UDim2.new(0, 30, 1, 0)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 20

MainContainer.Name = "MainContainer"
MainContainer.Parent = MainFrame
MainContainer.BackgroundTransparency = 1
MainContainer.Position = UDim2.new(0, 0, 0, 30)
MainContainer.Size = UDim2.new(1, 0, 1, -30)
MainContainer.ScrollBarThickness = 4
MainContainer.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)

UIListLayout.Parent = MainContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

UIPadding.Parent = MainContainer
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.PaddingTop = UDim.new(0, 10)

local NotificationFrame = Instance.new("Frame")
local NotificationText = Instance.new("TextLabel")

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = HttpSpy
NotificationFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Position = UDim2.new(1, -220, 1, -60)
NotificationFrame.Size = UDim2.new(0, 200, 0, 40)
NotificationFrame.Visible = false

local NotificationCorner = Instance.new("UICorner")
NotificationCorner.CornerRadius = UDim.new(0, 5)
NotificationCorner.Parent = NotificationFrame

NotificationText.Name = "NotificationText"
NotificationText.Parent = NotificationFrame
NotificationText.BackgroundTransparency = 1
NotificationText.Size = UDim2.new(1, 0, 1, 0)
NotificationText.Font = Enum.Font.GothamSemibold
NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationText.TextSize = 14
NotificationText.Text = "Log copied to clipboard!"

local isMinimized = false

MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized

    if not isMinimized then
        MainContainer.Visible = true
        MainFrame.Size = UDim2.new(0, 400, 0, 300)
        MinimizeButton.Text = "-"
        return
    end

    MainContainer.Visible = false
    MainFrame.Size = UDim2.new(0, 400, 0, 30)
    MinimizeButton.Text = "+"
end)

-- Functions
local function createDraggable(gui)
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end

        dragging = true
        dragStart = input.Position
        startPos = gui.Position

        input.Changed:Connect(function()
            if input.UserInputState ~= Enum.UserInputState.End then return end
            dragging = false
        end)
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then return end
        dragInput = input
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input ~= dragInput or not dragging then return end
        update(input)
    end)
end

createDraggable(MainFrame)

local function registerDynamicScrollingFrame(frame)
    local layout = frame:FindFirstChildWhichIsA("UIListLayout")

    local function updateCanvasSize()
        frame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 20)
    end

    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)
    updateCanvasSize()
end

registerDynamicScrollingFrame(MainContainer)

local function showNotification()
    NotificationFrame.Visible = true
    task.wait(2)
    NotificationFrame.Visible = false
end

local function formatLogEntry(method, url, headers)
    if not method or not url then
        return ""
    end

    local text = method .. "\n" .. url

    if not headers or type(headers) ~= "table" then
        return text
    end

    text ..= "\n\nHeaders:"
    for key, value in pairs(headers) do
        text ..= string.format("\n%s: %s", tostring(key), tostring(value))
    end

    return text
end

local function createLogEntry(method, url, headers)
    local LogEntry = Instance.new("TextButton")
    LogEntry.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    LogEntry.BorderSizePixel = 0
    LogEntry.Size = UDim2.new(1, 0, 0, 30)
    LogEntry.Font = Enum.Font.SourceSansSemibold
    LogEntry.TextColor3 = Color3.fromRGB(220, 220, 220)
    LogEntry.TextSize = 14
    LogEntry.TextWrapped = true
    LogEntry.TextXAlignment = Enum.TextXAlignment.Left
    LogEntry.TextYAlignment = Enum.TextYAlignment.Top
    LogEntry.AutoButtonColor = false

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = LogEntry

    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = LogEntry
    UIPadding.PaddingLeft = UDim.new(0, 10)
    UIPadding.PaddingRight = UDim.new(0, 10)
    UIPadding.PaddingTop = UDim.new(0, 5)
    UIPadding.PaddingBottom = UDim.new(0, 5)

    local logText = formatLogEntry(method, url, headers)
    LogEntry.Text = logText
    LogEntry.Parent = MainContainer

    local textSize = game:GetService("TextService"):GetTextSize(
        LogEntry.Text,
        LogEntry.TextSize,
        LogEntry.Font,
        Vector2.new(MainContainer.AbsoluteSize.X - 40, math.huge)
    )
    LogEntry.Size = UDim2.new(1, 0, 0, textSize.Y + 10)

    local OriginalColor = LogEntry.BackgroundColor3

    LogEntry.MouseEnter:Connect(function()
        LogEntry.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    end)

    LogEntry.MouseLeave:Connect(function()
        LogEntry.BackgroundColor3 = OriginalColor
    end)

    LogEntry.MouseButton1Click:Connect(function()
        setclipboard(logText)
        showNotification()
    end)

    MainContainer.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
end

-- HTTP Spy Logic
local HttpGet
HttpGet = hookfunction(game.HttpGet, function(self, url, ...)
    createLogEntry("HTTP GET", url)
    return HttpGet(self, url, ...)
end)

local HttpPost
HttpPost = hookfunction(game.HttpPost, function(self, url, ...)
    createLogEntry("HTTP POST", url)
    return HttpPost(self, url, ...)
end)

local RequestLog
if syn and syn.request then
    RequestLog = hookfunction(syn.request, function(dat)
        createLogEntry(dat.Method or "REQUEST", dat.Url, dat.Headers)
        return RequestLog(dat)
    end)
elseif request then
    RequestLog = hookfunction(request, function(dat)
        createLogEntry(dat.Method or "REQUEST", dat.Url, dat.Headers)
        return RequestLog(dat)
    end)
else
    createLogEntry("WARNING", "Your exploit is not supported!")
end



      -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Anti Black Hole",
   Callback = function()
   local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local function setupAntiBlackHole()
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    
    -- Anti-force field protection
    local function createForceField()
        local forceField = Instance.new("BodyVelocity")
        forceField.MaxForce = Vector3.new(40000, 40000, 40000)
        forceField.Velocity = Vector3.new(0, 0, 0)
        forceField.Name = "AntiGravField"
        forceField.Parent = HumanoidRootPart
        return forceField
    end
    
    local forceField = createForceField()
    
    -- Black hole detection and neutralization
    while true do
        -- Check for external forces
        for _, part in pairs(workspace:GetChildren()) do
            if part:IsA("Part") and part.BrickColor == BrickColor.new("Black") then
                -- Detect black hole parts
                local distance = (HumanoidRootPart.Position - part.Position).Magnitude
                if distance < 100 then
                    -- Counter-force against black hole pull
                    local direction = (HumanoidRootPart.Position - part.Position).Unit
                    forceField.Velocity = direction * 50
                    
                    -- Optional: Destroy the black hole
                    part:Destroy()
                end
            end
        end
        
        -- Remove any external body velocities
        for _, force in pairs(HumanoidRootPart:GetChildren()) do
            if force:IsA("BodyVelocity") and force.Name ~= "AntiGravField" then
                force:Destroy()
            end
        end
        
        -- Anchor protection against strong forces
        if HumanoidRootPart.Velocity.Magnitude > 200 then
            HumanoidRootPart.Anchored = true
            wait(0.2)
            HumanoidRootPart.Anchored = false
            forceField.Velocity = Vector3.new(0, 0, 0)
        end
        
        wait(0.1)
    end
end

-- Execute protection
spawn(setupAntiBlackHole)

-- Re-inject when character respawns
LocalPlayer.CharacterAdded:Connect(function()
    wait(1)
    setupAntiBlackHole()
end)

-- Additional workspace monitoring
workspace.ChildAdded:Connect(function(child)
    if child:IsA("Part") and child.BrickColor == BrickColor.new("Black") then
        wait(0.5)
        child:Destroy()
    end
end)-- The function that takes place when the button is pressed
   end,
})


local Button = Tab:CreateButton({
   Name = "Auto Report",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/CF-Trail/Auto-Report/main/revamp.lua'))() -- The function that takes place when the button is pressed
   end,
})
