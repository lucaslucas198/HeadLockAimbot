local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local VALID_KEY = "SHB-7KX2-9PQ3"
local DISCORD = "https://discord.gg/UMq8nuQdbX"
local KEY_FILE = "HLA_Key.txt"
local EXP_FILE = "HLA_Exp"

-- 7-day expiry check (silent)
pcall(function()
    if isfile(EXP_FILE) then
        local t = tonumber(readfile(EXP_FILE))
        if t and os.time() - t > 604800 then
            delfile(EXP_FILE)
            if isfile(KEY_FILE) then delfile(KEY_FILE) end
        end
    end
end)

local function make(cls, props, parent)
    local o = Instance.new(cls)
    for k, v in pairs(props or {}) do o[k] = v end
    o.Parent = parent
    return o
end

local mouseFree = false
local keyFrameActive = true

RunService.RenderStepped:Connect(function()
    if keyFrameActive or mouseFree then
        UserInputService.MouseBehavior = Enum.MouseBehavior.Default
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.T then
        mouseFree = not mouseFree
        if not mouseFree then
            UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
        end
    end
end)

local ScreenGui = make("ScreenGui", {
    Name = "HLA_Key",
    ResetOnSpawn = false,
    DisplayOrder = 999,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
}, LocalPlayer:WaitForChild("PlayerGui"))

local KeyFrame = make("Frame", {
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.fromScale(0.5, 0.5),
    Size = UDim2.fromOffset(420, 260),
    BackgroundColor3 = Color3.fromRGB(18, 18, 28),
    BorderSizePixel = 0,
    Active = true,
}, ScreenGui)
make("UICorner", {CornerRadius = UDim.new(0, 12)}, KeyFrame)
make("UIStroke", {Color = Color3.fromRGB(0, 190, 255), Transparency = 0.15, Thickness = 1.5}, KeyFrame)

-- Drag handle (top bar)
local DragBar = make("Frame", {
    Size = UDim2.new(1, 0, 0, 36),
    BackgroundColor3 = Color3.fromRGB(13, 13, 22),
    BorderSizePixel = 0,
    ZIndex = 2,
}, KeyFrame)
make("UICorner", {CornerRadius = UDim.new(0, 12)}, DragBar)

make("TextLabel", {
    Position = UDim2.fromOffset(14, 8),
    Size = UDim2.new(1, -28, 0, 22),
    BackgroundTransparency = 1,
    Text = "ScriptingHub | Head Lock Aimbot",
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.GothamBold,
    TextSize = 15,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 3,
}, DragBar)

-- Dragging logic
local dragging, dragStart, startPos = false, nil, nil
DragBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = KeyFrame.Position
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        KeyFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
end)

-- Body content
make("TextLabel", {
    Position = UDim2.fromOffset(16, 44),
    Size = UDim2.new(1, -32, 0, 16),
    BackgroundTransparency = 1,
    Text = "Get the key from our Discord server.",
    TextColor3 = Color3.fromRGB(130, 140, 165),
    Font = Enum.Font.Gotham,
    TextSize = 13,
    TextXAlignment = Enum.TextXAlignment.Left,
}, KeyFrame)

local KeyBox = make("TextBox", {
    Position = UDim2.fromOffset(16, 68),
    Size = UDim2.new(1, -32, 0, 40),
    BackgroundColor3 = Color3.fromRGB(26, 28, 42),
    BorderSizePixel = 0,
    PlaceholderText = "Paste key here...",
    Text = "",
    TextColor3 = Color3.fromRGB(245, 245, 255),
    PlaceholderColor3 = Color3.fromRGB(90, 100, 125),
    Font = Enum.Font.GothamMedium,
    TextSize = 14,
    ClearTextOnFocus = false,
}, KeyFrame)
make("UICorner", {CornerRadius = UDim.new(0, 8)}, KeyBox)
make("UIStroke", {Color = Color3.fromRGB(50, 58, 82), Transparency = 0.3}, KeyBox)

-- Auto-fill saved key
pcall(function()
    if isfile(KEY_FILE) then KeyBox.Text = readfile(KEY_FILE) end
end)

local Status = make("TextLabel", {
    Position = UDim2.fromOffset(16, 114),
    Size = UDim2.new(1, -32, 0, 16),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Color3.fromRGB(255, 75, 75),
    Font = Enum.Font.Gotham,
    TextSize = 12,
    TextXAlignment = Enum.TextXAlignment.Left,
}, KeyFrame)

local BtnHolder = make("Frame", {
    Position = UDim2.fromOffset(16, 136),
    Size = UDim2.new(1, -32, 0, 40),
    BackgroundTransparency = 1,
}, KeyFrame)
make("UIListLayout", {
    FillDirection = Enum.FillDirection.Horizontal,
    Padding = UDim.new(0, 8),
    SortOrder = Enum.SortOrder.LayoutOrder,
}, BtnHolder)

local function makeBtn(text, width)
    local b = make("TextButton", {
        Size = UDim2.new(width or 0.333, width and 0 or -6, 1, 0),
        BackgroundColor3 = Color3.fromRGB(30, 32, 48),
        BorderSizePixel = 0,
        AutoButtonColor = false,
        Text = text,
        TextColor3 = Color3.fromRGB(235, 240, 255),
        Font = Enum.Font.GothamMedium,
        TextSize = 13,
    }, BtnHolder)
    make("UICorner", {CornerRadius = UDim.new(0, 8)}, b)
    make("UIStroke", {Color = Color3.fromRGB(60, 68, 95), Transparency = 0.4}, b)
    b.MouseEnter:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(40, 46, 68)}):Play()
    end)
    b.MouseLeave:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(30, 32, 48)}):Play()
    end)
    return b
