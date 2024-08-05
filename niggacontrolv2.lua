getgenv().Settings = {
    ["HostID"]  = 876596840,
    ["Prefix"]  = "/",
    ["FPS"]     = 3
};
getgenv().Alts = {
    3251813407,
    123,
    123,
};

game:GetService("RunService"):Set3dRenderingEnabled(true) -- Don't turn on with Emulator (ram will go up overtime)


local Services = { ["P"] = game:GetService("Players"), ["CG"] = game:GetService('CoreGui'), ["S"] = game:GetService("Stats"), ["RS"] = game:GetService("RunService"), ["HTTP"] = game:GetService("HttpService"), ["TS"] = game:GetService("TweenService"), ["RPS"] = game:GetService("ReplicatedStorage"), ["TPS"] = game:GetService("TeleportService"), ["UIS"] = game:GetService("UserInputService"), ["MPS"] = game:GetService("MarketplaceService") };

if not game:IsLoaded() then game.Loaded:Wait() end
if game["Players"]["LocalPlayer"]["UserId"] == getgenv().Settings["HostID"] then return else 

    local Client        = game["Players"]["LocalPlayer"]
    local REM           = game["ReplicatedStorage"]["MainEvent"]

    local findTPos    =table.find(Alts,Client["UserId"])
    if findTPos then
        getgenv()["Position"]=findTPos; print(getgenv()["Position"])
        
    else 
        --game["Players"]["LocalPlayer"]:Kick(); game["CoreGui"]["RobloxPromptGui"]["promptOverlay"]:WaitForChild("ErrorPrompt")["MessageArea"]["ErrorFrame"]["ErrorMessage"].Text = "UserId not found" return; 
        return warn("Not in Alts")
    end
    
    local _warlock0666 = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local UsernameLabel = Instance.new("TextLabel")
    
    _warlock0666.Name = "_warlock0666"
    _warlock0666.Parent = game.CoreGui
    
    Frame.Parent = _warlock0666
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(1.5, 0, 1.5, 0)
    
    TextLabel.Parent = Frame
    TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
    TextLabel.BackgroundTransparency = 1.0
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.5, 0, 0.475, 0)  -- Adjusted position to make room for username
    TextLabel.Size = UDim2.new(0.4, 0, 0.1, 0)  -- Adjusted size to scale with screen size
    TextLabel.Font = Enum.Font.Roboto
    TextLabel.Text = "Tweaked Crostide :3"
    TextLabel.TextColor3 = Color3.fromRGB(68, 68, 68)
    TextLabel.TextScaled = true
    TextLabel.TextStrokeTransparency = 0.0
    TextLabel.TextWrapped = true
    
    UsernameLabel.Parent = Frame
    UsernameLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    UsernameLabel.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
    UsernameLabel.BackgroundTransparency = 1.0
    UsernameLabel.BorderSizePixel = 0
    UsernameLabel.Position = UDim2.new(0.5, 0, 0.6, 0)  -- Positioned below the first TextLabel
    UsernameLabel.Size = UDim2.new(0.4, 0, 0.1, 0)  -- Adjusted size to scale with screen size
    UsernameLabel.Font = Enum.Font.Roboto
    UsernameLabel.Text = game.Players.LocalPlayer.Name
    UsernameLabel.TextColor3 = Color3.fromRGB(68, 68, 68)
    UsernameLabel.TextScaled = true
    UsernameLabel.TextStrokeTransparency = 0.0
    UsernameLabel.TextWrapped = true
    
    -- Create another TextLabel to show the MoneyText
    local MoneyLabel = Instance.new("TextLabel")
    MoneyLabel.Parent = Frame
    MoneyLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    MoneyLabel.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
    MoneyLabel.BackgroundTransparency = 1.0
    MoneyLabel.BorderSizePixel = 0
    MoneyLabel.Position = UDim2.new(0.5, 0, 0.7, 0)  -- Positioned below the UsernameLabel
    MoneyLabel.Size = UDim2.new(0.4, 0, 0.1, 0)  -- Adjusted size to scale with screen size
    MoneyLabel.Font = Enum.Font.Roboto
    MoneyLabel.Text = game.Players.LocalPlayer.PlayerGui.MainScreenGui.MoneyText.Text
    MoneyLabel.TextColor3 = Color3.fromRGB(68, 68, 68)
    MoneyLabel.TextScaled = true
    MoneyLabel.TextStrokeTransparency = 0.0
    MoneyLabel.TextWrapped = true
    

    
    local vu = game:GetService("VirtualUser"); game:GetService("Players").LocalPlayer.Idled:connect(function() vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) end)
    for i=1,2 do setfpscap(Settings["FPS"]); end settings()["Rendering"]["QualityLevel"] = "Level01"; settings()["Physics"]["PhysicsEnvironmentalThrottle"] = 1; UserSettings():GetService('UserGameSettings')["MasterVolume"] = 0;

    task.spawn(function()
        repeat task.wait() until game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
        task.wait(0.1)
        game:WaitForChild("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false); Client["Character"]["HumanoidRootPart"]["CFrame"] = CFrame.new(-870, -38, -586); loadstring(game:HttpGet("https://raw.githubusercontent.com/6mf/lua-scripts/main/AC"))()
    end)

    local AnchorFlag
    getgenv().GRAV=192.2

    local Bools={
        Dropping    =false,
        delCash     =false,
        canVelocity =true,
        isBusy      =false
    };

    local function chat(x)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(x, 'All')
    end

    local function getPlr(str)
        for _,v in pairs(game["Players"]:GetPlayers()) do
            if v["Name"]:lower():find(str:lower()) or v["DisplayName"]:lower():find(str:lower()) then
                if v ~= game["Players"]["LocalPlayer"] then
                    return v
                end
            end
        end
    end;

    local teleports = {
        ["admin"] = "-871, -32, -653", ["train"] = '611, 47, -103', ["bank"] = '-374, 21, -348', ["club"] = '-264, 0, -320',
    };

    local setups={
        bank={"-390, 24, -330.5","-380, 24, -330.5","-370, 24, -330.5","-360, 24, -330.5","-390, 24, -320.5","-380, 24, -320.5","-370, 24, -320.5","-360, 24, -320.5","-390, 24, -310.5","-380, 24, -310.5","-370, 24, -310.5","-360, 24, -310.5","-390, 24, -300.5","-380, 24, -300.5","-370, 24, -300.5","-360, 24, -300.5","-390, 24, -290.5","-380, 24, -290.5","-370, 24, -290.5","-360, 24, -290.5","-390, 24, -280.5","-380, 24, -280.5","-370, 24, -280.5","-360, 24, -280.5","-390, 24, -270.5","-380, 24, -270.5","-370, 24, -270.5","--360, 24, -270.5","-391, 24, -260.5","-381, 24, -260.5","-371, 24, -260.5","-361, 24, -260.5","-390, 24, -250.5","-380, 24, -250.5","-370, 24, -250.5","-909, -39, -619","-360, 24, -250.5","-390, 24, -240.5"},
        club={"-292, -8, -406","-282, -8, -406","-272, -8, -406","-262, -8, -406","-252, -8, -406","-242, -8, -406","-292, -8, -398","-282, -8, -398","-272, -8, -398","-262, -8, -398","-252, -8, -398","-252, -8, -398","-242, -8, -398","-292, -8, -390","-282, -8, -390","-272, -8, -390","-262, -8, -390","-252, -8, -390","-242, -8, -390","-292, -8, -381","-282, -8, -381","-272, -8, -381","-262, -8, -381","-252, -8, -381","-242, -8, -381","-292, -8, -373","-282, -8, -373","-272, -8, -373","-262, -8, -373","-252, -8, -373","-242, -8, -373","-292, -8, -365","-282, -8, -365","-272, -8, -365","-262, -8, -365","-252, -8, -365","-242, -8, -365","-292, -8, -357"},
    };


    local hostsetups={ 
        around={"0,0,2.5","2.5,0,0","0,0,-2.5","-2.5,0,0","-1.25,0,1.25","1.25,0,1.25","-1.25,0,-1.25","1.25,0,-1.25","-3,0,2.75","3,0,2.75","-3,0,-2.75","3,0,-2.75","-4,0,1.25","4,0,1.25","-4,0,-1.25","4,0,-1.25","-4,0,4","-1.5,0,4","1.5,0,4","4,0,4","-4,0,-4","-1.5,0,-4","1.5,0,-4","4,0,-4","7,0,4","7,0,1.25","7,0,-1.25","7,0,-4","7,0,4","7,0,1.25","7,0,-1.25","7,0,-4","0,0,-6","3,0,-6","-3,0,-6","0,0,6","3,0,6","-3,0,6"}
    };
    
    local function afterKnock(plr, state, x)
        local Target = plr
        repeat task.wait()
            pcall(function()
                game:GetService('TweenService'):Create(Client.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear), { CFrame = CFrame.new(Target.Character.UpperTorso.Position) + Vector3.new(0, 2, 0)}):Play()
                for i=1,2 do
                    if state == true then
                        if not plr["Character"]:FindFirstChild("GRABBING_CONSTRAINT") then
                            REM:FireServer("Grabbing",false)
                            task.wait(0.5)
                        end
                    elseif state == false then
                        REM:FireServer('Stomp')
                    end
                end
            end)
        until plr["Character"]:FindFirstChild("GRABBING_CONSTRAINT") or Target.Character.BodyEffects["Dead"].Value == true or Target.Character.BodyEffects["K.O"].Value == false
        if plr["Character"]:FindFirstChild("GRABBING_CONSTRAINT") then
            if x == "admin" then
                Client["Character"]["HumanoidRootPart"]["CFrame"]=CFrame.new(table.unpack(teleports["admin"]:gsub(" ",""):split(",")))
            else
                Client["Character"]["HumanoidRootPart"]["CFrame"]=CFrame.new(game["Players"]:GetPlayerByUserId(Settings["HostID"]).Character.HumanoidRootPart.Position)
            end
            task.wait(1) REM:FireServer("Grabbing",false)
        end
            task.wait(1)
            if AnchorFlag then
                for i=1,2 do getgenv().GRAV = 0 end
                task.spawn(function() task.wait(0.05) Client["Character"]["HumanoidRootPart"]["Anchored"]=true task.wait(0.25) for i=1,2 do getgenv().GRAV = 192.2 end end)
                AnchorFlag=false
            end
            Client["Character"]["HumanoidRootPart"]["CFrame"]=oldPos; Bools["isBusy"]=false
    end;
    
    local function KnockPlr(plr, state, x)
        if Position == 1 then else return end
        local Target    =getPlr(plr)
        if Target then
            if Target.Character.BodyEffects["Dead"].Value == false then
                Bools["isBusy"]=true
                oldPos=Client["Character"]["HumanoidRootPart"]["CFrame"]
                if Client["Character"]["HumanoidRootPart"]["Anchored"] then AnchorFlag=true Client["Character"]["HumanoidRootPart"]["Anchored"]=false end
                pcall(function()
                    repeat task.wait()
                        if Client.Backpack:FindFirstChild("Combat") then 
                            Client.Backpack:FindFirstChild("Combat").Parent = Client["Character"]
                        end
                        if Target.Character.BodyEffects["K.O"].Value == false then
                            game:GetService('TweenService'):Create(Client.Character.HumanoidRootPart, TweenInfo.new(.05, Enum.EasingStyle.Linear), { CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)}):Play()
                            firetouchinterest(Client.Character['RightHand'], Target.Character.UpperTorso, 0);firetouchinterest(Client.Character['LeftHand'], Target.Character.UpperTorso, 0);firetouchinterest(Client.Character['RightFoot'], Target.Character.UpperTorso, 0);firetouchinterest(Client.Character['LeftFoot'], Target.Character.UpperTorso, 0);firetouchinterest(Client.Character['RightLowerLeg'], Target.Character.UpperTorso, 0);firetouchinterest(Client.Character['LeftLowerLeg'], Target.Character.UpperTorso, 0)
                            Client.Character:FindFirstChild("Combat"):Activate()
                        end
                    until Target.Character.BodyEffects["K.O"].Value == true or Target.Character.BodyEffects["Dead"].Value == true
                end)
                if Target.Character.BodyEffects["Dead"].Value == false and Target.Character.BodyEffects["K.O"].Value == true then task.wait(1); afterKnock(Target,state,x) else Client["Character"]["HumanoidRootPart"]["CFrame"]=oldPos; Bools["isBusy"]=false end
                if Client.Character:FindFirstChild("Combat") then Client.Character:FindFirstChild("Combat").Parent = Client["Backpack"] end
            end
        end
    end

    local function breakVel()
        local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
        delay(0.15, function() BeenASecond = true end)
        while not BeenASecond do
            for _, v in ipairs(Client['Character']:GetDescendants()) do
                if v.IsA(v, "BasePart") then
                    v.Velocity, v.RotVelocity = V3, V3
                end
            end; 
            task.wait()
        end
    end; 

    Services["RS"]["Stepped"]:Connect(function()
        game:GetService('Workspace').Gravity = getgenv().GRAV
        if Bools["Dropping"] and not Bools["isBusy"] then
            REM:FireServer("DropMoney",10000)
            REM:FireServer("Block",true)
        end
        pcall(function()
            if Bools["delCash"] then
                for i, v in pairs(game["Workspace"]["Ignored"]["Drop"]:GetChildren()) do
                    if v["Name"] == "MoneyDrop" then
                        v:Destroy(); 
                    end
                end
            end
            if Bools["canVelocity"] then
                breakVel()
            end
            Client["Character"]:WaitForChild('Humanoid'):ChangeState(11)
            for _,x in pairs(Client["Character"]:GetDescendants()) do
                if x:IsA("BasePart") and x["CanCollide"] == true and x["Name"] ~= floatName then
                    x["CanCollide"] = false
                end
            end
        end)
    end)

    local function handler(HostPlr, Message)
        local args = Message:split(' ')
        if args[1] == Settings['Prefix'].."test" then
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("✅", 'All')
        elseif args[1] == Settings['Prefix'].."wallet" and args[2] then
            if args[2] == "show" then 
                if Client["Backpack"]:FindFirstChild('Wallet') then
                    Client["Backpack"]:FindFirstChild('Wallet').Parent = Client["Character"]
                end 
            elseif args[2] == "hide" then 
                if Client["Character"]:FindFirstChild('Wallet') then
                    Client["Character"]:FindFirstChild('Wallet').Parent = Client["Backpack"]
                end 
            end
        elseif args[1] == Settings['Prefix'].."drop" then
            Bools["Dropping"] = true
        elseif args[1] == Settings['Prefix'].."stop" then
            Bools["Dropping"] = false 
            REM:FireServer("Block", false)
        elseif args[1] == Settings['Prefix'].."setup" and args[2] then
            if hostsetups[args[2]] then
                if Client["Character"]["HumanoidRootPart"]["Anchored"] then
                    Client["Character"]["HumanoidRootPart"]["Anchored"] = false 
                    task.wait(0.25)
                end
                for i = 1, 3 do
                    Client["Character"]["HumanoidRootPart"]["CFrame"] = HostPlr["Character"]["HumanoidRootPart"]["CFrame"] * CFrame.new(table.unpack(hostsetups[args[2]][Position]:gsub(" ", ""):split(",")))
                end
            elseif setups[args[2]] then
                if Client["Character"]["HumanoidRootPart"]["Anchored"] then
                    Client["Character"]["HumanoidRootPart"]["Anchored"] = false 
                    task.wait(0.25)
                end
                for i = 1, 3 do
                    Client["Character"]["HumanoidRootPart"]["CFrame"] = CFrame.new(table.unpack(setups[args[2]][Position]:gsub(" ", ""):split(",")))
                end
            else
                chat("Invalid")
            end
        elseif args[1] == Settings['Prefix'].."bring" and args[2] then
            if getPlr(args[2]) then
                local x
                if args[3] then x = args[3] end
                KnockPlr(args[2], true, x) 
            end
        elseif args[1] == Settings['Prefix'].."stomp" and args[2] then
            if getPlr(args[2]) then
                KnockPlr(args[2], false)
            end
        elseif args[1] == Settings['Prefix'].."airlock" then
            Bools["canVelocity"] = false
            for i = 1, 2 do
                getgenv().GRAV = 0
            end
            if Client["Character"]["HumanoidRootPart"]["Anchored"] then
                Client["Character"]["HumanoidRootPart"]["Anchored"] = false 
                task.wait(0.25)
            end
            Client["Character"]["HumanoidRootPart"]["CFrame"] = Client["Character"]["HumanoidRootPart"]["CFrame"] * CFrame.new(0, 6.5, 0)
            task.wait(0.5)
            Client["Character"]["HumanoidRootPart"]["Anchored"] = true
            for i = 1, 2 do
                getgenv().GRAV = 192.2
            end
            Bools["canVelocity"] = true
        elseif args[1] == Settings['Prefix'].."ground" then
            Bools["canVelocity"] = false
            for i = 1, 2 do
                getgenv().GRAV = 0
            end
            if Client["Character"]["HumanoidRootPart"]["Anchored"] then
                Client["Character"]["HumanoidRootPart"]["Anchored"] = false 
                task.wait(0.25)
            end
            Client["Character"]["HumanoidRootPart"]["CFrame"] = Client["Character"]["HumanoidRootPart"]["CFrame"] * CFrame.new(0, -6.5, 0)
            task.wait(0.25)
            Client["Character"]["HumanoidRootPart"]["Anchored"] = true  
            for i = 1, 2 do
                getgenv().GRAV = 192.2
            end
            Bools["canVelocity"] = true
        elseif args[1] == Settings['Prefix'].."unlock" then
            Client["Character"]["HumanoidRootPart"]["Anchored"] = false
        elseif args[1] == Settings['Prefix'].."lock" then
            Client["Character"]["HumanoidRootPart"]["Anchored"] = true
        elseif args[1] == Settings['Prefix'].."delcash" then
            if args[2] then
                if args[2] == "on" then
                    Bools["delCash"] = true
                    chat("Enabled")
                elseif args[2] == "off" then
                    Bools["delCash"] = false
                    chat("Disabled")
                else
                    chat("on/off")
                end
            else  
                chat("on/off ?")
            end
        elseif args[1] == Settings['Prefix'].."fps" then
            if tonumber(args[2]) then
                FPS = tonumber(args[2])
                if FPS > 0 then
                    for i = 1, 2 do
                        setfpscap(FPS)
                    end
                    chat('FPS set to '..FPS)
                else
                    chat('FPS must be greater than 0')
                end
            else
                chat('Invalid FPS')
            end
            elseif args[1] == Settings['Prefix'].."floss" then
                local Players = game:GetService("Players")
