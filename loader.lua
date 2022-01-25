if game.ReplicatedStorage.ACS_Engine:FindFirstChild("Eventos") then
	if game.ReplicatedStorage.ACS_Engine.Eventos:FindFirstChild("AccessId") then
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/TheWoozoo12/TheThingIDo/main/1.7.7.lua"), true))()
	else
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/TheWoozoo12/TheThingIDo/main/1.5.lua"), true))()
	end
else
	local config = require(game.ReplicatedStorage.ACS_Engine.GameRules.Config)
	if config.Version == "ACS 2.0.1 - R6" or config.Version == "ACS 2.0.0 - R15" then
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/TheWoozoo12/TheThingIDo/main/2.0.0.lua"), true))()
	end
end
