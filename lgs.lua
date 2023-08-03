local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "legends of speed hub",
   LoadingTitle = "Legends of speed hub",
   LoadingSubtitle = "by aiden_wc",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local Tab1 = Window:CreateTab("main", 4483362458) -- Title, Image
local Section1 = Tab1:CreateSection("main")


local Toggle = Tab1:CreateToggle({
    Name = "get orbs",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        while Value == true do
            wait(0.01)
            local args = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
            
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
        end
    end,
 })

 local Toggle = Tab1:CreateToggle({
    Name = "get gems",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        while Value == true do
            wait(0.01)
            local args = {
                [1] = "collectOrb",
                [2] = "Gem",
                [3] = "City"
            }
            
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            
        end
    end,
 })

 local Slider = Tab1:CreateSlider({
    Name = "speed",
    Range = {16, 1500},
    Increment = 1,
    Suffix = "speed",
    CurrentValue = 16,
    Flag = "speedSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value  
    end,
 })

 

 local Label = Tab1:CreateLabel("right shift to open/close")
