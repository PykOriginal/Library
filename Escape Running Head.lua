local TeleportService = game:GetService("TeleportService")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local plr = game.Players.LocalPlayer
local Coin = game.Workspace.Folder.Coin
local Window = Library.CreateLib("Pyk Hub Escape Running Head", "RJTheme3")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Teleport")
local ToggleState = false

Section:NewButton("Teleport to Coin", "ButtonInfo", function()
plr.Character:MoveTo(Coin.Position)
end)
Section:NewButton("Teleport to Stage 1", "ButtonInfo", function()
TeleportService:Teleport(6205205961, plr)
end)
Section:NewButton("Teleport to Stage 2", "ButtonInfo", function()
TeleportService:Teleport(6364879587, plr)
end)
Section:NewButton("Teleport to Stage 3", "ButtonInfo", function()
TeleportService:Teleport(6364881161, plr)
end)
Section:NewButton("Teleport to Stage 4", "ButtonInfo", function()
TeleportService:Teleport(6391540653, plr)
end)
Section:NewButton("Teleport to Stage 5", "ButtonInfo", function()
TeleportService:Teleport(6391642302, plr)
end)
Section:NewButton("Teleport to Stage 6", "ButtonInfo", function()
TeleportService:Teleport(6463986562, plr)
end)
Section:NewButton("Teleport to Stage 7", "ButtonInfo", function()
TeleportService:Teleport(6481131111, plr)
end)
Section:NewButton("Teleport to Stage 8", "ButtonInfo", function()
TeleportService:Teleport(6507405695, plr)
end)
Section:NewButton("Teleport to Stage 9", "ButtonInfo", function()
TeleportService:Teleport(6815760584, plr)
end)
Section:NewButton("Teleport to Stage 10", "ButtonInfo", function()
TeleportService:Teleport(8709253565, plr)
end)
Section:NewButton("Teleport to Boss", "ButtonInfo", function()
TeleportService:Teleport(6413499953, plr)
end)

local Section = Tab:NewSection("Player")
Section:NewSlider("Walk Speed", "SliderInfo", 200, 25, function(s)
plr.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jump Power", "SliderInfo", 200, 64, function(s)
plr.Character.Humanoid.JumpPower = s
end)
Section:NewButton("GodMode", "ButtonInfo", function()
while game:GetService("RunService").RenderStepped:wait() do
plr.Character.Humanoid.Health = 100
end
end)
local Tab = Window:NewTab("Esp")
local Section = Tab:NewSection("Esp")
Section:NewButton("Felipe Esp", "ButtonInfo", function()
while wait(0.5) do
for i, childrik in ipairs(workspace:GetDescendants()) do
if childrik:FindFirstChild("NPC") then
if not childrik:FindFirstChild("EspBox") then
if childrik ~= workspace.Folder:GetChildren()[21] then
local esp = Instance.new("BoxHandleAdornment",childrik)
esp.Adornee = childrik
esp.ZIndex = 0
esp.Size = Vector3.new(10, 10, 10)
esp.Transparency = 0.65
esp.Color3 = Color3.fromRGB(255,0,0)
esp.AlwaysOnTop = true
esp.Name = "EspBox"
end
end
end
end
end
end)
Section:NewButton("Players Esp", "ButtonInfo", function()
while wait(0.5) do
for i, childrik in ipairs(workspace:GetDescendants()) do
if childrik:FindFirstChild("Humanoid") then
if not childrik:FindFirstChild("EspBox") then
if childrik ~= game.Players.LocalPlayer.Character then
local esp = Instance.new("BoxHandleAdornment",childrik)
esp.Adornee = childrik
esp.ZIndex = 0
esp.Size = Vector3.new(2.1, 1.7, 1.2)
esp.Transparency = 0.3
esp.Color3 = Color3.fromRGB(172,172,172)
esp.AlwaysOnTop = true
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
