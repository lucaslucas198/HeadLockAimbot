local _s=string.char
local _q1=game:GetService(_s(80,108,97,121,101,114,115))
local _q2=game:GetService(_s(82,117,110,83,101,114,118,105,99,101))
local _q3=game:GetService(_s(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _q4=_q1.LocalPlayer
local _q5=workspace.CurrentCamera
local _q6=_s(83,72,66,45,55,75,88,50,45,57,80,81,51)
local _q7=_s(72,76,65,95,75,101,121,46,116,120,116)
local _q8=_s(72,76,65,95,69,120,112)
local _q9=loadstring(game:HttpGet(_s(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,115,46,99,111,109,47,108,117,99,97,115,108,117,99,97,115,49,57,56,47,83,99,114,105,112,116,105,110,103,72,117,98,75,101,121,83,121,115,116,101,109,47,109,97,105,110,47,75,101,121,83,121,115,116,101,109,46,108,117,97)))()
local _qa
_q9.show({ScriptName=_s(72,101,97,100,32,76,111,99,107,32,65,105,109,98,111,116),KeyFile=_q7,ExpFile=_q8,IsFPS=true,ValidKey=_q6,OnSuccess=function()_qa()end})
_qa=function()
local _qb=loadstring(game:HttpGet(_s(104,116,116,112,115,58,47,47,115,105,114,105,117,115,46,109,101,110,117,47,114,97,121,102,105,101,108,100)))()
local _qc=_qb:CreateWindow({Name=_s(83,99,114,105,112,116,105,110,103,72,117,98,32,124,32,72,101,97,100,32,76,111,99,107,32,65,105,109,98,111,116),Icon=_s(99,114,111,115,115,104,97,105,114),LoadingTitle=_s(83,99,114,105,112,116,105,110,103,72,117,98),LoadingSubtitle=_s(72,101,97,100,32,76,111,99,107,32,65,105,109,98,111,116),Theme=_s(68,101,102,97,117,108,116),ToggleUIKeybind=_s(75),DisableRayfieldPrompts=false,DisableBuildWarnings=false,ConfigurationSaving={Enabled=true,FolderName=_s(83,99,114,105,112,116,105,110,103,72,117,98),FileName=_s(72,101,97,100,76,111,99,107,65,105,109,98,111,116)},Discord={Enabled=true,Invite=_s(85,77,113,56,110,117,81,100,98,88),RememberJoins=true}})
_qb:Notify({Title=_s(83,99,114,105,112,116,32,76,111,97,100,101,100,33),Content=_s(72,101,97,100,32,76,111,99,107,32,65,105,109,98,111,116,32,105,115,32,97,99,116,105,118,101,46,32,72,111,108,100,32,82,105,103,104,116,32,67,108,105,99,107,32,116,111,32,108,111,99,107,32,111,110,46),Duration=5,Image=_s(99,104,101,99,107,45,99,105,114,99,108,101)})
local _qd
local function _qe()
local _qf=nil local _q10=math.huge
local _q11=Vector2.new(_q5.ViewportSize.X/2,_q5.ViewportSize.Y/2)
for _,_q12 in ipairs(_q1:GetPlayers()) do
if _q12==_q4 then continue end
local _q13=_q12.Character if not _q13 then continue end
local _q14=_q13:FindFirstChild(_s(72,101,97,100))
local _q15=_q13:FindFirstChildOfClass(_s(72,117,109,97,110,111,105,100))
if not _q14 or not _q15 or _q15.Health<=0 then continue end
local _q16,_q17=_q5:WorldToScreenPoint(_q14.Position)
if not _q17 then continue end
local _q18=(Vector2.new(_q16.X,_q16.Y)-_q11).Magnitude
if _q18<_q10 then _q10=_q18 _qf=_q14 end
end
return _qf
end
local _q19=_qc:CreateTab(_s(65,105,109,98,111,116),_s(99,114,111,115,115,104,97,105,114))
_q19:CreateSection(_s(72,101,97,100,32,76,111,99,107))
local _q1a=true
_q19:CreateToggle({Name=_s(69,110,97,98,108,101,32,65,105,109,98,111,116),CurrentValue=true,Flag=_s(65,105,109,98,111,116,69,110,97,98,108,101,100),Callback=function(_q1b)_q1a=_q1b end})
_q3.InputBegan:Connect(function(_q1c,_q1d)
if _q1d then return end
if _q1c.UserInputType~=Enum.UserInputType.MouseButton2 then return end
if not _q1a then return end
_qd=_q2.RenderStepped:Connect(function()
local _q1e=_qe() if not _q1e then return end
_q5.CFrame=CFrame.lookAt(_q5.CFrame.Position,_q1e.Position)
end)
end)
_q3.InputEnded:Connect(function(_q1f)
if _q1f.UserInputType~=Enum.UserInputType.MouseButton2 then return end
if _qd then _qd:Disconnect() _qd=nil end
end)
end
