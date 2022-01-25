local ACS_Folder = game:GetService("ReplicatedStorage"):WaitForChild("ACS_Engine")
for i,v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer then
		ACS_Folder.Eventos.Damage:FireServer(v.Character.Humanoid, 9999, 0, 0)
	end
end
