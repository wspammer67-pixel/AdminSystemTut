-- Put in Gui, Name frame to AdminFrame or it will not work

local uis = game:GetService("UserInputService")
local frame = script.Parent.AdminFrame
local player = game.Players.LocalPlayer
local admin = require(game.ReplicatedStorage.AdminUsers)
local Admin = false


local function ISadmin()
	if player.UserId == game.CreatorId then
		Admin = true
		print("Owner Online")
	end
		
		
end

ISadmin()

uis.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.KeypadFive then
		if Admin == true then
			frame.Visible = not frame.Visible
			print("Creator Opened Panel")
		else
			print("Unauthorized: Code 303")
		end
	end
end)
