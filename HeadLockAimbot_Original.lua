local Players          = game:GetService("Players")
local RunService       = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService     = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Camera      = workspace.CurrentCamera

local VALID_KEY = "SHB-7KX2-9PQ3"
local KEY_FILE  = "HLA_Key.txt"
local EXP_FILE  = "HLA_Exp"

-- ScriptingHub premium key system
local SHK = loadstring(game:HttpGet("https://raw.githubusercontent.com/lucaslucas198/ScriptingHubKeySystem/main/KeySystem.lua"))()

local startScript  -- forward declared so OnSuccess can reference it

SHK.show({
    ScriptName  = "Head Lock Aimbot",
    KeyFile     = KEY_FILE,
    ExpFile     = EXP_FILE,
    IsFPS       = true,
    ValidKey    = VALID_KEY,
    OnSuccess   = function() startScript() end,
})

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
        local center  = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

        for _, player in ipairs(Players:GetPlayers()) do
            if player == LocalPlayer then continue end
            local char = player.Character
            if not char then continue end
            local head = char:FindFirstChild("Head")
            local hum  = char:FindFirstChildOfClass("Humanoid")
            if not head or not hum or hum.Health <= 0 then continue end
            local screenPos, onScreen = Camera:WorldToScreenPoint(head.Position)
            if not onScreen then continue end
            local dist = (Vector2.new(screenPos.X, screenPos.Y) - center).Magnitude
            if dist < minDist then
                minDist  = dist
                nearest  = head
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