end

local GetKeyBtn = makeBtn("Get Key")
local EnterBtn  = makeBtn("Enter Key")
local CloseBtn  = makeBtn("Close")

make("TextLabel", {
    Position = UDim2.fromOffset(16, 184),
    Size = UDim2.new(1, -32, 0, 14),
    BackgroundTransparency = 1,
    Text = "Press T to toggle mouse lock",
    TextColor3 = Color3.fromRGB(80, 92, 115),
    Font = Enum.Font.Gotham,
    TextSize = 11,
    TextXAlignment = Enum.TextXAlignment.Center,
}, KeyFrame)

make("TextLabel", {
    Position = UDim2.fromOffset(16, 200),
    Size = UDim2.new(1, -32, 0, 14),
    BackgroundTransparency = 1,
    Text = "discord.gg/UMq8nuQdbX",
    TextColor3 = Color3.fromRGB(0, 160, 220),
    Font = Enum.Font.Gotham,
    TextSize = 11,
    TextXAlignment = Enum.TextXAlignment.Center,
}, KeyFrame)

local startScript

local function tryKey()
    local key = KeyBox.Text:gsub("%s+", "")
    if key == VALID_KEY then
        pcall(function() writefile(KEY_FILE, key) end)
        task.defer(function()
            pcall(function()
                if not isfile(EXP_FILE) then writefile(EXP_FILE, tostring(os.time())) end
            end)
        end)
        keyFrameActive = false
        ScreenGui:Destroy()
        startScript()
    else
        Status.Text = "Invalid key. Get it from Discord."
        TweenService:Create(KeyFrame, TweenInfo.new(0.08, Enum.EasingStyle.Bounce), {
            Position = UDim2.new(KeyFrame.Position.X.Scale, KeyFrame.Position.X.Offset + 6, KeyFrame.Position.Y.Scale, KeyFrame.Position.Y.Offset)
        }):Play()
        task.delay(0.08, function()
            TweenService:Create(KeyFrame, TweenInfo.new(0.08, Enum.EasingStyle.Bounce), {
                Position = UDim2.new(KeyFrame.Position.X.Scale, KeyFrame.Position.X.Offset - 6, KeyFrame.Position.Y.Scale, KeyFrame.Position.Y.Offset)
            }):Play()
        end)
    end
end

GetKeyBtn.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(DISCORD) end)
    GetKeyBtn.Text = "Copied!"
    task.delay(2, function()
        if GetKeyBtn and GetKeyBtn.Parent then GetKeyBtn.Text = "Get Key" end
    end)
end)

EnterBtn.MouseButton1Click:Connect(tryKey)

CloseBtn.MouseButton1Click:Connect(function()
    keyFrameActive = false
    ScreenGui:Destroy()
end)

KeyBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then tryKey() end
end)

startScript = function()
    local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

    local Window = Rayfield:CreateWindow({
        Name = "ScriptingHub | Head Lock Aimbot",
        Icon = "crosshair",
        LoadingTitle = "ScriptingHub",
        LoadingSubtitle = "Head Lock Aimbot",
        Theme = "Default",
        ToggleUIKeybind = "K",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false,
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "ScriptingHub",
            FileName = "HeadLockAimbot"
        },
        Discord = {
            Enabled = true,
            Invite = "UMq8nuQdbX",
            RememberJoins = true
        },
    })

    Rayfield:Notify({
        Title = "Script Loaded!",
        Content = "Head Lock Aimbot is active. Hold Right Click to lock on.",
        Duration = 5,
        Image = "check-circle",
    })

    local connection

    local function getNearestHead()
        local nearest = nil
        local minDist = math.huge
        local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

        for _, player in ipairs(Players:GetPlayers()) do
            if player == LocalPlayer then continue end
            local char = player.Character
            if not char then continue end
            local head = char:FindFirstChild("Head")
            local hum = char:FindFirstChildOfClass("Humanoid")
            if not head or not hum or hum.Health <= 0 then continue end
            local screenPos, onScreen = Camera:WorldToScreenPoint(head.Position)
            if not onScreen then continue end
            local dist = (Vector2.new(screenPos.X, screenPos.Y) - center).Magnitude
            if dist < minDist then
                minDist = dist
                nearest = head
            end
        end
        return nearest
    end

    local MainTab = Window:CreateTab("Aimbot", "crosshair")
    MainTab:CreateSection("Head Lock")

    local aimbotEnabled = true
    MainTab:CreateToggle({
        Name = "Enable Aimbot",
        CurrentValue = true,
        Flag = "AimbotEnabled",
        Callback = function(v) aimbotEnabled = v end,
    })

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.UserInputType ~= Enum.UserInputType.MouseButton2 then return end
        if not aimbotEnabled then return end
        connection = RunService.RenderStepped:Connect(function()
            local head = getNearestHead()
            if not head then return end
            Camera.CFrame = CFrame.lookAt(Camera.CFrame.Position, head.Position)
        end)
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton2 then return end
        if connection then connection:Disconnect(); connection = nil end
    end)
end
