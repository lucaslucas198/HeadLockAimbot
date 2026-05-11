local _s=string.char
local _q1=_s(80,108,97,121,101,114,115)
local _q2=_s(82,117,110,83,101,114,118,105,99,101)
local _q3=_s(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101)
local _q4=_s(84,119,101,101,110,83,101,114,118,105,99,101)
local _q5=_s(83,72,66,45,55,75,88,50,45,57,80,81,51)
local _q6=_s(104,116,116,112,115,58,47,47,100,105,115,99,111,114,100,46,103,103,47,85,77,113,56,110,117,81,100,98,88)
local _q7=_s(72,76,65,95,75,101,121,46,116,120,116)
local _q8=_s(72,76,65,95,69,120,112)
local _q9=_s(83,99,114,101,101,110,71,117,105)
local _qa=_s(72,76,65,95,75,101,121)
local _qb=_s(80,108,97,121,101,114,71,117,105)
local _qc=_s(70,114,97,109,101)
local _qd=_s(85,73,67,111,114,110,101,114)
local _qe=_s(85,73,83,116,114,111,107,101)
local _qf=_s(84,101,120,116,76,97,98,101,108)
local _qg=_s(84,101,120,116,66,111,120)
local _qh=_s(84,101,120,116,66,117,116,116,111,110)
local _qi=_s(85,73,76,105,115,116,76,97,121,111,117,116)
local _qj=_s(83,99,114,105,112,116,105,110,103,72,117,98,32,124,32,72,101,97,100,32,76,111,99,107,32,65,105,109,98,111,116)
local _qk=_s(71,101,116,32,116,104,101,32,107,101,121,32,102,114,111,109,32,111,117,114,32,68,105,115,99,111,114,100,32,115,101,114,118,101,114,46)
local _ql=_s(80,97,115,116,101,32,107,101,121,32,104,101,114,101,46,46,46)
local _qm=_s(73,110,118,97,108,105,100,32,107,101,121,46,32,71,101,116,32,105,116,32,102,114,111,109,32,68,105,115,99,111,114,100,46)
local _qn=_s(71,101,116,32,75,101,121)
local _qo=_s(67,111,112,105,101,100,33)
local _qp=_s(69,110,116,101,114,32,75,101,121)
local _qq=_s(67,108,111,115,101)
local _qr=_s(80,114,101,115,115,32,84,32,116,111,32,116,111,103,103,108,101,32,109,111,117,115,101,32,108,111,99,107)
local _qs=_s(100,105,115,99,111,114,100,46,103,103,47,85,77,113,56,110,117,81,100,98,88)
local _qt=_s(37,115,43)
local _qu=_s(72,101,97,100)
local _qv=_s(72,117,109,97,110,111,105,100)
local _qw=_s(104,116,116,112,115,58,47,47,115,105,114,105,117,115,46,109,101,110,117,47,114,97,121,102,105,101,108,100)
local _qx=_s(83,99,114,105,112,116,76,111,97,100,101,100,33)
local _qy=_s(72,101,97,100,32,76,111,99,107,32,65,105,109,98,111,116,32,105,115,32,97,99,116,105,118,101,46,32,72,111,108,100,32,82,105,103,104,116,32,67,108,105,99,107,32,116,111,32,108,111,99,107,32,111,110,46)
local _qz=_s(99,104,101,99,107,45,99,105,114,99,108,101)
local _r1=_s(83,99,114,105,112,116,105,110,103,72,117,98,32,124,32,72,105,116,98,111,120,32,69,120,116,101,110,100,101,114)
local _r2=_s(99,114,111,115,115,104,97,105,114)
local _r3=_s(83,99,114,105,112,116,105,110,103,72,117,98)
local _r4=_s(72,101,97,100,32,76,111,99,107,32,65,105,109,98,111,116)
local _r5=_s(83,99,114,105,112,116,105,110,103,72,117,98)
local _r6=_s(72,101,97,100,76,111,99,107,65,105,109,98,111,116)
local _r7=_s(85,77,113,56,110,117,81,100,98,88)
local _r8=_s(65,105,109,98,111,116)
local _r9=_s(65,105,109,98,111,116,69,110,97,98,108,101,100)
local _ra=_s(69,110,97,98,108,101,32,65,105,109,98,111,116)
local _0x1=game:GetService(_q1)
local _0x2=game:GetService(_q2)
local _0x3=game:GetService(_q3)
local _0x4=game:GetService(_q4)
local _0x5=_0x1.LocalPlayer
local _0x6=workspace.CurrentCamera
local function _f1(_cn,_pr,_pa)local _o=Instance.new(_cn);for _k,_v in pairs(_pr or{})do _o[_k]=_v end;_o.Parent=_pa;return _o end
local _0xf=false
local _0xg=true
pcall(function()
if isfile(_q8)then
local _t=tonumber(readfile(_q8))
if _t and os.time()-_t>604800 then
delfile(_q8)
if isfile(_q7)then delfile(_q7)end
end
end
end)
_0x2.RenderStepped:Connect(function()if _0xg or _0xf then _0x3.MouseBehavior=Enum.MouseBehavior.Default end end)
_0x3.InputBegan:Connect(function(_i,_gp)
if _gp then return end
if _i.KeyCode==Enum.KeyCode.T then _0xf=not _0xf;if not _0xf then _0x3.MouseBehavior=Enum.MouseBehavior.LockCenter end end
end)
local _0x7=_f1(_q9,{Name=_qa,ResetOnSpawn=false,DisplayOrder=999,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},_0x5:WaitForChild(_qb))
local _0x8=_f1(_qc,{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.fromScale(0.5,0.5),Size=UDim2.fromOffset(420,260),BackgroundColor3=Color3.fromRGB(18,18,28),BorderSizePixel=0,Active=true},_0x7)
_f1(_qd,{CornerRadius=UDim.new(0,12)},_0x8)
_f1(_qe,{Color=Color3.fromRGB(0,190,255),Transparency=0.15,Thickness=1.5},_0x8)
local _0x9=_f1(_qc,{Size=UDim2.new(1,0,0,36),BackgroundColor3=Color3.fromRGB(13,13,22),BorderSizePixel=0,ZIndex=2},_0x8)
_f1(_qd,{CornerRadius=UDim.new(0,12)},_0x9)
_f1(_qf,{Position=UDim2.fromOffset(14,8),Size=UDim2.new(1,-28,0,22),BackgroundTransparency=1,Text=_qj,TextColor3=Color3.fromRGB(255,255,255),Font=Enum.Font.GothamBold,TextSize=15,TextXAlignment=Enum.TextXAlignment.Left,ZIndex=3},_0x9)
local _0xd1=false;local _0xd2=nil;local _0xd3=nil
_0x9.InputBegan:Connect(function(_i)if _i.UserInputType==Enum.UserInputType.MouseButton1 then _0xd1=true;_0xd2=_i.Position;_0xd3=_0x8.Position end end)
_0x3.InputChanged:Connect(function(_i)if _0xd1 and _i.UserInputType==Enum.UserInputType.MouseMovement then local _d=_i.Position-_0xd2;_0x8.Position=UDim2.new(_0xd3.X.Scale,_0xd3.X.Offset+_d.X,_0xd3.Y.Scale,_0xd3.Y.Offset+_d.Y)end end)
_0x3.InputEnded:Connect(function(_i)if _i.UserInputType==Enum.UserInputType.MouseButton1 then _0xd1=false end end)
_f1(_qf,{Position=UDim2.fromOffset(16,44),Size=UDim2.new(1,-32,0,16),BackgroundTransparency=1,Text=_qk,TextColor3=Color3.fromRGB(130,140,165),Font=Enum.Font.Gotham,TextSize=13,TextXAlignment=Enum.TextXAlignment.Left},_0x8)
local _0xa=_f1(_qg,{Position=UDim2.fromOffset(16,68),Size=UDim2.new(1,-32,0,40),BackgroundColor3=Color3.fromRGB(26,28,42),BorderSizePixel=0,PlaceholderText=_ql,Text=_s(),TextColor3=Color3.fromRGB(245,245,255),PlaceholderColor3=Color3.fromRGB(90,100,125),Font=Enum.Font.GothamMedium,TextSize=14,ClearTextOnFocus=false},_0x8)
_f1(_qd,{CornerRadius=UDim.new(0,8)},_0xa)
_f1(_qe,{Color=Color3.fromRGB(50,58,82),Transparency=0.3},_0xa)
pcall(function()if isfile(_q7)then _0xa.Text=readfile(_q7)end end)
local _0xb=_f1(_qf,{Position=UDim2.fromOffset(16,114),Size=UDim2.new(1,-32,0,16),BackgroundTransparency=1,Text=_s(),TextColor3=Color3.fromRGB(255,75,75),Font=Enum.Font.Gotham,TextSize=12,TextXAlignment=Enum.TextXAlignment.Left},_0x8)
local _0xc=_f1(_qc,{Position=UDim2.fromOffset(16,136),Size=UDim2.new(1,-32,0,40),BackgroundTransparency=1},_0x8)
_f1(_qi,{FillDirection=Enum.FillDirection.Horizontal,Padding=UDim.new(0,8),SortOrder=Enum.SortOrder.LayoutOrder},_0xc)
local function _f2(_txt)
local _b=_f1(_qh,{Size=UDim2.new(0.333,-6,1,0),BackgroundColor3=Color3.fromRGB(30,32,48),BorderSizePixel=0,AutoButtonColor=false,Text=_txt,TextColor3=Color3.fromRGB(235,240,255),Font=Enum.Font.GothamMedium,TextSize=13},_0xc)
_f1(_qd,{CornerRadius=UDim.new(0,8)},_b)
_f1(_qe,{Color=Color3.fromRGB(60,68,95),Transparency=0.4},_b)
_b.MouseEnter:Connect(function()_0x4:Create(_b,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(40,46,68)}):Play()end)
_b.MouseLeave:Connect(function()_0x4:Create(_b,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(30,32,48)}):Play()end)
return _b
end
local _0xe=_f2(_qn)
local _0xh=_f2(_qp)
local _0xi=_f2(_qq)
_f1(_qf,{Position=UDim2.fromOffset(16,184),Size=UDim2.new(1,-32,0,14),BackgroundTransparency=1,Text=_qr,TextColor3=Color3.fromRGB(80,92,115),Font=Enum.Font.Gotham,TextSize=11,TextXAlignment=Enum.TextXAlignment.Center},_0x8)
_f1(_qf,{Position=UDim2.fromOffset(16,200),Size=UDim2.new(1,-32,0,14),BackgroundTransparency=1,Text=_qs,TextColor3=Color3.fromRGB(0,160,220),Font=Enum.Font.Gotham,TextSize=11,TextXAlignment=Enum.TextXAlignment.Center},_0x8)
local _f3
local function _f4()
local _k=_0xa.Text:gsub(_qt,_s())
if _k==_q5 then
pcall(function()writefile(_q7,_k)end)
task.defer(function()pcall(function()if not isfile(_q8)then writefile(_q8,tostring(os.time()))end end)end)
_0xg=false;_0x7:Destroy();_f3()
else
_0xb.Text=_qm
_0x4:Create(_0x8,TweenInfo.new(0.08,Enum.EasingStyle.Bounce),{Position=UDim2.new(_0x8.Position.X.Scale,_0x8.Position.X.Offset+6,_0x8.Position.Y.Scale,_0x8.Position.Y.Offset)}):Play()
task.delay(0.08,function()_0x4:Create(_0x8,TweenInfo.new(0.08,Enum.EasingStyle.Bounce),{Position=UDim2.new(_0x8.Position.X.Scale,_0x8.Position.X.Offset-6,_0x8.Position.Y.Scale,_0x8.Position.Y.Offset)}):Play()end)
end
end
_0xe.MouseButton1Click:Connect(function()
pcall(function()setclipboard(_q6)end)
_0xe.Text=_qo
task.delay(2,function()if _0xe and _0xe.Parent then _0xe.Text=_qn end end)
end)
_0xh.MouseButton1Click:Connect(_f4)
_0xi.MouseButton1Click:Connect(function()_0xg=false;_0x7:Destroy()end)
_0xa.FocusLost:Connect(function(_ep)if _ep then _f4()end end)
_f3=function()
local _0xRF=loadstring(game:HttpGet(_qw))()
local _0xW=_0xRF:CreateWindow({Name=_r1,Icon=_r2,LoadingTitle=_r3,LoadingSubtitle=_r4,Theme=_s(68,101,102,97,117,108,116),ToggleUIKeybind=_s(75),DisableRayfieldPrompts=false,DisableBuildWarnings=false,ConfigurationSaving={Enabled=true,FolderName=_r5,FileName=_r6},Discord={Enabled=true,Invite=_r7,RememberJoins=true}})
_0xRF:Notify({Title=_qx,Content=_qy,Duration=5,Image=_qz})
local _0xco=nil
local function _f5()
local _a=nil;local _b=math.huge
local _c=Vector2.new(_0x6.ViewportSize.X/2,_0x6.ViewportSize.Y/2)
for _,_p in ipairs(_0x1:GetPlayers())do
if _p==_0x5 then continue end
local _ch=_p.Character;if not _ch then continue end
local _h=_ch:FindFirstChild(_qu)
local _hm=_ch:FindFirstChildOfClass(_qv)
if not _h or not _hm or _hm.Health<=0 then continue end
local _sp,_on=_0x6:WorldToScreenPoint(_h.Position)
if not _on then continue end
local _d=(Vector2.new(_sp.X,_sp.Y)-_c).Magnitude
if _d<_b then _b=_d;_a=_h end
end
return _a
end
local _0xT=_0xW:CreateTab(_r8,_r2)
_0xT:CreateSection(_r8)
local _0xAE=true
_0xT:CreateToggle({Name=_ra,CurrentValue=true,Flag=_r9,Callback=function(_v)_0xAE=_v end})
_0x3.InputBegan:Connect(function(_i,_gp)
if _gp then return end
if _i.UserInputType~=Enum.UserInputType.MouseButton2 then return end
if not _0xAE then return end
_0xco=_0x2.RenderStepped:Connect(function()
local _h=_f5();if not _h then return end
_0x6.CFrame=CFrame.lookAt(_0x6.CFrame.Position,_h.Position)
end)
end)
_0x3.InputEnded:Connect(function(_i)
if _i.UserInputType~=Enum.UserInputType.MouseButton2 then return end
if _0xco then _0xco:Disconnect();_0xco=nil end
end)
end
