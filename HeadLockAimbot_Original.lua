local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local VALID_KEY = "SHB-7KX2-9PQ3"
local DISCORD = "https://discord.gg/UMq8nuQdbX"

local function make(cls, props, parent)
    local o = Instance.new(cls)
    for k, v in pairs(props or {}) do o[k] = v end
    o.Parent = parent
    return o
end

local mouseConn

local ScreenGui = make("ScreenGui", {
    Name = "HeadLockKey",
    ResetOnSpawn = false,
    DisplayOrder = 999,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
}, LocalPlayer:WaitForChild("PlayerGui"))

mouseConn = RunService.RenderStepped:Connect(function()
    UserInputService.MouseBehavior = Enum.MouseBehavior.Default
end)

local KeyFrame = make("Frame", {
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.fromScale(0.5, 0.5),
    Size = UDim2.fromOffset(400, 210),
    BackgroundColor3 = Color3.fromRGB(18, 18, 28),
    BorderSizePixel = 0,
}, ScreenGui)
make("UICorner", {CornerRadius = UDim.new(0, 10)}, KeyFrame)
make("UIStroke", {Color = Color3.fromRGB(0, 190, 255), Transparency = 0.2}, KeyFrame)

make("TextLabel", {
    Position = UDim2.fromOffset(20, 16),
    Size = UDim2.new(1, -40, 0, 26),
    BackgroundTransparency = 1,
    Text = "ScriptingHub | Head Lock",
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.GothamBold,
    TextSize = 18,
    TextXAlignment = Enum.TextXAlignment.Left,
}, KeyFrame)

make("TextLabel", {
    Position = UDim2.fromOffset(20, 44),
    Size = UDim2.new(1, -40, 0, 18),
    BackgroundTransparency = 1,
    Text = "Get the key from our Discord server.",
    TextColor3 = Color3.fromRGB(140, 150, 175),
    Font = Enum.Font.Gotham,
    TextSize = 13,
    TextXAlignment = Enum.TextXAlignment.Left,
}, KeyFrame)

local KeyBox = make("TextBox", {
    Position = UDim2.fromOffset(20, 74),
    Size = UDim2.new(1, -40, 0, 40),
    BackgroundColor3 = Color3.fromRGB(28, 30, 43),
    BorderSizePixel = 0,
    PlaceholderText = "Paste key here...",
    Text = "",
    TextColor3 = Color3.fromRGB(245, 245, 255),
    PlaceholderColor3 = Color3.fromRGB(100, 110, 135),
    Font = Enum.Font.GothamMedium,
    TextSize = 14,
    ClearTextOnFocus = false,
}, KeyFrame)
make("UICorner", {CornerRadius = UDim.new(0, 7)}, KeyBox)

local Status = make("TextLabel", {
    Position = UDim2.fromOffset(20, 120),
    Size = UDim2.new(1, -40, 0, 16),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Color3.fromRGB(255, 80, 80),
    Font = Enum.Font.Gotham,
    TextSize = 12,
    TextXAlignment = Enum.TextXAlignment.Left,
}, KeyFrame)

local BtnHolder = make("Frame", {
    Position = UDim2.fromOffset(20, 142),
    Size = UDim2.new(1, -40, 0, 40),
    BackgroundTransparency = 1,
}, KeyFrame)
make("UIListLayout", {
    FillDirection = Enum.FillDirection.Horizontal,
    Padding = UDim.new(0, 8),
    SortOrder = Enum.SortOrder.LayoutOrder,
}, BtnHolder)

local function makeBtn(text)
    local b = make("TextButton", {
        Size = UDim2.new(0.5, -4, 1, 0),
        BackgroundColor3 = Color3.fromRGB(32, 34, 48),
        BorderSizePixel = 0,
        AutoButtonColor = false,
        Text = text,
        TextColor3 = Color3.fromRGB(240, 245, 255),
        Font = Enum.Font.GothamMedium,
        TextSize = 14,
    }, BtnHolder)
    make("UICorner", {CornerRadius = UDim.new(0, 7)}, b)
    make("UIStroke", {Color = Color3.fromRGB(64, 70, 92), Transparency = 0.45}, b)
    b.MouseEnter:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.12), {BackgroundColor3 = Color3.fromRGB(42, 48, 70)}):Play()
    end)
    b.MouseLeave:Connect(function()
        TweenService:Create(b, TweenInfo.new(0.12), {BackgroundColor3 = Color3.fromRGB(32, 34, 48)}):Play()
    end)
    return b
end

local CopyBtn = makeBtn("Copy Discord")
local EnterBtn = makeBtn("Enter Key")

local startScript

local function tryKey()
    local key = KeyBox.Text:gsub("%s+", "")
    if key == VALID_KEY then
        mouseConn:Disconnect()
        ScreenGui:Destroy()
        startScript()
    else
        Status.Text = "Invalid key. Get it from Discord."
    end
end

CopyBtn.MouseButton1Click:Connect(function()
    pcall(function() setclipboard(DISCORD) end)
    CopyBtn.Text = "Copied!"
    task.delay(2, function()
        if CopyBtn and CopyBtn.Parent then CopyBtn.Text = "Copy Discord" end
    end)
end)

EnterBtn.MouseButton1Click:Connect(tryKey)

KeyBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then tryKey() end
end)

startScript = function()
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

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.UserInputType ~= Enum.UserInputType.MouseButton2 then return end
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
