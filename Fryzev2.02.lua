if not game:IsLoaded() then game.Loaded:Wait() end

-- [ SERVICES & GLOBALS ] --
local g = game.GetService
local P, TS, RS, UIS, L, HS, CG, RepS = g(game, "Players"), g(game, "TweenService"), g(game, "RunService"), g(game, "UserInputService"), g(game, "Lighting"), g(game, "HttpService"), g(game, "CoreGui"), g(game, "ReplicatedStorage")
local lp = P.LocalPlayer
local Cam = workspace.CurrentCamera
local c3, u2, ud, v2, v3, E = Color3.fromRGB, UDim2.new, UDim.new, Vector2.new, Vector3.new, Enum
local mMin, mMax, mClamp, mFloor = math.min, math.max, math.clamp, math.floor

local TARGET_ID = 114234929420007
local isCorrectGame = (game.PlaceId == TARGET_ID or game.GameId == TARGET_ID)

local function rS() 
    local s="" for i=1,math.random(12,24) do s=s..string.char(math.random(97,122)) end return s 
end

local function new(c, p) 
    local o = Instance.new(c)
    if p then 
        for k, v in pairs(p) do 
            if k == "Parent" then o.Parent = v else pcall(function() o[k] = v end) end 
        end 
    end 
    return o 
end

local function tw(o, i, p) 
    local t = TS:Create(o, TweenInfo.new(unpack(i)), p) 
    t:Play() 
    return t 
end

if getgenv()._FzN then pcall(function() getgenv()._FzN:Destroy() end) end

-- [ LOADER UI ] --
local lSg = new("ScreenGui", {Parent = CG, ZIndexBehavior = E.ZIndexBehavior.Sibling, Name = rS(), ResetOnSpawn = false, IgnoreGuiInset = true})
getgenv()._FzN = lSg

local nf = new("Frame", {Parent = lSg, Size = u2(0, 340, 0, 80), Position = u2(0.5, -170, 1, 100), BackgroundColor3 = c3(11, 13, 20), BorderSizePixel = 0, ClipsDescendants = true, Name = rS()})
new("UICorner", {Parent = nf, CornerRadius = ud(0, 14)})
new("UIStroke", {Parent = nf, Thickness = 1.7, Color = c3(0, 0, 0), ApplyStrokeMode = E.ApplyStrokeMode.Border})

local osL = new("UIStroke", {Parent = nf, Thickness = 1.5, ApplyStrokeMode = E.ApplyStrokeMode.Border})
new("UIGradient", {Parent = osL, Color = ColorSequence.new({ColorSequenceKeypoint.new(0, c3(195, 140, 250)), ColorSequenceKeypoint.new(.25, c3(90, 70, 135)), ColorSequenceKeypoint.new(.5, c3(25, 28, 40)), ColorSequenceKeypoint.new(.75, c3(90, 70, 135)), ColorSequenceKeypoint.new(1, c3(195, 140, 250))})})

local gfL = new("Frame", {Parent = nf, Size = u2(1, 0, 1, 0), BackgroundColor3 = c3(255, 255, 255), BackgroundTransparency = 0, BorderSizePixel = 0, ZIndex = 1, Name = rS()})
new("UICorner", {Parent = gfL, CornerRadius = ud(0, 14)})
new("UIGradient", {Parent = gfL, Rotation = 45, Color = ColorSequence.new({ColorSequenceKeypoint.new(0, c3(190, 100, 255)), ColorSequenceKeypoint.new(.2, c3(230, 80, 210)), ColorSequenceKeypoint.new(.5, c3(11, 13, 20)), ColorSequenceKeypoint.new(1, c3(11, 13, 20))}), Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, .75), NumberSequenceKeypoint.new(.86, 1), NumberSequenceKeypoint.new(1, 1)})})

local tB_L = new("Frame", {Parent = nf, Size = u2(1, -12, 1, -12), Position = u2(0, 6, 0, 6), BackgroundTransparency = 1, ZIndex = 3, Name = rS()})

local function t(x, f, s, c, p, sz)
    new("TextLabel", {Parent = tB_L, Name = rS(), Text = x, Font = f, TextSize = s, TextColor3 = c, BackgroundTransparency = 1, Position = p, Size = sz, TextXAlignment = E.TextXAlignment.Center, ZIndex = 3, TextScaled = true})
end

t("Fryze.lol", E.Font.GothamBold, 15, c3(235, 235, 235), u2(0, 0, 0, -2), u2(1, 0, 0, 18))
t("BloxStrike | V2.02", E.Font.GothamMedium, 12, c3(175, 120, 205), u2(0, 0, 0, 16), u2(1, 0, 0, 14))

if isCorrectGame then
    t("Loaded Fryze V2.02 Report Any Bugs To Our Discord.", E.Font.GothamBold, 11, c3(235, 235, 235), u2(0, 0, 0, 47), u2(1, 0, 0, 18))
else
    t("This Script Is Made For BloxStrike.", E.Font.GothamBold, 12, c3(235, 235, 235), u2(0, 0, 0, 47), u2(1, 0, 0, 18))
end

local dL_L = new("Frame", {Parent = nf, Size = u2(1, -16, 0, 1), Position = u2(0, 8, 0, 42), BackgroundColor3 = c3(255, 255, 255), BorderSizePixel = 0, ZIndex = 3, Name = rS()})
new("UIGradient", {Parent = dL_L, Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(.2, .2), NumberSequenceKeypoint.new(.5, 0), NumberSequenceKeypoint.new(.8, .2), NumberSequenceKeypoint.new(1, 1)})})

task.spawn(function()
    ts = TS:Create(nf, TweenInfo.new(0.4, E.EasingStyle.Back, E.EasingDirection.Out), {Position = u2(.5, -170, 1, -95)})
    ts:Play()
    task.wait(4.5)
    ts = TS:Create(nf, TweenInfo.new(0.3, E.EasingStyle.Quart, E.EasingDirection.In), {Position = u2(.5, -170, 1, 100)})
    ts:Play()
    task.wait(0.3)
    lSg:Destroy()
end)

-- [ MAIN SCRIPT ] --
if not isCorrectGame then return end

task.spawn(function()
print("[Fryze] Loaded Build V2.02 | Super Awesome Enjoy!")
local nM = {T=rS(),SR=rS(),F=rS(),Th=rS(),VL=rS(),DB=rS(),TB=rS(),RF=rS(),OB=rS(),Del=rS(),Txt=rS()}
local conns, espI, mHeads = {}, getgenv().ParsaEspInstances or {}, {}
getgenv().ParsaEspInstances = espI
if getgenv().FryzeGUI_Final then pcall(function() getgenv().FryzeGUI_Final:Destroy() end) end

local Cfg, cDir = {}, "FryzeConfigs"
pcall(function() if isfolder and not isfolder(cDir) then makefolder(cDir) end end)

local sDrag = false
local bg, wt, ft, dp, sub, ap = c3(11,13,20), c3(235,235,235), c3(175,120,205), c3(15,18,27), c3(22,26,36), c3(180,100,240)
local acc = ap
local sg = new("ScreenGui", {Parent=CG, ZIndexBehavior=E.ZIndexBehavior.Sibling, Name=rS(), ResetOnSpawn=false, IgnoreGuiInset=true})
getgenv().FryzeGUI_Final = sg

local out = new("Frame", {Parent=sg, Size=u2(0,570,0,380), Position=u2(0.5,-285,0.5,-190), BackgroundColor3=bg, BorderSizePixel=0, Name=rS(), ClipsDescendants=true})
new("UICorner", {Parent=out, CornerRadius=ud(0,14)})
local gf = new("Frame", {Parent=out, Size=u2(1,0,1,0), BackgroundColor3=c3(255,255,255), BorderSizePixel=0, Name=rS(), ZIndex=1})
new("UICorner", {Parent=gf, CornerRadius=ud(0,14)})
new("UIGradient", {Parent=gf, Rotation=45, Color=ColorSequence.new({ColorSequenceKeypoint.new(0,c3(190,100,255)), ColorSequenceKeypoint.new(0.2,c3(230,80,210)), ColorSequenceKeypoint.new(0.5,c3(11,13,20)), ColorSequenceKeypoint.new(1,c3(11,13,20))}), Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0.75), NumberSequenceKeypoint.new(0.86,1), NumberSequenceKeypoint.new(1,1)})})
new("UIStroke", {Parent=out, Thickness=1.7, Color=c3(0,0,0), ApplyStrokeMode=E.ApplyStrokeMode.Border})

local os = new("UIStroke", {Parent=out, Thickness=1.5, ApplyStrokeMode=E.ApplyStrokeMode.Border})
local og = new("UIGradient", {Parent=os, Color=ColorSequence.new({ColorSequenceKeypoint.new(0,c3(195,140,250)), ColorSequenceKeypoint.new(0.25,c3(90,70,135)), ColorSequenceKeypoint.new(0.5,c3(25,28,40)), ColorSequenceKeypoint.new(0.75,c3(90,70,135)), ColorSequenceKeypoint.new(1,c3(195,140,250))})})
table.insert(conns, RS.RenderStepped:Connect(function(dt) og.Rotation=(og.Rotation+35*dt)%360 end))

do 
    local drg, dIn, dSt, sPos
    out.InputBegan:Connect(function(i) 
        if i.UserInputType==E.UserInputType.MouseButton1 or i.UserInputType==E.UserInputType.Touch then 
            local mP=UIS:GetMouseLocation()
            local cD=true
            for _,o in ipairs(CG:GetGuiObjectsAtPosition(mP.X,mP.Y)) do 
                local c=o
                while c and c~=out do 
                    if c.Name==nM.T or c.Name==nM.SR or c.Name==nM.F or c.Name==nM.Th or c.Name==nM.VL or c.Name==nM.DB or c.Name==nM.TB or c:IsA("TextButton") or c:IsA("TextBox") then cD=false break end
                    c=c.Parent 
                end
                if not cD then break end 
            end
            if cD and not sDrag then 
                drg, dSt, sPos = true, i.Position, out.Position
                i.Changed:Connect(function() if i.UserInputState==E.UserInputState.End then drg=false end end) 
            end 
        end 
    end)
    out.InputChanged:Connect(function(i) if i.UserInputType==E.UserInputType.MouseMovement or i.UserInputType==E.UserInputType.Touch then dIn=i end end)
    table.insert(conns, UIS.InputChanged:Connect(function(i) if i==dIn and drg and not sDrag then local d=i.Position-dSt out.Position=u2(sPos.X.Scale,sPos.X.Offset+d.X,sPos.Y.Scale,sPos.Y.Offset+d.Y) end end)) 
end

local sb = new("Frame", {Parent=out, Size=u2(0,190,1,-16), Position=u2(0,8,0,8), BackgroundColor3=dp, BorderSizePixel=0, Name=rS(), ZIndex=2})
new("UICorner", {Parent=sb, CornerRadius=ud(0,10)})
new("UIStroke", {Parent=sb, Color=c3(25,29,39), Thickness=1})
local tB = new("Frame", {Parent=sb, Size=u2(1,-12,0,44), Position=u2(0,6,0,8), BackgroundTransparency=1, ZIndex=3})
new("TextLabel", {Parent=tB, Text="Fryze.lol", Font=E.Font.GothamBold, TextSize=16, TextColor3=wt, BackgroundTransparency=1, Position=u2(0,0,0,2), Size=u2(1,0,0,18), TextXAlignment=E.TextXAlignment.Center, ZIndex=3})
new("TextLabel", {Parent=tB, Text="BloxStrike | V2.02", Font=E.Font.GothamMedium, TextSize=12, TextColor3=ft, BackgroundTransparency=1, Position=u2(0,0,0,22), Size=u2(1,0,0,14), TextXAlignment=E.TextXAlignment.Center, ZIndex=3})
local dL = new("Frame", {Parent=sb, Size=u2(1,-16,0,1), Position=u2(0,8,0,56), BackgroundColor3=c3(255,255,255), BorderSizePixel=0, ZIndex=3})
new("UIGradient", {Parent=dL, Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1), NumberSequenceKeypoint.new(0.2,0.2), NumberSequenceKeypoint.new(0.5,0), NumberSequenceKeypoint.new(0.8,0.2), NumberSequenceKeypoint.new(1,1)})})

local mA = new("Frame", {Parent=out, Size=u2(1,-212,1,-16), Position=u2(0,204,0,8), BackgroundTransparency=1, Name=rS(), ZIndex=2})
local pC = new("Frame", {Parent=mA, Size=u2(1,0,1,0), BackgroundTransparency=1, ClipsDescendants=true, ZIndex=2})
local tabs, cTab, iT = {}, nil, false

