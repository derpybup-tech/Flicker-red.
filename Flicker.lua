local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:WaitForChild("RedFlickerEvent")

button.MouseButton1Click:Connect(function()
    Remote:FireServer()
end)
