local SKP_0 = game.Players.LocalPlayer
local ACS_Folder = game:GetService("ReplicatedStorage"):WaitForChild("ACS_Engine")
local ACS_0 = ACS_Folder:WaitForChild("Events").AcessId:InvokeServer(SKP_0.UserId)
local SKP_9 = ACS_0.."-"..SKP_0.UserId
local SKP_1 = SKP_0.Character:FindFirstChildWhichIsA("Tool")
local SKP_5 = nil
if SKP_1 then
	if SKP_1:FindFirstChild("ACS_Settings") then
		SKP_5 = require(SKP_1:FindFirstChild("ACS_Settings"))
	end
end
local SKP_6 = {
	camRecoilMod = {
		RecoilTilt = 1,
		RecoilUp = 1,
		RecoilLeft = 1,
		RecoilRight = 1
	}
	,gunRecoilMod = {
		RecoilUp = 1,
		RecoilTilt = 1,
		RecoilLeft = 1,
		RecoilRight = 1
	}
	,ZoomValue = 70
	,Zoom2Value = 70
	,AimRM = 1
	,SpreadRM = 1
	,DamageMod = 1
	,minDamageMod = 1
	,MinRecoilPower = 1
	,MaxRecoilPower = 1
	,RecoilPowerStepAmount = 1
	,MinSpread = 1
	,MaxSpread = 1					
	,AimInaccuracyStepAmount = 1
	,AimInaccuracyDecrease = 1
	,WalkMult = 1
	,adsTime = 1		
	,MuzzleVelocity = 1
}
if SKP_5 ~= nil then
	for i,v in pairs(workspace.Players:GetChildren()) do
		local SKP_2 = v.Humanoid
		ACS_Folder.Events.Damage:InvokeServer(SKP_1, SKP_2, 0, 2, SKP_5, SKP_6, nil, nil, SKP_9)
	end
else
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Error:";
		Text = "Equipped non ACS Authorized Tool.";
		Duration = 5;
	})
end