local function swT(tN) 
    if cTab==tN or iT then return end; iT=true
    local oT=cTab; cTab=tN
    if oT and tabs[oT] then 
        local oC=tabs[oT].C
        tw(oC,{0.12,E.EasingStyle.Quart,E.EasingDirection.Out},{GroupTransparency=1,Position=u2(0,0,0,-6)})
        task.delay(0.12,function() oC.Visible=false end) 
    end
    local nC=tabs[tN].C
    nC.Visible, nC.Position, nC.GroupTransparency = true, u2(0,0,0,6), 1
    task.delay(oT and 0.05 or 0,function() 
        tw(nC,{0.15,E.EasingStyle.Quart,E.EasingDirection.Out},{GroupTransparency=0,Position=u2(0,0,0,0)})
        task.delay(0.15,function() iT=false end) 
    end)
    for n,d in pairs(tabs) do 
        local t=(n==tN)
        tw(d.AB,{0.12,E.EasingStyle.Quad},{BackgroundTransparency=t and 0 or 1})
        tw(d.S,{0.12,E.EasingStyle.Quad},{Transparency=t and 1 or 0})
        tw(d.I,{0.12,E.EasingStyle.Quad},{ImageColor3=t and wt or c3(200,200,200)})
        tw(d.L,{0.12,E.EasingStyle.Quad},{TextColor3=wt}) 
    end 
end

local tabIconSize = 19
local tY=64
local function cT(tN,aI,lI) 
    local b = new("TextButton", {Parent=sb, Size=u2(1,-14,0,30), Position=u2(0,7,0,tY), BackgroundColor3=sub, BorderSizePixel=0, AutoButtonColor=false, Text="", ClipsDescendants=true, ZIndex=3})
    new("UICorner", {Parent=b, CornerRadius=ud(0,6)})
    local s = new("UIStroke", {Parent=b, Color=c3(30,34,46), Thickness=0.8})
    local ab = new("Frame", {Parent=b, Size=u2(1,0,1,0), BackgroundColor3=c3(255,255,255), BorderSizePixel=0, BackgroundTransparency=1, ZIndex=3})
    new("UICorner", {Parent=ab, CornerRadius=ud(0,6)})
    new("UIGradient", {Parent=ab, Rotation=90, Color=ColorSequence.new({ColorSequenceKeypoint.new(0,c3(135,80,190)), ColorSequenceKeypoint.new(1,c3(90,40,140))})})
    local i = new("ImageLabel", {Parent=b, Size=u2(0,tabIconSize,0,tabIconSize), Position=u2(0,8,0.5,-tabIconSize/2), BackgroundTransparency=1, Image="rbxassetid://"..tostring(aI), ImageColor3=c3(200,200,200), ZIndex=4})
    local l = new("TextLabel", {Parent=b, Size=u2(1,-32,1,0), Position=u2(0,32,0,0), Text=tN, Font=E.Font.GothamBold, TextSize=13.5, TextColor3=wt, BackgroundTransparency=1, TextXAlignment=E.TextXAlignment.Left, ZIndex=4})
    local cg = new("CanvasGroup", {Parent=pC, Size=u2(1,0,1,0), BackgroundTransparency=1, GroupTransparency=1, Visible=false, ZIndex=3})
    local pS = new("ScrollingFrame", {Parent=cg, Size=u2(1,0,1,0), BackgroundTransparency=1, BorderSizePixel=0, CanvasSize=u2(0,0,0,420), ScrollBarThickness=3, ScrollBarImageColor3=c3(135,80,185), ZIndex=3})
    tabs[tN] = {B=b,AB=ab,S=s,I=i,L=l,P=pS,C=cg}
    b.MouseButton1Click:Connect(function() swT(tN) end)
    b.MouseEnter:Connect(function() if cTab~=tN then tw(b,{0.1,E.EasingStyle.Quad},{BackgroundColor3=c3(28,33,44)}) end end)
    b.MouseLeave:Connect(function() if cTab~=tN then tw(b,{0.1,E.EasingStyle.Quad},{BackgroundColor3=sub}) end end)
    tY=tY+34 return pS 
end

local function mS(p,x,y,sx,sy,t) 
    local s = new("Frame", {Parent=p, Size=u2(0,sx,0,sy), Position=u2(0,x,0,y), BackgroundColor3=c3(17,21,30), BorderSizePixel=0, ZIndex=4})
    new("UICorner", {Parent=s, CornerRadius=ud(0,8)})
    new("UIStroke", {Parent=s, Color=c3(28,32,43), Thickness=0.8})
    if t and t~="" then new("TextLabel", {Parent=s, Text=t, Font=E.Font.GothamBold, TextSize=12, TextColor3=ft, BackgroundTransparency=1, Position=u2(0,10,0,4), Size=u2(1,-20,0,16), TextXAlignment=E.TextXAlignment.Left, ZIndex=5}) end
    return s 
end

local function mT(p,y,l,dS,cb) 
    local r = new("TextButton", {Parent=p, Size=u2(1,-16,0,24), Position=u2(0,8,0,y), BackgroundTransparency=1, AutoButtonColor=false, Name=nM.TB, Text="", ZIndex=5})
    new("TextLabel", {Parent=r, Text=l, Font=E.Font.GothamBold, TextSize=12, TextColor3=wt, BackgroundTransparency=1, Size=u2(1,-44,1,0), Position=u2(0,4,0,0), TextXAlignment=E.TextXAlignment.Left, ZIndex=5})
    local st = dS or false
    local tB = new("Frame", {Parent=r, Size=u2(0,36,0,18), Position=u2(1,-36,0.5,-9), BackgroundColor3=c3(255,255,255), BorderSizePixel=0, ZIndex=5})
    new("UICorner", {Parent=tB, CornerRadius=ud(1,0)})
    local tG = new("UIGradient", {Parent=tB, Rotation=90, Color=ColorSequence.new({ColorSequenceKeypoint.new(0,c3(180,100,240)), ColorSequenceKeypoint.new(1,c3(150,80,210))}), Transparency=NumberSequence.new(st and 0 or 1)})
    local dB = new("Frame", {Parent=tB, Size=u2(1,-2,1,-2), Position=u2(0,1,0,1), BackgroundColor3=c3(32,36,46), BorderSizePixel=0, ZIndex=tB.ZIndex})
    new("UICorner", {Parent=dB, CornerRadius=ud(1,0)})
    local d = new("Frame", {Parent=tB, Size=u2(0,14,0,14), Position=st and u2(1,-16,0.5,-7) or u2(0,2,0.5,-7), BackgroundColor3=wt, BorderSizePixel=0, ZIndex=tB.ZIndex+1})
    new("UICorner", {Parent=d, CornerRadius=ud(1,0)})
    local cA = 0
    local function sS(nS,sC) 
        st=nS tw(d,{0.1,E.EasingStyle.Back,E.EasingDirection.Out},{Position=st and u2(1,-16,0.5,-7) or u2(0,2,0.5,-7)}) cA=cA+1
        local mI,sT,tT,s,du = cA,tG.Transparency.Keypoints[1].Value,st and 0 or 1,tick(),0.1
        task.spawn(function() 
            while tick()-s<du do if cA~=mI then return end tG.Transparency=NumberSequence.new(sT+(tT-sT)*((tick()-s)/du)) RS.RenderStepped:Wait() end
            if cA==mI then tG.Transparency=NumberSequence.new(tT) end 
        end)
        if not sC and cb then pcall(function() cb(st) end) end 
    end
    r.MouseButton1Click:Connect(function() sS(not st,false) end)
    local c = {Row=r, Get=function() return st end, Set=function(v) sS((v~=false),false) end}
    Cfg[l]=c return c 
end

local function mSl(p,y,l,mi,ma,dV,sV,cb) 
    local r = new("Frame", {Parent=p, Name=nM.SR, Size=u2(1,-16,0,28), Position=u2(0,8,0,y), BackgroundTransparency=1, ZIndex=5})
    new("TextLabel", {Parent=r, Text=l, Font=E.Font.GothamBold, TextSize=12, TextColor3=wt, BackgroundTransparency=1, Size=u2(0,65,1,0), Position=u2(0,4,0,0), TextXAlignment=E.TextXAlignment.Left, ZIndex=5})
    local t = new("Frame", {Parent=r, Name=nM.T, Size=u2(1,-115,0,4), Position=u2(0,70,0.5,-2), BackgroundColor3=c3(35,39,48), BorderSizePixel=0, ZIndex=5})
    new("UICorner", {Parent=t, CornerRadius=ud(1,0)})
    local s = sV or 1
    local function vR(v) return mClamp((v-mi)/(ma-mi),0,1) end
    local f = new("Frame", {Parent=t, Name=nM.F, Size=u2(vR(dV),0,1,0), BackgroundColor3=ap, BorderSizePixel=0, ZIndex=5})
    new("UICorner", {Parent=f, CornerRadius=ud(1,0)})
    local th = new("Frame", {Parent=t, Name=nM.Th, Size=u2(0,10,0,10), Position=u2(vR(dV),-5,0.5,-5), BackgroundColor3=ap, BorderSizePixel=0, ZIndex=6})
    new("UICorner", {Parent=th, CornerRadius=ud(1,0)})
    local vL = new("TextLabel", {Parent=r, Name=nM.VL, Size=u2(0,36,0,18), Position=u2(1,-36,0.5,-9), BackgroundColor3=c3(26,30,40), Text=tostring(dV), Font=E.Font.GothamBold, TextSize=11, TextColor3=wt, ZIndex=5})
    new("UICorner", {Parent=vL, CornerRadius=ud(0,4)})
    new("UIStroke", {Parent=vL, Color=c3(35,39,48), Thickness=1})
    local sA, cV = false, dV or mi
    local function u(x) 
        local rV = mi+(ma-mi)*mClamp((x-t.AbsolutePosition.X)/t.AbsoluteSize.X,0,1)
        local stV = mFloor(mClamp(math.round(rV/s)*s,mi,ma)*100+0.5)/100
        cV = stV
        local rP = vR(stV)
        f.Size, th.Position, vL.Text = u2(rP,0,1,0), u2(rP,-5,0.5,-5), tostring(stV)
        if cb then pcall(function() cb(stV) end) end 
    end
    t.InputBegan:Connect(function(i) if i.UserInputType==E.UserInputType.MouseButton1 or i.UserInputType==E.UserInputType.Touch then sA,sDrag=true,true u(i.Position.X) end end)
    table.insert(conns, UIS.InputEnded:Connect(function(i) if (i.UserInputType==E.UserInputType.MouseButton1 or i.UserInputType==E.UserInputType.Touch) and sA then sA,sDrag=false,false end end))
    table.insert(conns, UIS.InputChanged:Connect(function(i) if sA and (i.UserInputType==E.UserInputType.MouseMovement or i.UserInputType==E.UserInputType.Touch) then u(i.Position.X) end end))
    local c = {Row=r, Get=function() return cV end, Set=function(v) cV=mClamp(math.round(v/s)*s,mi,ma); local rP=vR(cV) f.Size,th.Position,vL.Text=u2(rP,0,1,0),u2(rP,-5,0.5,-5),tostring(cV); if cb then pcall(function() cb(cV) end) end end}
    Cfg[l]=c return c 
end

local function mK(p,y,l,dK,cb) 
    local r = new("Frame", {Parent=p, Size=u2(1,-16,0,26), Position=u2(0,8,0,y), BackgroundTransparency=1, ZIndex=5})
    new("TextLabel", {Parent=r, Text=l, Font=E.Font.GothamBold, TextSize=12, TextColor3=wt, BackgroundTransparency=1, Size=u2(1,-85,1,0), Position=u2(0,4,0,0), TextXAlignment=E.TextXAlignment.Left, ZIndex=5})
    local cR = dK
    local b = new("TextButton", {Parent=r, Size=u2(0,85,0,22), Position=u2(1,-85,0.5,-11), BackgroundColor3=c3(26,30,40), AutoButtonColor=false, Text=cR.Name, Font=E.Font.GothamBold, TextSize=11, TextColor3=wt, ZIndex=5})
    new("UICorner", {Parent=b, CornerRadius=ud(0,4)})
    new("UIStroke", {Parent=b, Color=c3(45,52,68), Thickness=1})
    local bD = false
    b.MouseButton1Click:Connect(function() bD,b.Text=true,"..." end)
    table.insert(conns, UIS.InputBegan:Connect(function(i) if bD and i.UserInputType==E.UserInputType.Keyboard and i.KeyCode~=E.KeyCode.Unknown then cR,b.Text,bD=i.KeyCode,i.KeyCode.Name,false; if cb then pcall(function() cb(cR) end) end end end))
    local c = {Row=r, Get=function() return cR.Name end, Set=function(v) local k=typeof(v)=="string" and E.KeyCode[v] or v; cR,b.Text=k,k.Name; if cb then pcall(function() cb(k) end) end end}
    Cfg[l]=c return c 
end

