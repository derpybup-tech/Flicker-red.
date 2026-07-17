local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remote = ReplicatedStorage:WaitForChild("RedFlickerEvent")

Remote.OnServerEvent:Connect(function(player)
    local character = player.Character
    if not character then return end

    task.spawn(function()
        while character.Parent do
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Color = Color3.fromRGB(255, 0, 0)
                end
            end
            task.wait(0.08)

            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Color = Color3.fromRGB(120, 0, 0)
                end
            end
            task.wait(0.08)
        end
    end)
end)
