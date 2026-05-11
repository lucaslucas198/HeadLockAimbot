local _s=string.char
local _q1=_s(80,108,97,121,101,114,115)
local _q2=_s(82,117,110,83,101,114,118,105,99,101)
local _q3=_s(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101)
local _q4=_s(72,101,97,100)
local _q5=_s(72,117,109,97,110,111,105,100)
local _0x1=game:GetService(_q1)
local _0x2=game:GetService(_q2)
local _0x3=game:GetService(_q3)
local _0x4=_0x1.LocalPlayer
local _0x5=workspace.CurrentCamera
local _0x6
local function _f1()
local _a=nil;local _b=math.huge
local _c=Vector2.new(_0x5.ViewportSize.X/2,_0x5.ViewportSize.Y/2)
for _,_p in ipairs(_0x1:GetPlayers()) do
if _p==_0x4 then continue end
local _ch=_p.Character;if not _ch then continue end
local _h=_ch:FindFirstChild(_q4)
local _hm=_ch:FindFirstChildOfClass(_q5)
if not _h or not _hm or _hm.Health<=0 then continue end
local _sp,_on=_0x5:WorldToScreenPoint(_h.Position)
if not _on then continue end
local _d=(Vector2.new(_sp.X,_sp.Y)-_c).Magnitude
if _d<_b then _b=_d;_a=_h end
end
return _a
end
_0x3.InputBegan:Connect(function(_i,_gp)
if _gp then return end
if _i.UserInputType~=Enum.UserInputType.MouseButton2 then return end
_0x6=_0x2.RenderStepped:Connect(function()
local _h=_f1();if not _h then return end
_0x5.CFrame=CFrame.lookAt(_0x5.CFrame.Position,_h.Position)
end)
end)
_0x3.InputEnded:Connect(function(_i)
if _i.UserInputType~=Enum.UserInputType.MouseButton2 then return end
if _0x6 then _0x6:Disconnect();_0x6=nil end
end)