local function mD(p,y,l,o,dO,cb,dC,bW) 
    bW = bW or 136
    local r = new("Frame", {Parent=p, Size=u2(1,-16,0,26), Position=u2(0,8,0,y), BackgroundTransparency=1, ZIndex=5})
    new("TextLabel", {Parent=r, Text=l, Font=E.Font.GothamBold, TextSize=12, TextColor3=wt, BackgroundTransparency=1, Size=u2(1,-(bW+4),1,0), Position=u2(0,4,0,0), TextXAlignment=E.TextXAlignment.Left, ZIndex=5})
    local dB = new("TextButton", {Parent=r, Name=nM.DB, Size=u2(0,bW,0,22), Position=u2(1,-bW,0.5,-11), BackgroundColor3=c3(26,30,40), AutoButtonColor=false, Text="", ZIndex=5})
    new("UICorner", {Parent=dB, CornerRadius=ud(0,4)})
    new("UIStroke", {Parent=dB, Color=c3(45,52,68), Thickness=1})
    local cR = dO or o[1]
    local lB = new("TextLabel", {Parent=dB, Text=(cR or "").." v", Font=E.Font.GothamBold, TextSize=11, TextColor3=wt, BackgroundTransparency=1, Size=u2(1,0,1,0), ZIndex=6})
    local bk = new("TextButton", {Parent=sg, Size=u2(1,0,1,0), BackgroundTransparency=1, Visible=false, Text="", ZIndex=99})
    local lF = new("Frame", {Parent=sg, Size=u2(0,136,0,#o*22+6), BackgroundColor3=c3(15,18,27), Visible=false, ZIndex=100, BorderSizePixel=0})
    new("UICorner", {Parent=lF, CornerRadius=ud(0,6)})
    new("UIStroke", {Parent=lF, Color=c3(60,45,85), Thickness=1.2})
    local lL = new("UIListLayout", {Parent=lF, SortOrder=E.SortOrder.LayoutOrder, Padding=ud(0,2)})
    new("UIPadding", {Parent=lF, PaddingTop=ud(0,3), PaddingBottom=ud(0,3), PaddingLeft=ud(0,3), PaddingRight=ud(0,3)})
    local iO = false
    local function cD() iO,lF.Visible,bk.Visible=false,false,false end
    local function rf(c,sP) cR,lB.Text=c,(c or "").." v"; cD() if not sP and cb then pcall(function() cb(c) end) end end
    local function cW(os) local mW=mMax(dB.AbsoluteSize.X,136) for _,op in ipairs(os) do local eW=#op*6.5+20 if dC then eW=eW+28 end if eW>mW then mW=eW end end return mFloor(mW) end
    dB.MouseButton1Click:Connect(function() 
        if iO then cD() else 
            local cO={} for _,ch in ipairs(lF:GetChildren()) do if ch.Name==nM.RF then local bt=ch:FindFirstChild(nM.OB) if bt then table.insert(cO,bt.Text) end end end
            local dW=cW(#cO>0 and cO or o) lF.Position,lF.Size=u2(0,dB.AbsolutePosition.X,0,dB.AbsolutePosition.Y+dB.AbsoluteSize.Y+4),u2(0,dW,0,lL.AbsoluteContentSize.Y+6) iO,lF.Visible,bk.Visible=true,true,true 
        end 
    end)
    bk.MouseButton1Click:Connect(cD)
    local function bL(os) 
        for _,ch in ipairs(lF:GetChildren()) do if ch.Name==nM.RF then ch:Destroy() end end
        lF.Size=u2(0,cW(os),0,#os*22+6)
        for _,op in ipairs(os) do 
            local rF = new("Frame", {Parent=lF, Name=nM.RF, Size=u2(1,0,0,20), BackgroundTransparency=1, ZIndex=101})
            local hD = dC and op~="Default"
            local oB = new("TextButton", {Parent=rF, Name=nM.OB, Size=u2(1,hD and -36 or 0,1,0), BackgroundTransparency=1, Text=op, TextColor3=c3(200,200,200), Font=E.Font.GothamBold, TextSize=11, TextXAlignment=hD and E.TextXAlignment.Left or E.TextXAlignment.Center, ZIndex=101})
            new("UICorner", {Parent=oB, CornerRadius=ud(0,4)})
            if hD then 
                new("UIPadding", {Parent=oB, PaddingLeft=ud(0,6)})
                local dBtn = new("TextButton", {Parent=rF, Name=nM.Del, Size=u2(0,30,0,16), Position=u2(1,-32,0.5,-8), BackgroundColor3=c3(26,30,40), Text="DEL", Font=E.Font.GothamBold, TextSize=10, TextColor3=c3(180,100,240), ZIndex=102})
                new("UICorner", {Parent=dBtn, CornerRadius=ud(0,4)})
                new("UIStroke", {Parent=dBtn, Color=c3(45,52,68), Thickness=1})
                dBtn.MouseEnter:Connect(function() dBtn.BackgroundColor3=c3(45,30,40) end) dBtn.MouseLeave:Connect(function() dBtn.BackgroundColor3=c3(26,30,40) end) dBtn.MouseButton1Click:Connect(function() cD(); dC(op) end) 
            end
            oB.MouseEnter:Connect(function() oB.BackgroundTransparency,oB.TextColor3,oB.BackgroundColor3=0,wt,c3(45,35,65) end)
            oB.MouseLeave:Connect(function() oB.BackgroundTransparency,oB.TextColor3=1,c3(200,200,200) end)
            oB.MouseButton1Click:Connect(function() rf(op,false) end) 
        end 
    end
    bL(o)
    local c = {Row=r, Get=function() return cR end, Set=function(v) rf(v,false) end, RefreshOpts=function(nO,sO) bL(nO); if sO then rf(sO,true) end end}
    Cfg[l]=c return c 
end

local oL = {Ambient=L.Ambient, OutdoorAmbient=L.OutdoorAmbient, Brightness=L.Brightness, ClockTime=L.ClockTime, ColorShift_Top=L.ColorShift_Top, ColorShift_Bottom=L.ColorShift_Bottom, FogColor=L.FogColor, FogEnd=L.FogEnd, GlobalShadows=L.GlobalShadows}
if getgenv().FryzeSkyInstance then pcall(function() getgenv().FryzeSkyInstance:Destroy() end) end
local cSky = new("Sky", {Name=rS()}) getgenv().FryzeSkyInstance = cSky
if getgenv().FryzeSnowInstance then pcall(function() getgenv().FryzeSnowInstance:Destroy() end) end
local sP = new("Part", {Name=rS(), Size=v3(200,2,200), Anchored=true, CanCollide=false, Transparency=1, CastShadow=false})
getgenv().FryzeSnowInstance = sP
local sE = new("ParticleEmitter", {Parent=sP, Texture="rbxassetid://1266170131", Size=NumberSequence.new(0.3), Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1), NumberSequenceKeypoint.new(0.1,0.2), NumberSequenceKeypoint.new(0.9,0.2), NumberSequenceKeypoint.new(1,1)}), Lifetime=NumberRange.new(4,6), Rate=250, Speed=NumberRange.new(15,25), VelocitySpread=45, EmissionDirection=E.NormalId.Bottom, Acceleration=v3(0,-15,0), Rotation=NumberRange.new(0,360), RotSpeed=NumberRange.new(-30,30), Enabled=false})

local oM, cK, sT, aTh = {}, E.KeyCode.K, {CamLock=false, Smooth=5, WallCheck=false, HoldKeyLock=false, LockKey=E.KeyCode.Q, TargetPart="Head", ShowFOV=false, Autoshoot=false, BigHead=false, RainbowHeads=false, HeadSize=4, EnableGunMods=false, MagicBullet=false, Esp=false, TeamCheck=false, SpectatorCount=false, Bomb=false, ESPBoxes=false, ESPBoxesCorners=false, ESPSkeletons=false, HeadDots=false, ESPNames=false, ESPHealth=false, ESPDistance=false, Weapon=false, Tracers=false, AntiFlashbang=false, AntiSmoke=false, AntiWallbang=false, Snow=false, RemoveTextures=false, Fullbright=false, CustomFOV=false, FOVValue=70, CframeSpeed=false, CframeSpeedVal=5, GetNevFly=false, CustomHitmarkers=false, SilentAim=false, SATeamCheck=true, SAWallCheck=true, SAFovCircle=false, SAFOV=100, SAKey=E.KeyCode.X}, "Default"

local function aTL() 
    local tInfo = TweenInfo.new(1.5, E.EasingStyle.Quad, E.EasingDirection.Out)
    if aTh=="Default" then 
        cSky.Parent, L.GlobalShadows = nil, oL.GlobalShadows
        TS:Create(L, tInfo, {Ambient=oL.Ambient, OutdoorAmbient=oL.OutdoorAmbient, Brightness=oL.Brightness, ClockTime=oL.ClockTime, ColorShift_Top=oL.ColorShift_Top, ColorShift_Bottom=oL.ColorShift_Bottom, FogColor=oL.FogColor, FogEnd=oL.FogEnd}):Play() 
    else 
        cSky.Parent, cSky.SkyboxBk, cSky.SkyboxDn, cSky.SkyboxFt, cSky.SkyboxLf, cSky.SkyboxRt, cSky.SkyboxUp = L, "rbxassetid://60348217", "rbxassetid://60348217", "rbxassetid://60348217", "rbxassetid://60348217", "rbxassetid://60348217", "rbxassetid://60348217"
        local th = {["Purple Hase"]={Amb=c3(90,40,110),Out=c3(50,20,75),Brt=2,Clk=0,Tp=c3(255,50,200),Bt=c3(50,220,255),Fg=c3(70,20,100),FE=2000},["Blood Moon"]={Amb=c3(100,30,30),Out=c3(60,15,15),Brt=1.6,Clk=0,Tp=c3(255,60,60),Bt=c3(90,20,20),Fg=c3(60,15,15),FE=1500},["Midnight Abyss"]={Amb=c3(30,45,80),Out=c3(15,25,50),Brt=1.4,Clk=0,Tp=c3(60,130,220),Bt=c3(20,40,80),Fg=c3(20,30,60),FE=1800},["Arctic Frost"]={Amb=c3(140,180,210),Out=c3(90,130,170),Brt=2,Clk=14,Tp=c3(200,230,255),Bt=c3(120,160,200),Fg=c3(180,210,235),FE=1500}}
        local s = th[aTh] or th["Purple Hase"]
        L.GlobalShadows = oL.GlobalShadows
        TS:Create(L, tInfo, {Ambient=s.Amb, OutdoorAmbient=s.Out, Brightness=s.Brt, ClockTime=s.Clk, ColorShift_Top=s.Tp, ColorShift_Bottom=s.Bt, FogColor=s.Fg, FogEnd=s.FE}):Play() 
    end
    if sT.Fullbright then L.GlobalShadows=false; TS:Create(L, TweenInfo.new(0.8,E.EasingStyle.Sine,E.EasingDirection.Out), {Brightness=3, ClockTime=14}):Play() end 
end

local rP, vP, wP, mP, scP, stP = cT("Rage Bot", 11738671901), cT("Visuals", 11738354827), cT("World", 92875681906793), cT("Misc", 93915156103067), cT("Skin Changer", 4521136666), cT("Settings", 11347197194)
local vW = {["SSG 553"]=true,["M4A1"]=true,["M4A1-S"]=true,["Galil AR"]=true,["FAMAS"]=true,["AUG"]=true,["AK-47"]=true,["Rifle"]=true,["Tec-9"]=true,["P90"]=true,["Negev"]=true,["MP9"]=true,["MAG-7"]=true,["MAC-10"]=true,["USP-S"]=true,["R8 Revolver"]=true,["P250"]=true,["Glock-18"]=true,["Five-SeveN"]=true,["Dual Berettas"]=true,["Desert Eagle"]=true,["Pistol"]=true,["XM1014"]=true,["Sawed-Off"]=true,["Shotgun"]=true,["SSG 08"]=true,["AWP"]=true,["Sniper"]=true,["Zues x27 (taser)"]=true,["Zues x27"]=true,["T Knife"]=true,["CT Knife"]=true,["Stiletto Knife"]=true,["Sports Gloves"]=true,["Smoke Grenade"]=true,["Skeleton Knife"]=true,["Molotov"]=true,["M9 Bayonet"]=true,["LightSaber"]=true,["Karambit"]=true,["Incendiary Grenade"]=true,["HE Grenade"]=true,["Gut Knife"]=true,["Flip Knife"]=true,["Flashbang"]=true,["Decoy Grenade"]=true,["C4"]=true,["Butterfly Knife"]=true}
local pWC = {}

local function eW(c) 
    local fb for _,o in ipairs(c:GetDescendants()) do 
        local n=o.Name if n~="Properties" and n~="Interactables" and n~="MuzzlePart" then if vW[n] then return n elseif not fb then fb=n end end 
    end return fb 
end

task.spawn(function() 
    local a, wE = true, false table.insert(conns, {Disconnect=function() a=false end})
    while a and task.wait(0.5) do 
        if sT.Weapon then 
            wE=true local d=workspace:FindFirstChild("Debris")
            if d then 
                local nC={} for _,c in ipairs(d:GetChildren()) do 
                    local pN,s = c.Name:match("^(.-)_(%a+)$") 
                    if pN and (s=="WeaponAttachments" or s=="Weapon") then nC[pN] = (pWC[pN] and not vW[pWC[pN]]) and eW(c) or (pWC[pN] or eW(c)) end 
                end pWC=nC 
            end 
        elseif wE then pWC, wE = {}, false end 
    end 
end)

new("TextLabel", {Parent=sb, Text="[Game Stats]", Font=E.Font.GothamBold, TextSize=11, TextColor3=c3(180,100,240), BackgroundTransparency=1, Position=u2(0,14,0,274), Size=u2(1,-28,0,14), TextXAlignment=E.TextXAlignment.Center, ZIndex=3})
local mTL = new("TextLabel", {Parent=sb, Text="Team: None", Font=E.Font.GothamBold, TextSize=11, TextColor3=ft, BackgroundTransparency=1, Position=u2(0,14,0,294), Size=u2(1,-28,0,0), TextXAlignment=E.TextXAlignment.Left, TextYAlignment=E.TextYAlignment.Top, ZIndex=3})
local sTL = new("TextLabel", {Parent=sb, Text="Map: None\nPing: 0\nKills: 0\nSpectators: 0", Font=E.Font.GothamBold, TextSize=11, TextColor3=ft, BackgroundTransparency=1, Position=u2(0,14,0,306), Size=u2(1,-28,0,52), TextXAlignment=E.TextXAlignment.Left, TextYAlignment=E.TextYAlignment.Top, ZIndex=3})

local function gC(p) return (workspace:FindFirstChild("Characters") and workspace.Characters:FindFirstChild(p.Name)) or p.Character end
local function gTN(p) local m=gC(p) return (m and m:GetAttribute("CharacterName")) or (p.Team and p.Team.Name) or nil end
local function iTM(p) if p==lp then return true end local t1, t2 = gTN(p), gTN(lp) return t1 and t2 and t1==t2 or false end
local function gEW(c) local t=c and c:FindFirstChildOfClass("Tool") return t and t.Name or "" end

task.spawn(function() 
    local a=true table.insert(conns,{Disconnect=function() a=false end})
    while a and task.wait(2) do 
        pcall(function() 
            local t = gTN(lp)
            local tS = t and (t:lower():find("anarchist") and "Terrorist" or t:lower():find("idf") and "Counter Terrorist" or t) or "None"
            local m = workspace:FindFirstChild("Map")
            local mS = m and (m:GetAttribute("MapName") and tostring(m:GetAttribute("MapName")) or m.Name) or "Unknown"
            mTL.Text = "Team: " .. tS
            sTL.Text = "Map: " .. mS .. "\nPing: " .. tostring(lp:GetAttribute("Ping") or 0) .. "\nKills: " .. tostring(lp:GetAttribute("Kills") or 0) .. "\nSpectators: " .. tostring(lp:GetAttribute("Spectators") or 0) 
        end) 
    end 
end)

local tZ = new("Frame", {Parent=rP, Size=u2(0,110,0,26), Position=u2(0,0,0,0), BackgroundColor3=c3(17,21,30), BorderSizePixel=0, ZIndex=4})
new("UICorner", {Parent=tZ, CornerRadius=ud(0,6)}) new("UIStroke", {Parent=tZ, Color=c3(35,30,45), Thickness=1})
new("TextLabel", {Parent=tZ, Text=";", Font=E.Font.GothamBold, TextSize=13, TextColor3=wt, BackgroundTransparency=1, Size=u2(0,26,1,0), Position=u2(0,4,0,0), ZIndex=5})
new("TextLabel", {Parent=tZ, Text="BloxFinder", Font=E.Font.GothamBold, TextSize=12, TextColor3=wt, BackgroundTransparency=1, Size=u2(1,-30,1,0), Position=u2(0,30,0,0), TextXAlignment=E.TextXAlignment.Left, ZIndex=5})

local sAS = mS(rP,0,36,200,256,"Hard Aim")
mT(sAS,22,"Cam Lock",false,function(v) sT.CamLock=v end) mSl(sAS,48,"Smooth",1,20,5,1,function(v) sT.Smooth=v end) mT(sAS,76,"Wall Check",false,function(v) sT.WallCheck=v end) mT(sAS,100,"Hold Key Lock",false,function(v) sT.HoldKeyLock=v end) mK(sAS,124,"Lock Key",sT.LockKey,function(v) sT.LockKey=v end) mD(sAS,152,"Lock Part",{"Head","UpperTorso","HumanoidRootPart"},"Head",function(v) sT.TargetPart=v end,nil,80) mT(sAS,180,"Fov Circle",false,function(v) sT.ShowFOV=v end) mT(sAS,204,"Trigger Bot",false,function(v) sT.Autoshoot=v end)
local plS = mS(rP,0,302,167,104,"Hitbox Expander") mT(plS,22,"Big Hitbox",false,function(v) sT.BigHead=v end) mT(plS,46,"Rainbow Heads",false,function(v) sT.RainbowHeads=v end) mSl(plS,74,"Head Size",2,20,4,1,function(v) sT.HeadSize=v end)
local gmS = mS(rP,204,36,140,196,"Silent Aim") mT(gmS,22,"[LEAVE OFF]",false,function(v) sT.SilentAim=v end) mT(gmS,46,"Team Check",true,function(v) sT.SATeamCheck=v end) mT(gmS,70,"Wall Check",true,function(v) sT.SAWallCheck=v end) mT(gmS,94,"Fov Circle",false,function(v) sT.SAFovCircle=v end)
local gmsFovCtrl = mSl(gmS,118,"Fov V",10,80,34,1,function(v) sT.SAFOV=v end)
do local row=gmsFovCtrl.Row for _,c in ipairs(row:GetChildren()) do if c:IsA("TextLabel") and c.Position.X.Scale==0 then c.Size=u2(0,40,1,0) elseif c.Name==nM.T then c.Size=u2(1,-84,0,4) c.Position=u2(0,44,0.5,-2) elseif c.Name==nM.VL then c.Position=u2(1,-36,0.5,-9) end end end
local gmsAimKeyCtrl = mK(gmS,150,"Toggle",sT.SAKey,function(v) sT.SAKey=v end)
do local row=gmsAimKeyCtrl.Row for _,c in ipairs(row:GetChildren()) do if c:IsA("TextLabel") then c.Size=u2(1,-65,1,0) elseif c:IsA("TextButton") then c.Size=u2(0,60,0,22) c.Position=u2(1,-62,0.5,-11) end end end
local sC, anS = nil, mS(rP,204,240,140,98,"Antis") mT(anS,22,"Anti Flashbang",false,function(v) sT.AntiFlashbang=v end) mT(anS,46,"Anti Smoke",false,function(v) sT.AntiSmoke=v; if v then for _,d in ipairs(workspace:GetDescendants()) do if d:IsA("ParticleEmitter") and (d.Name:lower():find("smoke") or d.Name:lower():find("gas")) then d.Enabled=false end end if not sC then sC=workspace.DescendantAdded:Connect(function(d) if sT.AntiSmoke and d:IsA("ParticleEmitter") and (d.Name:lower():find("smoke") or d.Name:lower():find("gas")) then d.Enabled=false end end) table.insert(conns,sC) end end end) mT(anS,70,"Anti Wallbang",false,function(v) sT.AntiWallbang=v end)

local vS1 = mS(vP,0,0,342,124,"Direct") mT(vS1,22,"Main Esp",false,function(v) sT.Esp=v end) mT(vS1,46,"Team Check",false,function(v) sT.TeamCheck=v end) mT(vS1,70,"Spectator Count",false,function(v) sT.SpectatorCount=v; local old=CG:FindFirstChild("Fryze Dumper") if old then old:Destroy() end if v then local gui=new("ScreenGui",{Name="Fryze Dumper",ResetOnSpawn=false,IgnoreGuiInset=true,Parent=CG}) local main=new("Frame",{Size=u2(0,110,0,36),Position=u2(1,-310,0,16),BackgroundColor3=bg,BorderSizePixel=0,Parent=gui}) new("UICorner",{Parent=main,CornerRadius=ud(0,10)}) local gf2=new("Frame",{Parent=main,Size=u2(1,0,1,0),BackgroundColor3=c3(255,255,255),BorderSizePixel=0,ZIndex=1}) new("UICorner",{Parent=gf2,CornerRadius=ud(0,10)}) new("UIGradient",{Parent=gf2,Rotation=45,Color=ColorSequence.new({ColorSequenceKeypoint.new(0,c3(190,100,255)),ColorSequenceKeypoint.new(0.2,c3(230,80,210)),ColorSequenceKeypoint.new(0.5,c3(11,13,20)),ColorSequenceKeypoint.new(1,c3(11,13,20))}),Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0.75),NumberSequenceKeypoint.new(0.86,1),NumberSequenceKeypoint.new(1,1)})}) new("UIStroke",{Parent=main,Thickness=1.5,ApplyStrokeMode=E.ApplyStrokeMode.Border,Color=c3(195,140,250)}) local title=new("TextLabel",{Parent=main,Size=u2(1,-16,1,0),Position=u2(0,12,0,0),BackgroundTransparency=1,Text="Spectators: 0",TextColor3=wt,TextSize=13,Font=E.Font.GothamBold,TextXAlignment=E.TextXAlignment.Left,ZIndex=2}) local function upd() title.Text="Spectators: "..(lp:GetAttribute("Spectators") or 0) end upd() table.insert(conns, lp:GetAttributeChangedSignal("Spectators"):Connect(function() if CG:FindFirstChild("Fryze Dumper") then upd() end end)) end end) mT(vS1,94,"Bomb",false,function(v) sT.Bomb=v end)
local vS2 = mS(vP,0,134,342,124,"Physical") mT(vS2,22,"Skeletons",false,function(v) sT.ESPSkeletons=v end) local b2,bC b2=mT(vS2,46,"Boxes [2d]",false,function(v) sT.ESPBoxes=v if v and bC and bC.Get() then bC.Set(false) end end) bC=mT(vS2,70,"Boxes [Corners]",false,function(v) sT.ESPBoxesCorners=v if v and b2 and b2.Get() then b2.Set(false) end end) mT(vS2,94,"Head Dots",false,function(v) sT.HeadDots=v end)
local vS3 = mS(vP,0,266,342,148,"Info") mT(vS3,22,"Usernames",false,function(v) sT.ESPNames=v end) mT(vS3,46,"Health",false,function(v) sT.ESPHealth=v end) mT(vS3,70,"Distance",false,function(v) sT.ESPDistance=v end) mT(vS3,94,"Weapon",false,function(v) sT.Weapon=v end) mT(vS3,118,"Tracers",false,function(v) sT.Tracers=v end)
-- [ CUSTOM HITMARKERS ] --
local hmDebrisFolder = workspace:WaitForChild("Debris", 10) or workspace
local hmTargetNames = {["HitMarker"]=true,["1"]=true,["2"]=true,["3"]=true,["4"]=true,["5"]=true,["6"]=true}
local hmMaterial = E.Material.Neon
local hmTransparency = 0.2
local hmColor = c3(175, 135, 225)
local hmOriginals = {}
local function hmApplyToPart(part) if part:IsA("BasePart") then if not hmOriginals[part] then hmOriginals[part]={Material=part.Material,Transparency=part.Transparency,Color=part.Color} end part.Material=hmMaterial part.Transparency=hmTransparency part.Color=hmColor end end
local function hmRestoreAll() for part,orig in pairs(hmOriginals) do if part and part.Parent then part.Material=orig.Material part.Transparency=orig.Transparency part.Color=orig.Color end end table.clear(hmOriginals) end
local function hmUpdateAll() if not sT.CustomHitmarkers or not hmDebrisFolder then return end for _,child in pairs(hmDebrisFolder:GetChildren()) do if hmTargetNames[child.Name] then hmApplyToPart(child) for _,desc in pairs(child:GetDescendants()) do hmApplyToPart(desc) end end end end
local hmChildConn = nil
if hmDebrisFolder then hmChildConn = hmDebrisFolder.ChildAdded:Connect(function(child) if not sT.CustomHitmarkers then return end if hmTargetNames[child.Name] then task.defer(function() hmApplyToPart(child) for _,desc in pairs(child:GetDescendants()) do hmApplyToPart(desc) end end) end end) table.insert(conns, hmChildConn) end

