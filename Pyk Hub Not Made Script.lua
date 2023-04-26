--loadstring(game:HttpGet(""))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local plr = game.Players.LocalPlayer
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Window = Library.CreateLib("Pyk Hub " .. gameName .. " (Not made script)", "RJTheme3")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("FullBright")
Section:NewButton("FullBright", "ButtonInfo", function()
pcall(function()
local lighting = game:GetService("Lighting");
lighting.Ambient = Color3.fromRGB(255, 255, 255);
lighting.Brightness = 1;
lighting.FogEnd = 1e10;
for i, v in pairs(lighting:GetDescendants()) do
if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
v.Enabled = false;
end;
end;
lighting.Changed:Connect(function()
lighting.Ambient = Color3.fromRGB(255, 255, 255);
lighting.Brightness = 1;
lighting.FogEnd = 1e10;
end);
spawn(function()
local character = game:GetService("Players").LocalPlayer.Character;
while wait() do
repeat wait() until character ~= nil;
if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
local headlight = Instance.new("PointLight", character.HumanoidRootPart);
headlight.Brightness = 1;
headlight.Range = 60;
end;
end;
end);
end)
end)
local Section = Tab:NewSection("Player")
Section:NewSlider("Walk Speed", "SliderInfo", 300, 16, function(s)
plr.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jump Power", "SliderInfo", 250, 50, function(s)
plr.Character.Humanoid.JumpPower = s
end)
Section:NewButton("GodMode", "ButtonInfo", function()
while game:GetService("RunService").RenderStepped:wait() do
plr.Character.Humanoid.Health = 100
end
end)
local Tab = Window:NewTab("Esp")
local Section = Tab:NewSection("Esp")
Section:NewButton("Players Esp", "ButtonInfo", function()
while wait(0.5) do
for i, childrik in ipairs(workspace:GetDescendants()) do
if childrik:FindFirstChild("Humanoid") then
if not childrik:FindFirstChild("EspBox") then
if childrik ~= game.Players.LocalPlayer.Character then
local esp = Instance.new("Highlight",childrik)
esp.Adornee = childrik
esp.FillColor = Color3.new(255,255,255)
esp.Name = "EspBox"
end
end
end
end
end
end)
local Tab = Window:NewTab("Test")
local Section = Tab:NewSection("Test")
Section:NewButton("Print Player", "ButtonInfo", function()
print(plr)
end)
Section:NewButton("Print Device", "ButtonInfo", function()
if game:GetService("UserInputService").TouchEnabled then
print("Phone or Tablet")
else
print("Computer")
end
end)
Section:NewButton("Print GameID", "ButtonInfo", function()
local GameID = game.PlaceId
print(GameID)
end)
Section:NewButton("Print Game Name", "ButtonInfo", function()
local GameID = game.PlaceId
print(gameName)
end)
local Tab = Window:NewTab("Pyk Hubs")
local Section = Tab:NewSection("Hubs")
Section:NewButton("Ragdoll Engine", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PykOriginal/Pyk-Hub/main/Ragdoll%20Engine.lua"))()
end)
Section:NewButton("Escape Running Head", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PykOriginal/Pyk-Hub/main/Escape%20Running%20Head.lua"))()
end)
Section:NewButton("Rainbow Friends In game", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PykOriginal/Pyk-Hub/main/Rainbow%20Friends.lua"))()
end)
Section:NewButton("Rainbow Friends No game", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PykOriginal/Pyk-Hub/main/Rainbow%20Friends%20no%20game.lua"))()
end)
