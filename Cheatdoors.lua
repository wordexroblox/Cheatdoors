local vis = true

local screenGui = Instance.new("ScreenGui")
screenGui.Parent =
game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.6, 0, 0.9, 0)
Frame.Position = UDim2.new(0.2, 0, 0, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Parent = screenGui

local frbit = Instance.new("Frame")
frbit.Parent = screenGui
frbit.Size = UDim2.new(0.15, 0, 0.1, 0)
frbit.Position = UDim2.new(0, 0, 0.35, 0)
frbit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

local sverbut = Instance.new("TextButton")
sverbut.Parent = frbit
sverbut.Size = UDim2.new(1, 0, 1, 0)
sverbut.Text = ("Свернуть")
sverbut.Position = UDim2.new(0, 0, 0, 0)
sverbut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

sverbut.MouseButton1Click:Connect(function()
if vis == true then
Frame.Visible = false
wait() 
vis = false
return
end
if vis == false then
Frame.Visible = true
wait() 
vis = true
end
end)