local wM = mS(wP,0,0,342,204,"Client Options") mD(wM,22,"Game Theme",{"Default","Purple Hase","Blood Moon","Midnight Abyss","Arctic Frost"},"Default",function(v) aTh=v aTL() end) mT(wM,52,"Snow",false,function(v) sT.Snow,sE.Enabled=v,v; sP.Parent=v and workspace or nil end) mT(wM,76,"FPS Boost",false,function(v) sT.RemoveTextures=v if v then for _,p in ipairs(workspace:GetDescendants()) do if p:IsA("BasePart") then oM[p],p.Material=oM[p] or p.Material,E.Material.SmoothPlastic elseif p:IsA("Texture") or p:IsA("Decal") then p.Texture="" end end else for p,m in pairs(oM) do if p and p.Parent then p.Material=m end end end end) mT(wM,100,"Fullbright",false,function(v) sT.Fullbright=v aTL() end) mT(wM,124,"Custom Fov",false,function(v) sT.CustomFOV=v if not v then Cam.FieldOfView=70 end end) mSl(wM,148,"Fov Value",30,120,70,1,function(v) sT.FOVValue=v end) mT(wM,172,"Custom Hitmarkers",false,function(v) sT.CustomHitmarkers=v if v then hmUpdateAll() else hmRestoreAll() end end)
local miM = mS(mP,0,0,342,96,"Movement (Paused)") mT(miM,22,"Cframe Speed",false,function(v) sT.CframeSpeed=v end) mSl(miM,46,"Speed",1,10,5,1.5,function(v) sT.CframeSpeedVal=v end) mT(miM,74,"GetNevFly",false,function(v) sT.GetNevFly=v end)
local seM = mS(stP,0,0,342,84,"Settings") mD(seM,22,"Color Theme",{"Purple","Gold","Cyan","Pink","Emerald"},"Purple",function(v) local th={Purple=c3(180,100,240),Gold=c3(255,204,0),Cyan=c3(0,229,255),Pink=c3(255,0,160),Emerald=c3(0,255,102)} if th[v] then acc=th[v] end end)
local cKL = new("TextLabel",{Parent=seM,Text="Toggle Key: "..cK.Name,Font=E.Font.GothamBold,TextSize=12,TextColor3=wt,BackgroundTransparency=1,Position=u2(0,12,0,54),Size=u2(1,-110,0,20),TextXAlignment=E.TextXAlignment.Left,ZIndex=5}) local bK=false local bBtn=new("TextButton",{Parent=seM,Size=u2(0,85,0,22),Position=u2(1,-95,0,54),BackgroundColor3=c3(26,30,40),BorderSizePixel=0,Text="Rebind",Font=E.Font.GothamBold,TextSize=11,TextColor3=wt,AutoButtonColor=false,ZIndex=5}) new("UICorner",{Parent=bBtn,CornerRadius=ud(0,4)}) new("UIStroke",{Parent=bBtn,Color=c3(45,52,68),Thickness=1})
bBtn.MouseButton1Click:Connect(function() bK,bBtn.Text=true,"..." end) table.insert(conns, UIS.InputBegan:Connect(function(i,g) if bK and i.UserInputType==E.UserInputType.Keyboard and i.KeyCode~=E.KeyCode.Unknown then cK,bK,cKL.Text,bBtn.Text=i.KeyCode,false,"Toggle Key: "..i.KeyCode.Name,"Rebind" return end if not g and i.KeyCode==cK then sg.Enabled=not sg.Enabled end end))
local cM = mS(stP,0,94,342,130,"Config") local sCfg="Default"

