if game.ReplicatedStorage:FindFirstChild("ACS_Engine") then
	if game.ReplicatedStorage.ACS_Engine:FindFirstChild("Eventos") then
		if game.ReplicatedStorage.ACS_Engine.Eventos:FindFirstChild("AccessId") then
			print("1.7.7")
			loadstring(game:HttpGet(("https://raw.githubusercontent.com/TheWoozoo12/TheThingIDo/main/1.7.7.lua"), true))()
		else
			print("1.5-1.7.6")
			loadstring(game:HttpGet(("https://raw.githubusercontent.com/TheWoozoo12/TheThingIDo/main/1.5.lua"), true))()
		end
	else
		local config = require(game.ReplicatedStorage.ACS_Engine.GameRules.Config)
		if config.Version == "ACS 2.0.1 - R6" or config.Version == "ACS 2.0.0 - R15" then
			print("2.0.0-2.0.1")
			loadstring(game:HttpGet(("https://raw.githubusercontent.com/TheWoozoo12/TheThingIDo/main/2.0.0.lua"), true))()
		end
	end
else 
	print("error")
end
