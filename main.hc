repeat wait() until game:IsLoaded() -- wait til game loaded

-- print status
print('\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n TempleOS Alt Control \n \n \n Status: Loaded \n \n Your host is: '.. getgenv().Host)

-- locals
local sturdy = "holder" -- message function holder
local selfposition = game.Players.LocalPlayer.Character.HumanoidRootPart -- localplayer position
local ws = game.Workspace -- workspace lol
local players, replicatedStorage = game:GetService("Players"), game:GetService("ReplicatedStorage");
local hostposition = players[getgenv().Host].Character.HumanoidRootPart -- host's current position
local defaultChatSystemChatEvents = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents");
local onMessageDoneFiltering = defaultChatSystemChatEvents:FindFirstChild("OnMessageDoneFiltering");
local localplayer = game.Players.LocalPlayer
local Character = localplayer.Character or localplayer.CharacterAdded:Wait()


-- functions
local function chat(sturdy)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[TempleOS] ".. sturdy, "All")
end


--main 


onMessageDoneFiltering.OnClientEvent:Connect(function(messageData)
    local speaker, message = players[messageData.FromSpeaker], messageData.Message
   
    if speaker.Name == Host and message == "%p" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        chat("pong, bot ".. localplayer.Name .." responded with True")
        end
        
        elseif speaker.Name == Host and message == "%rejoin" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        chat("rejoining.")
        game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
        end
        
        elseif speaker.Name == Host and message == "%hostrj" then
        if localplayer.Name == not getgenv().Host then
            print("not host, won't do command")
        else
        chat("rejoining.")
        game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
        end

        elseif speaker.Name == Host and message == "%bring" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
        selfposition.Position = hostposition.Position
        chat("teleported to host")    
        end

        elseif speaker.Name == Host and message == "%base" then
        selfposition.CFrame = CFrame.new(-1009.0736083984375, -3.6492016315460205, -1014.6502685546875)
        chat("teleported to base") 
        
        elseif speaker.Name == Host and message == "%dropper" then
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Raycodex/Exploiting/main/Roblox/Da%20Hood%20Auto%20Cash%20Drop"), true))()
        chat("loaded dhc dropper gui") 

        elseif speaker.Name == Host and message == "%air" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
    	lp.CFrame = CFrame.new(lp.Position.X, 35, lp.Position.Z)
    	wait(0.5)
    	lp.Anchored = true
        chat("airlock enabled") 
        end
        
        elseif speaker.Name == Host and message == "%unair" then
        if localplayer.Name == getgenv().Host then
            print("user is host, won't do command")
        else
    	lp.CFrame = CFrame.new(lp.Position.X, 0, lp.Position.Z)
    	wait(0.5)
    	lp.Anchored = false
        chat("airlock disabled") 
        end
        
        elseif speaker.Name == Host and message == "%help" then
        if localplayer.Name == getgenv().Host then
            chat("check your console (press F9)")
            print(" \n \n \n \n------------- \n \n commands list \n - %p (pings the bots, makes them chat so you can see which one is not online) \n - %rejoin (rejoins the bots) \n - %hostrj (rejoins the host) \n - %bring (brings all bots, really buggy) \n - %air (airlocks all the bots) \n - %unair (unairlocks all the bots) \n - %help (prints this help thingy) \n \n \n")
        else
        return
        end
end
end)



loadstring(game:HttpGet"https://raw.githubusercontent.com/x1mv/TOSAC/main/namedisplay.hc")() -- name & watermark