local function mTB(p,y,l,dT) 
    local r=new("Frame",{Parent=p,Size=u2(1,-16,0,26),Position=u2(0,8,0,y),BackgroundTransparency=1,ZIndex=5}) new("TextLabel",{Parent=r,Text=l,Font=E.Font.GothamBold,TextSize=12,TextColor3=wt,BackgroundTransparency=1,Size=u2(1,-85,1,0),Position=u2(0,4,0,0),TextXAlignment=E.TextXAlignment.Left,ZIndex=5}) local t=new("TextBox",{Parent=r,Name=nM.Txt,Size=u2(0,100,0,22),Position=u2(1,-100,0.5,-11),BackgroundColor3=c3(26,30,40),Text=dT or "",Font=E.Font.GothamBold,TextSize=11,TextColor3=wt,ClearTextOnFocus=false,ZIndex=5}) new("UICorner",{Parent=t,CornerRadius=ud(0,4)}) new("UIStroke",{Parent=t,Color=c3(45,52,68),Thickness=1}) return t 
end
local cNB = mTB(cM,22,"Config Name","ConfigJew123")
local function fS(b) local s=b:FindFirstChildOfClass("UIStroke") if s then local oC,oT,lC=c3(45,52,68),s.Thickness,c3(255,255,255) s.Color,s.Thickness=lC,2 local function dF(n) if n<=0 then tw(s,{0.4,E.EasingStyle.Quad,E.EasingDirection.Out},{Color=oC,Thickness=oT}) return end s.Color,s.Thickness=lC,2.2 task.delay(0.12,function() tw(s,{0.1,E.EasingStyle.Quad},{Thickness=1.4}) task.delay(0.12,function() dF(n-1) end) end) end dF(1) end end
local lB = new("TextButton",{Parent=cM,Size=u2(0,156,0,26),Position=u2(0,10,0,86),BackgroundColor3=c3(26,30,40),AutoButtonColor=false,Text="Load Config",Font=E.Font.GothamBold,TextSize=12,TextColor3=wt,ZIndex=5}) new("UICorner",{Parent=lB,CornerRadius=ud(0,4)}) new("UIStroke",{Parent=lB,ApplyStrokeMode=E.ApplyStrokeMode.Border,Color=c3(45,52,68),Thickness=1})
local svB = new("TextButton",{Parent=cM,Size=u2(0,156,0,26),Position=u2(0,176,0,86),BackgroundColor3=c3(26,30,40),AutoButtonColor=false,Text="Save Config",Font=E.Font.GothamBold,TextSize=12,TextColor3=wt,ZIndex=5}) new("UICorner",{Parent=svB,CornerRadius=ud(0,4)}) new("UIStroke",{Parent=svB,ApplyStrokeMode=E.ApplyStrokeMode.Border,Color=c3(45,52,68),Thickness=1})
local function gSC() local cL={"Default"} pcall(function() if listfiles then for _,f in ipairs(listfiles(cDir)) do local n=f:match("([^/\\]+)%.json$") if n and n~="Default" then table.insert(cL,n) end end end end) return cL end
local cD = mD(cM,52,"Selected Config",gSC(),"Default",function(v) sCfg,cNB.Text=v,v end,function(dO) if dO~="Default" then pcall(function() if delfile then delfile(cDir.."/"..dO..".json") end if sCfg==dO then sCfg,cNB.Text="Default","Default" end end) task.defer(function() Cfg["Target Config"].RefreshOpts(gSC(),sCfg) end) end end)
svB.MouseButton1Click:Connect(function() local cN=cNB.Text~="" and cNB.Text or "Default" local eD={Settings={},Position={X=out.Position.X.Scale,XO=out.Position.X.Offset,Y=out.Position.Y.Scale,YO=out.Position.Y.Offset},ToggleKey=cK.Name} for n,c in pairs(Cfg) do if n~="Target Config" and n~="Config Name" then pcall(function() eD.Settings[n]=c.Get() end) end end pcall(function() writefile(cDir.."/"..cN..".json",HS:JSONEncode(eD)) cD.RefreshOpts(gSC(),cN) fS(svB) end) end)
lB.MouseButton1Click:Connect(function() pcall(function() local c=readfile(cDir.."/"..sCfg..".json") if c then local pD=HS:JSONDecode(c) if pD.Settings then for n,v in pairs(pD.Settings) do if Cfg[n] and n~="Target Config" and n~="Config Name" then pcall(function() Cfg[n].Set(v) end) end end end if pD.Position then tw(out,{0.35,E.EasingStyle.Quart,E.EasingDirection.Out},{Position=u2(pD.Position.X,pD.Position.XO,pD.Position.Y,pD.Position.YO)}) end if pD.ToggleKey then pcall(function() local k=E.KeyCode[pD.ToggleKey] if k then cK,cKL.Text,bBtn.Text=k,"Toggle Key: "..k.Name,"Rebind" end end) end fS(lB) end end) end)

cTab="Ragebot" if tabs["Ragebot"] then tabs["Ragebot"].C.Visible,tabs["Ragebot"].C.GroupTransparency,tabs["Ragebot"].AB.BackgroundTransparency,tabs["Ragebot"].S.Transparency,tabs["Ragebot"].I.ImageColor3=true,0,0,1,wt end
out.Size,out.Position=u2(0,0,0,0),u2(0.5,0,0.5,0) tw(out,{0.3,E.EasingStyle.Back,E.EasingDirection.Out},{Size=u2(0,570,0,380),Position=u2(0.5,-285,0.5,-190)})

local lTM, iKH, iTO, mM = nil, false, false, mousemoverel or (mousemoveabs and function(x,y) end)
local iCG = (game.PlaceId==114234929420007)
local cCF = iCG and workspace:WaitForChild("Characters",5) or nil

local function iV(tP) 
    if not sT.WallCheck then return true end
    local rp = RaycastParams.new()
    rp.FilterType, rp.FilterDescendantsInstances = E.RaycastFilterType.Exclude, {gC(lp)}
    if workspace:FindFirstChild("Characters") then for _,c in ipairs(workspace.Characters:GetChildren()) do if c~=tP.Parent then table.insert(rp.FilterDescendantsInstances,c) end end end
    for _,p in ipairs(P:GetPlayers()) do if p.Character and p.Character~=tP.Parent then table.insert(rp.FilterDescendantsInstances,p.Character) end end
    local r = workspace:Raycast(Cam.CFrame.Position, (tP.Position-Cam.CFrame.Position), rp)
    return r and r.Instance:IsDescendantOf(tP.Parent) or not r 
end

local function isValidTarget(m)
    if not m or not m:IsA("Model") or m==gC(lp) then return false end
    local h = m:FindFirstChildOfClass("Humanoid")
    local curHP = m:GetAttribute("Health") or (h and h.Health) or 0
    if (m:GetAttribute("Dead")==true) or curHP <= 0 then return false end
    if sT.TeamCheck then
        local p = P:GetPlayerFromCharacter(m) or P:FindFirstChild(m.Name)
        if p and iTM(p) then return false end
        local mTeam, lpChar = m:GetAttribute("Team") or m:GetAttribute("CharacterName"), gC(lp)
        local lpTeam = lpChar and (lpChar:GetAttribute("Team") or lpChar:GetAttribute("CharacterName"))
        if mTeam and lpTeam and mTeam==lpTeam then return false end
    end
    return true
end

local function gCM()
    local mP, c, sD = UIS:GetMouseLocation(), nil, math.huge
    local function eval(m)
        if isValidTarget(m) then
            local t = m:FindFirstChild(sT.TargetPart or "Head") or m:FindFirstChild("Head")
            if t then
                local sP, o = Cam:WorldToViewportPoint(t.Position)
                if o and iV(t) then
                    local d = (v2(sP.X,sP.Y)-mP).Magnitude
                    if d<sD then sD, c = d, m end
                end
            end
        end
    end
    if iCG and cCF then for _,m in ipairs(cCF:GetChildren()) do if m.Name~=lp.Name then eval(m) end end return c end
    for _,ch in ipairs(workspace:GetChildren()) do if ch:IsA("Model") and ch.Name~="Characters" then eval(ch) end end
    if workspace:FindFirstChild("Characters") then for _,ch in ipairs(workspace.Characters:GetChildren()) do eval(ch) end end
    return c
end

table.insert(conns,UIS.InputBegan:Connect(function(i) if i.KeyCode==sT.LockKey then iKH=true if not sT.HoldKeyLock then iTO=not iTO end end end)) table.insert(conns,UIS.InputEnded:Connect(function(i) if i.KeyCode==sT.LockKey then iKH=false end end))
local bM15 = {{"Head","UpperTorso"},{"UpperTorso","LowerTorso"},{"UpperTorso","LeftUpperArm"},{"LeftUpperArm","LeftLowerArm"},{"LeftLowerArm","LeftHand"},{"UpperTorso","RightUpperArm"},{"RightUpperArm","RightLowerArm"},{"RightLowerArm","RightHand"},{"LowerTorso","LeftUpperLeg"},{"LeftUpperLeg","LeftLowerLeg"},{"LeftLowerLeg","LeftFoot"},{"LowerTorso","RightUpperLeg"},{"RightUpperLeg","RightLowerLeg"},{"RightLowerLeg","RightFoot"}}
local bM6 = {{"Head","Torso"},{"Torso","Left Arm"},{"Torso","Right Arm"},{"Torso","Left Leg"},{"Torso","Right Leg"}}
local bBO = {v3(1,1,1), v3(-1,1,1), v3(1,-1,1), v3(-1,-1,1), v3(1,1,-1), v3(-1,1,-1), v3(1,-1,-1), v3(-1,-1,-1)}

