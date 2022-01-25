local ACS_Folder = game:GetService("ReplicatedStorage"):WaitForChild("ACS_Engine")
ACS_Folder.Eventos.AcessId:FireServer(game.Players.LocalPlayer.UserId)
ACS_Folder.Eventos.AcessId.OnClientEvent:Connect(function(AcessId)
	AcessId = AcessId.. "-".. game.Players.LocalPlayer.UserId
	ACS_Folder.Eventos.Damage:FireServer(workspace.AlreadyPro.Humanoid, 9999, 0, 0, AcessId)
	for i,v in pairs(game.Players:GetChildren()) do
		if v ~= game.Players.LocalPlayer then
			ACS_Folder.Eventos.Damage:FireServer(v.Character.Humanoid, 9999, 0, 0, AcessId)
		end
	end
end)
