local _s=string.char
local _q1=_s(80,108,97,121,101,114,115)
local _q2=_s(82,117,110,83,101,114,118,105,99,101)
local _q3=_s(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101)
local _q4=_s(84,119,101,101,110,83,101,114,118,105,99,101)
local _q5=_s(83,72,66,45,55,75,88,50,45,57,80,81,51)
local _q6=_s(104,116,116,112,115,58,47,47,100,105,115,99,111,114,100,46,103,103,47,85,77,113,56,110,117,81,100,98,88)
local _q7=_s(83,99,114,101,101,110,71,117,105)
local _q8=_s(72,101,97,100,76,111,99,107,75,101,121)
local _q9=_s(80,108,97,121,101,114,71,117,105)
local _qa=_s(70,114,97,109,101)
local _qb=_s(85,73,67,111,114,110,101,114)
local _qc=_s(85,73,83,116,114,111,107,101)
local _qd=_s(84,101,120,116,76,97,98,101,108)
local _qe=_s(84,101,120,116,66,111,120)
local _qf=_s(84,101,120,116,66,117,116,116,111,110)
local _qg=_s(85,73,76,105,115,116,76,97,121,111,117,116)
local _qh=_s(83,99,114,105,112,116,105,110,103,72,117,98,32,124,32,72,101,97,100,32,76,111,99,107)
local _qi=_s(71,101,116,32,116,104,101,32,107,101,121,32,102,114,111,109,32,111,117,114,32,68,105,115,99,111,114,100,32,115,101,114,118,101,114,46)
local _qj=_s(80,97,115,116,101,32,107,101,121,32,104,101,114,101,46,46,46)
local _qk=_s(67,111,112,121,32,68,105,115,99,111,114,100)
local _ql=_s(69,110,116,101,114,32,75,101,121)
local _qm=_s(73,110,118,97,108,105,100,32,107,101,121,46,32,71,101,116,32,105,116,32,102,114,111,109,32,68,105,115,99,111,114,100,46)
local _qn=_s(67,111,112,105,101,100,33)
local _qo=_s(37,115,43)
local _qp=_s(72,101,97,100)
local _qq=_s(72,117,109,97,110,111,105,100)
local _0x1=game:GetService(_q1)
local _0x2=game:GetService(_q2)
local _0x3=game:GetService(_q3)
local _0x4=game:GetService(_q4)
local _0x5=_0x1.LocalPlayer
local _0x6=workspace.CurrentCamera
local function _f1(_cn,_pr,_pa)local _o=Instance.new(_cn);for _k,_v in pairs(_pr or{}) do _o[_k]=_v end;_o.Parent=_pa;return _o end
local _0x7=_f1(_q7,{Name=_q8,ResetOnSpawn=false,DisplayOrder=999,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},_0x5:WaitForChild(_q9))
local _0x8=_f1(_qa,{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(400,210),BackgroundColor3=Color3.fromRGB(18,18,28),BorderSizePixel=0},_0x7)
_f1(_qb,{CornerRadius=UDim.new(0,10)},_0x8)
_f1(_qc,{Color=Color3.fromRGB(0,190,255),Transparency=0.2},_0x8)
_f1(_qd,{Position=UDim2.fromOffset(20,16),Size=UDim2.new(1,-40,0,26),BackgroundTransparency=1,Text=_qh,TextColor3=Color3.fromRGB(255,255,255),Font=Enum.Font.GothamBold,TextSize=18,TextXAlignment=Enum.TextXAlignment.Left},_0x8)
_f1(_qd,{Position=UDim2.fromOffset(20,44),Size=UDim2.new(1,-40,0,18),BackgroundTransparency=1,Text=_qi,TextColor3=Color3.fromRGB(140,150,175),Font=Enum.Font.Gotham,TextSize=13,TextXAlignment=Enum.TextXAlignment.Left},_0x8)
local _0x9=_f1(_qe,{Position=UDim2.fromOffset(20,74),Size=UDim2.new(1,-40,0,40),BackgroundColor3=Color3.fromRGB(28,30,43),BorderSizePixel=0,PlaceholderText=_qj,Text=_s(),TextColor3=Color3.fromRGB(245,245,255),PlaceholderColor3=Color3.fromRGB(100,110,135),Font=Enum.Font.GothamMedium,TextSize=14,ClearTextOnFocus=false},_0x8)
_f1(_qb,{CornerRadius=UDim.new(0,7)},_0x9)
local _0xa=_f1(_qd,{Position=UDim2.fromOffset(20,120),Size=UDim2.new(1,-40,0,16),BackgroundTransparency=1,Text=_s(),TextColor3=Color3.fromRGB(255,80,80),Font=Enum.Font.Gotham,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left},_0x8)
local _0xb=_f1(_qa,{Position=UDim2.fromOffset(20,142),Size=UDim2.new(1,-40,0,40),BackgroundTransparency=1},_0x8)
_f1(_qg,{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},_0xb)
local function _f2(_txt)
local _b=_f1(_qf,{Size=UDim2.new(0.5,-4,1,0),BackgroundColor3=Color3.fromRGB(32,34,48),BorderSizePixel=0,AutoButtonColor=false,Text=_txt,TextColor3=Color3.fromRGB(240,245,255),Font=Enum.Font.GothamMedium,TextSize=14},_0xb)
_f1(_qb,{CornerRadius=UDim.new(0,7)},_b)
_f1(_qc,{Color=Color3.fromRGB(64,70,92),Transparency=0.45},_b)
_b.MouseEnter:Connect(function()_0x4:Create(_b,TweenInfo.new(0.12),{BackgroundColor3=Color3.fromRGB(42,48,70)}):Play() end)
_b.MouseLeave:Connect(function()_0x4:Create(_b,TweenInfo.new(0.12),{BackgroundColor3=Color3.fromRGB(32,34,48)}):Play() end)
return _b
end
local _0xc=_f2(_qk)
local _0xd=_f2(_ql)
local _f3
local function _f4()
local _k=_0x9.Text:gsub(_qo,_s())
if _k==_q5 then _0x7:Destroy();_f3()
else _0xa.Text=_qm end
end
_0xc.MouseButton1Click:Connect(function()
pcall(function()setclipboard(_q6)end)
_0xc.Text=_qn
task.delay(2,function()if _0xc and _0xc.Parent then _0xc.Text=_qk end end)
end)
_0xd.MouseButton1Click:Connect(_f4)
_0x9.FocusLost:Connect(function(_ep)if _ep then _f4() end end)
_f3=function()
local _0xe
local function _f5()
local _a=nil;local _b=math.huge
local _c=Vector2.new(_0x6.ViewportSize.X/2,_0x6.ViewportSize.Y/2)
for _,_p in ipairs(_0x1:GetPlayers()) do
if _p==_0x5 then continue end
local _ch=_p.Character;if not _ch then continue end
local _h=_ch:FindFirstChild(_qp)
local _hm=_ch:FindFirstChildOfClass(_qq)
if not _h or not _hm or _hm.Health<=0 then continue end
local _sp,_on=_0x6:WorldToScreenPoint(_h.Position)
if not _on then continue end
local _d=(Vector2.new(_sp.X,_sp.Y)-_c).Magnitude
if _d<_b then _b=_d;_a=_h end
end
return _a
end
_0x3.InputBegan:Connect(function(_i,_gp)
if _gp then return end
if _i.UserInputType~=Enum.UserInputType.MouseButton2 then return end
_0xe=_0x2.RenderStepped:Connect(function()
local _h=_f5();if not _h then return end
_0x6.CFrame=CFrame.lookAt(_0x6.CFrame.Position,_h.Position)
end)
end)
_0x3.InputEnded:Connect(function(_i)
if _i.UserInputType~=Enum.UserInputType.MouseButton2 then return end
if _0xe then _0xe:Disconnect();_0xe=nil end
end)
end