local function sD(cN) local s,o = pcall(function() return Drawing.new(cN) end) if s and o then return o end return setmetatable({},{__index=function(_,k) if k=="Visible" then return false end return function() end end, __newindex=function() end}) end
local function rE(p) local o=espI[p] if o then for k,v in pairs(o) do if k=="CornerBoxes" or k=="Bones" then for _,e in pairs(v) do pcall(function() if e and type(e.Remove)=="function" then e:Remove() end end) end else if v then pcall(function() if type(v.Remove)=="function" then v:Remove() end end) end end end espI[p]=nil end end
local function cE(p) if espI[p] then return end local o={BoxOutline=sD("Square"),Box=sD("Square"),CornerBoxes={},Name=sD("Text"),Distance=sD("Text"),Weapon=sD("Text"),HealthOutline=sD("Square"),Health=sD("Square"),Tracer=sD("Line"),HeadDot=sD("Circle"),Bones={}} pcall(function() o.BoxOutline.Thickness,o.BoxOutline.Filled,o.BoxOutline.Transparency,o.BoxOutline.Color=2,false,0.5,c3(0,0,0) o.Box.Thickness,o.Box.Filled,o.Box.Transparency=1,false,1 end) for i=1,8 do local l=sD("Line") pcall(function() l.Thickness,l.Transparency,l.Visible=1,1,false end) table.insert(o.CornerBoxes,l) end pcall(function() o.Name.Center,o.Name.Outline,o.Name.Font,o.Name.Size,o.Name.Color=true,true,1,12,c3(255,255,255) o.Distance.Center,o.Distance.Outline,o.Distance.Font,o.Distance.Size,o.Distance.Color=true,true,1,12,c3(200,200,200) o.Weapon.Center,o.Weapon.Outline,o.Weapon.Font,o.Weapon.Size,o.Weapon.Color=true,true,1,12,c3(255,220,50) o.HealthOutline.Thickness,o.HealthOutline.Filled,o.HealthOutline.Transparency,o.HealthOutline.Color=1,true,0.5,c3(0,0,0) o.Health.Filled,o.Health.Transparency=true,1 o.Tracer.Thickness,o.Tracer.Transparency=1,1 o.HeadDot.Radius,o.HeadDot.Filled,o.HeadDot.Transparency=4,true,1 end) for i=1,15 do local b=sD("Line") pcall(function() b.Thickness,b.Transparency,b.Visible=1,1,false end) table.insert(o.Bones,b) end espI[p]=o end
local function sEV(o,v) if not o then return end for k,b in pairs(o) do if k=="CornerBoxes" or k=="Bones" then for _,e in pairs(b) do if e then pcall(function() e.Visible=v end) end end else if b then pcall(function() b.Visible=v end) end end end end

table.insert(conns, P.PlayerRemoving:Connect(rE))
table.insert(conns, RS.RenderStepped:Connect(function(dt) 
    Cam = workspace.CurrentCamera
    if sT.CustomFOV then Cam.FieldOfView=sT.FOVValue end
    if sT.Snow then sP.CFrame=Cam.CFrame*CFrame.new(0,40,-10) end
    local lC = gC(lp)
    if not lC or (lC:FindFirstChildOfClass("Humanoid") and lC:FindFirstChildOfClass("Humanoid").Health<=0) then local cs=Cam.CameraSubject if cs then lC=cs:IsA("Model") and cs or cs.Parent end end
    if sT.CframeSpeed and lC then local p,h = lC.PrimaryPart,lC:FindFirstChildOfClass("Humanoid") if p and h and h.MoveDirection.Magnitude>0 then p.CFrame=p.CFrame+(h.MoveDirection*sT.CframeSpeedVal*dt*25) end end
    
    if sT.CamLock and (sT.HoldKeyLock and iKH or (not sT.HoldKeyLock and iTO)) then 
        if not lTM or not lTM.Parent or not isValidTarget(lTM) then lTM=gCM() end
        if lTM and mM then 
            local t = lTM:FindFirstChild(sT.TargetPart or "Head") or lTM:FindFirstChild("Head")
            if t and iV(t) and isValidTarget(lTM) then 
                local sP,on=Cam:WorldToViewportPoint(t.Position)
                if on then mM((sP.X-UIS:GetMouseLocation().X)/mClamp(sT.Smooth,1,20), (sP.Y-UIS:GetMouseLocation().Y)/mClamp(sT.Smooth,1,20)) end 
            else lTM=nil end 
        end 
    else lTM=nil end

    for pO, o in pairs(espI) do
        if not sT.Esp or not pO.Parent or not isValidTarget(gC(pO)) then sEV(o, false) end
    end

    local hS, cP, vS = v3(sT.HeadSize, sT.HeadSize, sT.HeadSize), Cam.CFrame.Position, Cam.ViewportSize
    local charFolder = workspace:FindFirstChild("Characters")
    
    if charFolder then
        for _, c in ipairs(charFolder:GetChildren()) do
            if c:IsA("Model") then
                local pO = P:FindFirstChild(c.Name)
                if pO and pO ~= lp then
                    local o, rP = espI[pO], c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("UpperTorso") or c.PrimaryPart
                    local a = sT.Esp and c and rP and isValidTarget(c)
                    
                    if not a then if o then sEV(o, false) end 
                    else 
                        if not o then cE(pO); o=espI[pO] end
                        local tC = acc
                        if sT.Bomb then pcall(function() local t=c:FindFirstChild("UpperTorso") or c:FindFirstChild("Torso") if t and t:FindFirstChild("BombAttachment") then tC=c3(255,0,0) end end) end
                        local rPos, on = Cam:WorldToViewportPoint(rP.Position)
                        
                        if on and rPos.Z>0 then 
                            local hd, cf, sz = c:FindFirstChild("Head"), c:GetBoundingBox()
                            local miX, miY, maX, maY, bOS, hSZ = math.huge, math.huge, -math.huge, -math.huge, false, sz/2
                            for i=1, 8 do 
                                local sP, sO = Cam:WorldToViewportPoint(cf * (hSZ * bBO[i]))
                                if sP.Z>0 then bOS, miX, maX, miY, maY = true, mMin(miX,sP.X), mMax(maX,sP.X), mMin(miY,sP.Y), mMax(maY,sP.Y) end 
                            end
                            
                            if bOS then 
                                local w, boxH, bX, bY = maX-miX, maY-miY, miX, miY
                                local ss, ps = v2(w,boxH), v2(bX,bY)
                                local sB, sCBox = sT.ESPBoxes, sT.ESPBoxesCorners
                                
                                if o.Box and o.BoxOutline then o.Box.Visible, o.BoxOutline.Visible = sB, sB; if sB then o.Box.Size, o.Box.Position, o.Box.Color, o.BoxOutline.Size, o.BoxOutline.Position = ss, ps, tC, ss, ps end end
                                if o.CornerBoxes then 
                                    for _,l in pairs(o.CornerBoxes) do if l then l.Visible=sCBox end end
                                    if sCBox then 
                                        local ln = mClamp(w/4,4,20)
                                        local cn = {{v2(bX,bY),v2(bX+ln,bY)},{v2(bX,bY),v2(bX,bY+ln)},{v2(bX+w,bY),v2(bX+w-ln,bY)},{v2(bX+w,bY),v2(bX+w,bY+ln)},{v2(bX,bY+boxH),v2(bX+ln,bY+boxH)},{v2(bX,bY+boxH),v2(bX,bY+boxH-ln)},{v2(bX+w,bY+boxH),v2(bX+w-ln,bY+boxH)},{v2(bX+w,bY+boxH),v2(bX+w,bY+boxH-ln)}}
                                        for i,l in ipairs(o.CornerBoxes) do if l then l.From, l.To, l.Color, l.Visible = cn[i][1], cn[i][2], tC, true end end 
                                    end 
                                end
                                
                                local sH = sT.HeadDots and hd
                                if o.HeadDot then 
                                    o.HeadDot.Visible = sH and true or false
                                    if sH then local hdP,hdO = Cam:WorldToViewportPoint(hd.Position) if hdO and hdP.Z>0 then o.HeadDot.Position, o.HeadDot.Color = v2(hdP.X,hdP.Y), tC else o.HeadDot.Visible=false end end 
                                end
                                
                                if o.Bones then 
                                    local bM = c:FindFirstChild("UpperTorso") and bM15 or bM6
                                    for i,bL in ipairs(o.Bones) do 
                                        if bL then 
                                            local cn = bM[i]
                                            if sT.ESPSkeletons and cn then 
                                                local pA, pB = c:FindFirstChild(cn[1]), c:FindFirstChild(cn[2])
                                                if pA and pB then 
                                                    pA, pB = Cam:WorldToViewportPoint(pA.Position), Cam:WorldToViewportPoint(pB.Position)
                                                    if pA.Z>0 and pB.Z>0 then bL.From, bL.To, bL.Color, bL.Visible = v2(pA.X,pA.Y), v2(pB.X,pB.Y), tC, true else bL.Visible=false end 
                                                else bL.Visible=false end 
                                            else bL.Visible=false end 
                                        end 
                                    end 
                                end
                                
                                if o.Name then o.Name.Visible=sT.ESPNames if sT.ESPNames then o.Name.Text, o.Name.Position = pO.Name, v2(bX+(w/2), bY-15) end end
                                local bO = 2
                                if o.Distance then o.Distance.Visible=sT.ESPDistance if sT.ESPDistance then o.Distance.Text = mFloor((cP-rP.Position).Magnitude).."m"; o.Distance.Position=v2(bX+(w/2),bY+boxH+bO); bO=bO+14 end end
                                if o.Weapon then o.Weapon.Visible=sT.Weapon if sT.Weapon then local wN=pWC[pO.Name] or gEW(c) o.Weapon.Text = "["..(wN~="" and wN or "Unknown").."]"; o.Weapon.Position, o.Weapon.Color = v2(bX+(w/2),bY+boxH+bO), tC; bO=bO+14 end end
                                if o.Health and o.HealthOutline then 
                                    local hC = c:FindFirstChildOfClass("Humanoid")
                                    local maxHP = c:GetAttribute("MaxHealth") or (hC and hC.MaxHealth and hC.MaxHealth>0 and hC.MaxHealth) or 100
                                    local curHP = c:GetAttribute("Health") or (hC and hC.Health) or 0
                                    local showHP = sT.ESPHealth and curHP>0 and maxHP>0
                                    o.Health.Visible, o.HealthOutline.Visible = showHP, showHP
                                    if showHP then 
                                        local hpC = mClamp(curHP/maxHP,0,1); local hH = boxH*hpC
                                        o.Health.Color = Color3.fromHSV(0.333 * hpC, 1, 1)
                                        o.Health.Transparency, o.HealthOutline.Transparency, o.HealthOutline.Position, o.HealthOutline.Size = 1, 0.5, v2(bX-1,bY-1), v2(4,boxH+2)
                                        o.Health.Position, o.Health.Size = v2(bX,bY+(boxH-hH)), v2(2,hH) 
                                    end 
                                end
                                if o.Tracer then if sT.Tracers and on and rPos.Z>0 then o.Tracer.From, o.Tracer.To, o.Tracer.Color, o.Tracer.Thickness, o.Tracer.Transparency, o.Tracer.Visible = v2(vS.X/2,vS.Y), v2(bX+(w/2),bY+boxH), tC, 1, 1, true else o.Tracer.Visible=false end end 
                            else sEV(o, false) end 
                        else sEV(o, false) end 
                    end 

                    if (sT.BigHead or sT.RainbowHeads) and a then 
                        local hd = c:FindFirstChild("Head")
                        if hd and hd:IsA("BasePart") then 
                            if not mHeads[hd] then
                                mHeads[hd]={Size=hd.Size,Color=hd.Color,Material=hd.Material}
                                local hum = c:FindFirstChildOfClass("Humanoid")
                                if hum then
                                    hum.Died:Connect(function()
                                        local d = mHeads[hd]
                                        if d then
                                            if hd and hd.Parent then hd.Size,hd.Color,hd.Material=d.Size,d.Color,d.Material end
                                            mHeads[hd]=nil
                                        end
                                    end)
                                end
                            end
                            if sT.BigHead and hd.Size~=hS then hd.Size=hS end
                            if sT.RainbowHeads then hd.Color=Color3.fromHSV(tick()%5/5,1,1) end 
                        end 
                    end 
                end
            end
        end
    end

    for p, d in pairs(mHeads) do 
        local charModel = p and p.Parent
        local espActive = sT.Esp and charModel and isValidTarget(charModel) and (function() local pO = P:FindFirstChild(charModel.Name) return pO and espI[pO] ~= nil end)()
        local shouldReset = not (sT.BigHead or sT.RainbowHeads) or not espActive
        if shouldReset then
            if p and p.Parent then p.Size, p.Color, p.Material = d.Size, d.Color, d.Material end
            mHeads[p] = nil
        else
            if not sT.BigHead then p.Size=d.Size end
            if not sT.RainbowHeads then p.Color=d.Color end
        end
    end 
end))