local humanoid = Players.LocalPlayer.Character.Humanoid

humanoid:PlayEmote("Floss")
            end
            if args[1] == Settings['Prefix'].."twice" then
                local Players = game:GetService("Players")
local humanoid = Players.LocalPlayer.Character.Humanoid

humanoid:PlayEmote("Twice")
            end
            if args[1] == Settings['Prefix'].."skip" then
                local Players = game:GetService("Players")
local humanoid = Players.LocalPlayer.Character.Humanoid

humanoid:PlayEmote("Skip")
            end
            if args[1] == Settings['Prefix'].."zombie" then
                local Players = game:GetService("Players")
local humanoid = Players.LocalPlayer.Character.Humanoid

humanoid:PlayEmote("Zombie")
            end
            if args[1] == Settings['Prefix'].."shuffle" then
                local Players = game:GetService("Players")
local humanoid = Players.LocalPlayer.Character.Humanoid
humanoid:PlayEmote("Shuffle")
            end
            if args[1] == Settings['Prefix'].."hero" then
                local Players = game:GetService("Players")
local humanoid = Players.LocalPlayer.Character.Humanoid
humanoid:PlayEmote("HeroFly")
            end
        end            

    game["ReplicatedStorage"]["DefaultChatSystemChatEvents"]["OnMessageDoneFiltering"]["OnClientEvent"]:Connect(function(x) 
        local plr,msg = game["Players"]:FindFirstChild(x.FromSpeaker),x.Message
        if plr["UserId"]==Settings["HostID"] then
            handler(plr,msg)
        end
    end) -- warlock#0666
end;

local Players = game:GetService("Players")
local humanoid = Players.LocalPlayer.Character.Humanoid
local humanoidDescription = humanoid.HumanoidDescription

local emoteTable = {
    ["Floss"] = {5917570207},
    ["Twice"] = {12874468267},
    ["Skip"] = {11309263077},
    ["Zombie"] = {4212496830},
    ["Shuffle"] = {17748346932},
    ["Hero"] = {3823158750},
}
humanoidDescription:SetEmotes(emoteTable)

-- Equip emotes in a specific order
local equippedEmotes = {"Floss", "Twice", "Skip", "Zombie", "Shuffle", "Hero",},
humanoidDescription:SetEquippedEmotes(equippedEmotes)