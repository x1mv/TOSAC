repeat wait() until game:IsLoaded()

local sturdy = "holder"

print('\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n TempleOS Alt Control \n \n \n Status: Loaded \n \n Your host is: '.. getgenv().Host)

local function chat(sturdy)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[TempleOS] ".. sturdy, "All")
end