-- [ SKIN CHANGER / FRYZE CAM ] --
local fcTargetColor, fcTargetMaterial, fcTargetTransparency = c3(180, 100, 240), E.Material.ForceField, 0.1
local fcOriginalData, fcActiveParts, fcPartSet, fcRenderConnection, fcCurrentTargetModel = {}, {}, {}, nil, nil

local function fcGetTargetModel()
    if not Cam then return nil end
    for _, child in ipairs(Cam:GetChildren()) do
        if child:IsA("Model") and child.PrimaryPart and child.PrimaryPart.Name == "HumanoidRootPart" then
            return child
        end
    end
    return nil
end

local function fcTrackPart(part)
    if not part:IsA("BasePart") or fcPartSet[part] then return end
    local targetModel = fcGetTargetModel()
    if not targetModel or not part:IsDescendantOf(targetModel) then return end
    local curr = part
    while curr and curr ~= targetModel do if curr.Name == "ViewmodelLight" or curr.Name == "Hitbox" then return end curr = curr.Parent end
    fcPartSet[part] = true table.insert(fcActiveParts, part)
    if not fcOriginalData[part] then
        fcOriginalData[part] = {Material = part.Material, Transparency = part.Transparency, Color = part.Color, SurfaceAppearances = {}}
        for _, child in ipairs(part:GetChildren()) do if child:IsA("SurfaceAppearance") then table.insert(fcOriginalData[part].SurfaceAppearances, child) child.Parent = nil end end
    end
end

local function fcUntrackPart(part)
    if fcPartSet[part] then
        fcPartSet[part] = nil
        for i = #fcActiveParts, 1, -1 do if fcActiveParts[i] == part then table.remove(fcActiveParts, i) break end end
        local data = fcOriginalData[part]
        if data then
            if part.Parent then part.Material, part.Transparency, part.Color = data.Material, data.Transparency, data.Color for _, sa in ipairs(data.SurfaceAppearances) do if sa and sa.Parent == nil then sa.Parent = part end end end
            fcOriginalData[part] = nil
        end
    end
end

local function fcRestoreAll()
    for part, data in pairs(fcOriginalData) do if part and part.Parent then part.Material, part.Transparency, part.Color = data.Material, data.Transparency, data.Color for _, sa in ipairs(data.SurfaceAppearances) do if sa and sa.Parent == nil then sa.Parent = part end end end end
    table.clear(fcOriginalData) table.clear(fcActiveParts) table.clear(fcPartSet) fcCurrentTargetModel = nil
end

local function fcStopChanger() if fcRenderConnection then fcRenderConnection:Disconnect() fcRenderConnection = nil end fcRestoreAll() end
local function fcStartChanger()
    fcStopChanger()
    fcRenderConnection = RS.RenderStepped:Connect(function()
        local targetModel = fcGetTargetModel()
        if targetModel ~= fcCurrentTargetModel then fcRestoreAll() fcCurrentTargetModel = targetModel end
        if targetModel then
            for _, obj in ipairs(targetModel:GetDescendants()) do
                if obj:IsA("BasePart") and not fcPartSet[obj] then fcTrackPart(obj)
                elseif obj:IsA("SurfaceAppearance") and obj.Parent and fcPartSet[obj.Parent] then table.insert(fcOriginalData[obj.Parent].SurfaceAppearances, obj) obj.Parent = nil end
            end
        end
        for i = #fcActiveParts, 1, -1 do local part = fcActiveParts[i] if part and part.Parent and part:IsDescendantOf(targetModel) then part.Material, part.Color, part.Transparency = fcTargetMaterial, fcTargetColor, fcTargetTransparency else fcUntrackPart(part) end end
    end)
end

do
    if not RepS:FindFirstChild("database") then new("Folder",{Name="database",Parent=RepS}) end

    local scCfg = {
        KnifeChanger = {Enabled=false, Model="Karambit"},
        GloveChanger = {Enabled=false, Model="Sports Gloves", Gloves={["Sports Gloves"]="Vice"}},
        SkinChanger  = {Enabled=false, Skins={["Karambit"]="Fade",["M9 Bayonet"]="Lore",["Butterfly Knife"]="Vanilla",["AK-47"]="Case Hardened",["AWP"]="Dragon Lore"}},
        CurrentWeapon = "AK-47"
    }

    local SD = {SkinsRoot=nil, SkinSelections={}, GloveSelections={}, GloveFolders={}}
    pcall(function() SD.SkinsRoot = RepS:FindFirstChild("Assets") and RepS.Assets:FindFirstChild("Skins") end)
    if SD.SkinsRoot then
        pcall(function()
            for _,wf in ipairs(SD.SkinsRoot:GetChildren()) do
                local sk={} for _,sf in ipairs(wf:GetChildren()) do sk[#sk+1]=sf.Name end
                table.sort(sk) SD.SkinSelections[wf.Name]=sk
            end
            for _,folder in ipairs(SD.SkinsRoot:GetChildren()) do
                if (folder.Name:match("Glove") or folder.Name:match("Gloves") or folder.Name=="Hand Wraps")
                   and not (folder.Name:match("T Glove") or folder.Name:match("CT Glove") or folder.Name:match("T Gloves") or folder.Name:match("CT Gloves")) then
                    SD.GloveFolders[#SD.GloveFolders+1]=folder
                end
            end
        end)
    end
    for _,gf in ipairs(SD.GloveFolders) do
        local sk={"Default"} for _,s in ipairs(gf:GetChildren()) do sk[#sk+1]=s.Name end
        SD.GloveSelections[gf.Name]=sk
    end

    local function SafeReq(m) if not m or not m:IsA("ModuleScript") then return nil end local ok,r=pcall(require,m) return ok and r or nil end
    local function CkKnife(w) if not w then return false end local n=typeof(w)=="Instance" and w.Name or tostring(w) return n:find("Knife") or n:find("Bayonet") or n:find("Karambit") or n:find("Kukri") or n:find("Dagger") or n=="Knife" end

    local skinHooked = false
    local function InitSCHooks()
        if skinHooked then return end
        pcall(function()
            local DB=RepS:FindFirstChild("Database") or RepS:FindFirstChild("database")
            local SM=DB and DB:FindFirstChild("Components") and DB.Components:FindFirstChild("Libraries") and DB.Components.Libraries:FindFirstChild("Skins")
            local VM=RepS:FindFirstChild("Classes") and RepS.Classes:FindFirstChild("WeaponComponent") and RepS.Classes.WeaponComponent:FindFirstChild("Classes") and RepS.Classes.WeaponComponent.Classes:FindFirstChild("Viewmodel")
            if not SM or not VM then return end
            local Sk,Vm = SafeReq(SM),SafeReq(VM) if type(Sk)~="table" or type(Vm)~="table" then return end
            local oGCM,oGChM,oVN,oGG = Sk.GetCameraModel,Sk.GetCharacterModel,Vm.new,Sk.GetGloves
            if oGCM then Sk.GetCameraModel=function(w,sk,...) if scCfg.KnifeChanger.Enabled and w and CkKnife(w) then local s,r=pcall(oGCM,scCfg.KnifeChanger.Model,scCfg.SkinChanger.Skins[scCfg.KnifeChanger.Model] or "Vanilla",...) if s and r then return r end elseif scCfg.SkinChanger.Enabled and w and scCfg.SkinChanger.Skins[tostring(w)] then local s,r=pcall(oGCM,w,scCfg.SkinChanger.Skins[tostring(w)],...) if s and r then return r end end local s,r=pcall(oGCM,w,sk,...) return s and r or nil end end
            if oGChM then Sk.GetCharacterModel=function(w,sk,...) if scCfg.KnifeChanger.Enabled and w and CkKnife(w) then local s,r=pcall(oGChM,scCfg.KnifeChanger.Model,scCfg.SkinChanger.Skins[scCfg.KnifeChanger.Model] or "Vanilla",...) if s and r then return r end elseif scCfg.SkinChanger.Enabled and w and scCfg.SkinChanger.Skins[tostring(w)] then local s,r=pcall(oGChM,w,scCfg.SkinChanger.Skins[tostring(w)],...) if s and r then return r end end local s,r=pcall(oGChM,w,sk,...) return s and r or nil end end
            if oVN then Vm.new=function(vc,w,sk,...) if scCfg.KnifeChanger.Enabled and w and CkKnife(w) then local s,r=pcall(oVN,vc,scCfg.KnifeChanger.Model,scCfg.SkinChanger.Skins[scCfg.KnifeChanger.Model] or "Vanilla",...) if s and r then return r end elseif scCfg.SkinChanger.Enabled and w and scCfg.SkinChanger.Skins[tostring(w)] then local s,r=pcall(oVN,vc,w,scCfg.SkinChanger.Skins[tostring(w)],...) if s and r then return r end end local s,r=pcall(oVN,vc,w,sk,...) return s and r or nil end end
            if oGG then Sk.GetGloves=function(g,sk) if scCfg.GloveChanger.Enabled and scCfg.GloveChanger.Model then local s,r=pcall(oGG,scCfg.GloveChanger.Model,scCfg.GloveChanger.Gloves[scCfg.GloveChanger.Model] or "Vanilla") if s and r then return r end end local s,r=pcall(oGG,g,sk) return s and r or nil end end
            skinHooked=true
        end)
    end

    local SAVE_KEY = "fryze_sc_v202"
    local SCEnabled = false
    local KNIVES = {["Karambit"]=1,["Butterfly Knife"]=1,["Flip Knife"]=1,["Gut Knife"]=1,["M9 Bayonet"]=1,["Skeleton Knife"]=1,["Stiletto Knife"]=1,["Kukri Knife"]=1}
    local GLOVES = {["Driver Gloves"]=1,["Sports Gloves"]=1,["Operator Gloves"]=1,["Hand Wraps"]=1,["Specialist Gloves"]=1,["Moto Gloves"]=1}
    local Skins = {}
    for w,s in pairs(SD.SkinSelections) do Skins[w]=s[1] or "Default" end

    local function SaveSkins() pcall(function() if writefile then local t={} for k,v in pairs(Skins) do t[#t+1]=k.."="..v end writefile(SAVE_KEY..".txt",table.concat(t,"\n")) end end) end
    local function LoadSkins() pcall(function() if readfile and isfile and isfile(SAVE_KEY..".txt") then for line in readfile(SAVE_KEY..".txt"):gmatch("[^\n]+") do local k,v=line:match("^(.-)=(.+)$") if k and v and Skins[k]~=nil then Skins[k]=v end end end end) end
    LoadSkins()
    for k,v in pairs(Skins) do scCfg.SkinChanger.Skins[k]=v end

    local function GetWepModel() if not Cam then return end for _,ch in ipairs(Cam:GetChildren()) do if ch:IsA("Model") and not ch.Name:match("^Arms") and ch.Name~="Viewmodel" then return ch end end end
    local function ApplySkin()
        if not SCEnabled or not SD.SkinsRoot then return end
        local wm=GetWepModel() if not wm then return end
        local sel=Skins[wm.Name] if not sel or sel=="Default" or wm:GetAttribute("SC_Skin")==sel then return end
        local sf=SD.SkinsRoot:FindFirstChild(wm.Name) and SD.SkinsRoot[wm.Name]:FindFirstChild(sel)
        local fn=sf and sf:FindFirstChild("Camera") and sf.Camera:FindFirstChild("Factory New")
        if not fn then return end
        for _,sa in ipairs(fn:GetChildren()) do
            if sa:IsA("SurfaceAppearance") then
                local pt=wm:FindFirstChild(sa.Name,true)
                if pt and (pt:IsA("BasePart") or pt:IsA("MeshPart")) then
                    for _,old in ipairs(pt:GetChildren()) do if old:IsA("SurfaceAppearance") then old:Destroy() end end
                    sa:Clone().Parent=pt
                end
            end
        end
        wm:SetAttribute("SC_Skin",sel)
    end
    local scDeb=false
    local function TryApply() if scDeb then return end scDeb=true task.spawn(function() task.wait(0.2) pcall(ApplySkin) task.wait(0.3) scDeb=false end) end

    local SC_Conns={} local function SC_AC(c) if c then table.insert(SC_Conns,c) table.insert(conns,c) end end
    local function SC_Safe(f) return function(...) pcall(f,...) end end
    if getgenv and getgenv().SC_Cleanup then pcall(getgenv().SC_Cleanup) end
    task.spawn(SC_Safe(function() while true do if Cam then SC_AC(Cam.ChildAdded:Connect(SC_Safe(function() if SCEnabled then TryApply() end end))) break end task.wait(1) end end))
    pcall(function() SC_AC(workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(SC_Safe(function() if Cam then SC_AC(Cam.ChildAdded:Connect(SC_Safe(function() if SCEnabled then TryApply() end end))) end end))) end)
    if getgenv then getgenv().SC_Cleanup=function() for _,c in ipairs(SC_Conns) do pcall(function() c:Disconnect() end) end table.clear(SC_Conns) if getgenv then getgenv().SC_Cleanup=nil end end end

    local C = {Row=c3(28,28,28), Accent=c3(180,100,240), Text=c3(255,255,255), Dim=c3(140,140,140)}
    local WeaponList={} for w in pairs(SD.SkinSelections) do if not KNIVES[w] and not GLOVES[w] then WeaponList[#WeaponList+1]=w end end table.sort(WeaponList)

    -- Use the tab's ScrollingFrame as the container; disable its own scrolling so our inner frame handles it
    local tabCont = tabs["Skin Changer"].P
    tabCont.CanvasSize = u2(0,0,0,0)
    tabCont.ScrollBarThickness = 0
    tabCont.ScrollingEnabled = false

    -- Search bar
    local SearchBox = new("TextBox", {Parent=tabCont, Size=u2(1,-10,0,24), Position=u2(0,5,0,5), PlaceholderText="Search For Weapons...", Text="", Font=E.Font.Arial, TextSize=12, TextColor3=C.Text, PlaceholderColor3=C.Dim, BackgroundColor3=C.Row, BorderSizePixel=0, ClearTextOnFocus=false})
    new("UICorner",{Parent=SearchBox,CornerRadius=ud(0,3)})

    -- Skin Changer toggle
    mT(tabCont, 33, "Skin Changer", false, function(v)
        scCfg.SkinChanger.Enabled, SCEnabled = v, v
        if v then InitSCHooks(); TryApply() end
    end)

    -- Fryze Cam toggle
    mT(tabCont, 60, "Fryze Cam", false, function(v)
        if v then fcStartChanger() else fcStopChanger() end
    end)

    -- Weapon list scroll frame, positioned below the two toggles and search bar
    local Scroll = new("ScrollingFrame", {Parent=tabCont, Size=u2(1,-2,1,-93), Position=u2(0,1,0,88), BackgroundTransparency=1, ScrollBarThickness=3, BorderSizePixel=0, ScrollBarImageColor3=C.Accent, CanvasSize=u2(0,0,0,0)})
    new("UIListLayout",{Parent=Scroll})
    new("UIPadding",{Parent=Scroll,PaddingTop=ud(0,2)})

    local OpenDDFrame, Rows = nil, {}

    local function BuildRow(wName)
        local skins=SD.SkinSelections[wName] if not skins or #skins==0 then return end

        local F = new("Frame", {Parent=Scroll, Size=u2(1,0,0,24), BackgroundTransparency=1, BorderSizePixel=0})
        local WL = new("TextLabel", {Parent=F, Text=wName, Font=E.Font.Arial, TextSize=12, TextColor3=C.Text, Size=u2(0,120,1,0), BackgroundTransparency=1, TextXAlignment=E.TextXAlignment.Left, TextStrokeTransparency=0, TextStrokeColor3=c3(0,0,0)})
        new("UIPadding",{Parent=WL,PaddingLeft=ud(0,6)})

        local SelBtn = new("TextButton", {Parent=F, Size=u2(1,-128,1,-4), Position=u2(0,122,0,2), Text=Skins[wName] or skins[1], Font=E.Font.Arial, TextSize=11, TextColor3=C.Text, BackgroundColor3=C.Row, BorderSizePixel=0, TextTruncate=E.TextTruncate.AtEnd, AutoButtonColor=false})
        new("UICorner",{Parent=SelBtn,CornerRadius=ud(0,3)})

        new("Frame", {Parent=F, Size=u2(1,-8,0,1), Position=u2(0,4,1,-1), BackgroundColor3=c3(38,38,38), BorderSizePixel=0})

        local DDFrame = new("ScrollingFrame", {Parent=sg, Visible=false, ZIndex=50, BorderSizePixel=0, ScrollBarThickness=3, ScrollBarImageColor3=C.Accent, BackgroundColor3=c3(22,22,22)})
        new("UIStroke",{Parent=DDFrame,Color=c3(60,60,60)})
        new("UIListLayout",{Parent=DDFrame})

        local builtDD = false
        local function BuildDD()
            if builtDD then return end builtDD=true
            for _,opt in ipairs(skins) do
                local OB=new("TextButton",{Parent=DDFrame,Size=u2(1,0,0,18),Text=" "..opt,Font=E.Font.Arial,TextSize=11,TextColor3=C.Text,BackgroundTransparency=1,TextXAlignment=E.TextXAlignment.Left,ZIndex=51})
                OB.MouseButton1Down:Connect(function()
                    Skins[wName],SelBtn.Text = opt,opt
                    DDFrame.Visible,OpenDDFrame = false,nil
                    SaveSkins()
                    scCfg.SkinChanger.Skins[wName]=opt
                    if scCfg.SkinChanger.Enabled then InitSCHooks() end
                    if SCEnabled then
                        local wm=GetWepModel() if wm then pcall(function() wm:SetAttribute("SC_Skin",nil) end) end
                        pcall(TryApply)
                    end
                end)
            end
            DDFrame.CanvasSize=u2(0,0,0,#skins*18)
        end

        SelBtn.MouseButton1Down:Connect(function()
            if OpenDDFrame and OpenDDFrame~=DDFrame then OpenDDFrame.Visible=false end
            DDFrame.Visible=not DDFrame.Visible
            if DDFrame.Visible then
                BuildDD()
                OpenDDFrame=DDFrame
                local ap=SelBtn.AbsolutePosition
                DDFrame.Size = u2(0,SelBtn.AbsoluteSize.X,0,mMin(#skins*18,130))
                DDFrame.Position = u2(0,ap.X,0,ap.Y+SelBtn.AbsoluteSize.Y+2)
            else OpenDDFrame=nil end
        end)

        Rows[#Rows+1]={name=wName,frame=F,selLabel=SelBtn,dropdown=DDFrame}
    end

    for _,wName in ipairs(WeaponList) do BuildRow(wName) end
    Scroll.CanvasSize=u2(0,0,0,#WeaponList*24+4)

    SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
        local q,v=SearchBox.Text:lower(),0
        for _,row in ipairs(Rows) do
            local show=(q=="" or row.name:lower():find(q,1,true))
            row.frame.Visible=show
            if not show and row.dropdown then row.dropdown.Visible=false end
            if show then v=v+1 end
        end
        Scroll.CanvasSize=u2(0,0,0,v*24+4)
    end)

    SC_AC(UIS.InputBegan:Connect(SC_Safe(function(inp,proc)
        if proc then return end
        if inp.UserInputType==E.UserInputType.MouseButton1 and OpenDDFrame then
            task.defer(function() if OpenDDFrame then OpenDDFrame.Visible=false OpenDDFrame=nil end end)
        end
    end)))
end

-- [ SILENT AIM ] --
do
    local saCurrentTarget = nil

    local saStatusDot = Drawing.new("Circle")
    saStatusDot.Radius = 6
    saStatusDot.Filled = true
    saStatusDot.NumSides = 30
    saStatusDot.Visible = true

    local saFovCircle = Drawing.new("Circle")
    saFovCircle.Thickness = 1.5
    saFovCircle.NumSides = 64
    saFovCircle.Filled = false
    saFovCircle.Color = Color3.fromRGB(170, 0, 255)
    saFovCircle.Visible = false

    local saTracer = Drawing.new("Line")
    saTracer.Thickness = 1.5
    saTracer.Color = Color3.fromRGB(170, 0, 255)
    saTracer.Visible = false

    local function saCleanup()
        pcall(function() saStatusDot:Remove() end)
        pcall(function() saFovCircle:Remove() end)
        pcall(function() saTracer:Remove() end)
    end

    local function saUpdateVisuals()
        saStatusDot.Color = sT.SilentAim and Color3.fromRGB(170, 0, 255) or Color3.fromRGB(255, 0, 0)
        saStatusDot.Position = Vector2.new(20, Cam.ViewportSize.Y / 2)

        saFovCircle.Visible = sT.SilentAim and sT.SAFovCircle
        if saFovCircle.Visible then
            saFovCircle.Position = Vector2.new(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y / 2)
            local fovRad = math.rad(sT.SAFOV / 2)
            local camFovRad = math.rad(Cam.FieldOfView / 2)
            saFovCircle.Radius = (Cam.ViewportSize.Y / 2) * (math.tan(fovRad) / math.tan(camFovRad))
        end

        if sT.SilentAim and saCurrentTarget and saCurrentTarget.Parent then
            local screenPos, onScreen = Cam:WorldToViewportPoint(saCurrentTarget.Position)
            if onScreen then
                saTracer.From = Vector2.new(Cam.ViewportSize.X / 2, Cam.ViewportSize.Y)
                saTracer.To = Vector2.new(screenPos.X, screenPos.Y)
                saTracer.Visible = true
            else
                saTracer.Visible = false
            end
        else
            saTracer.Visible = false
        end
    end

    table.insert(conns, RS.RenderStepped:Connect(saUpdateVisuals))

    table.insert(conns, UIS.InputBegan:Connect(function(input, gp)
        if gp then return end
        if input.KeyCode == sT.SAKey then
            sT.SilentAim = not sT.SilentAim
            saUpdateVisuals()
        end
    end))

    local function saGetCharacter(player)
        return player and ((workspace:FindFirstChild("Characters") and workspace.Characters:FindFirstChild(player.Name)) or player.Character)
    end

    local function saIsAlive(character)
        if not character then return false end
        if character:GetAttribute("Dead") then return false end
        local hp = character:GetAttribute("Health")
        return hp == nil or hp > 0
    end

    local function saIsObstructed(origin, target, character)
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances = {character, lp.Character}
        local ray = workspace:Raycast(origin, target - origin, params)
        return ray ~= nil and ray.Instance ~= nil and not ray.Instance:IsDescendantOf(character)
    end

    local function saGetTarget(origin)
        local localTeam = lp:GetAttribute("Team")
        local look = Cam.CFrame.LookVector
        local best, bestAngle = nil, math.rad(sT.SAFOV / 2)
        for _, player in ipairs(P:GetPlayers()) do
            if player == lp then continue end
            local character = saGetCharacter(player)
            if not saIsAlive(character) then continue end
            if sT.SATeamCheck and player:GetAttribute("Team") == localTeam then continue end
            local part = character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
            if not part then continue end
            local dir = (part.Position - origin).Unit
            local angle = math.acos(math.clamp(look:Dot(dir), -1, 1))
            if angle < bestAngle then
                if sT.SAWallCheck and saIsObstructed(origin, part.Position, character) then continue end
                best, bestAngle = part, angle
            end
        end
        saCurrentTarget = best
        return best
    end

    local function saBuildHit(origin, part)
        local dir = (part.Position - origin).Unit
        return {
            Distance = (part.Position - origin).Magnitude,
            Instance = part,
            Position = part.Position,
            Normal = -dir,
            Material = part.Material.Name,
            Exit = false
        }
    end

    task.spawn(function()
        local ok, Remotes = pcall(require, RepS:WaitForChild("Database", 10) and RepS.Database:WaitForChild("Security", 10) and RepS.Database.Security:WaitForChild("Remotes", 10))
        if not ok or not Remotes then
            ok, Remotes = pcall(require, RepS:FindFirstChild("Database") and RepS.Database:FindFirstChild("Security") and RepS.Database.Security:FindFirstChild("Remotes"))
        end
        local shootRemote = ok and Remotes and Remotes.Inventory and Remotes.Inventory.ShootWeapon
        if not shootRemote or not shootRemote.Send then
            warn("[Fryze] SilentAim: ShootWeapon remote not found.")
            return
        end
        local oldSend
        local function hookedSend(packet, ...)
            if sT.SilentAim and packet and packet.Bullets then
                for _, bullet in ipairs(packet.Bullets) do
                    local origin = bullet.Origin
                    if origin then
                        local part = saGetTarget(origin)
                        if part then
                            bullet.Direction = (part.Position - origin).Unit
                            bullet.Hits = {saBuildHit(origin, part)}
                        end
                    end
                end
            else
                saCurrentTarget = nil
            end
            return oldSend(packet, ...)
        end
        if typeof(hookfunction) == "function" then
            oldSend = hookfunction(shootRemote.Send, hookedSend)
        else
            oldSend = shootRemote.Send
            shootRemote.Send = hookedSend
        end
    end)

    table.insert(conns, {Disconnect = saCleanup})
end

sg.Destroying:Connect(function() 
    fcStopChanger() 
    for _,c in ipairs(conns) do if type(c)=="table" and c.Disconnect then c:Disconnect() elseif typeof(c)=="RBXScriptConnection" then c:Disconnect() end end table.clear(conns) 
    for p,_ in pairs(espI) do rE(p) end 
    for p,d in pairs(mHeads) do if p and p.Parent then p.Size,p.Color=d.Size,d.Color end end table.clear(mHeads) 
end)

end)