do
    _G.FarmTab:AddLabel("Farming")

    local turned = false

    local autoCollectPickups = _G.FarmTab:AddSwitch("Auto Collect Pickups", function(bool)
        turned = false
		if bool then
            print("Start Auto Collecting PPickups")
        else
            turned = true
        end
	end)
	autoCollectPickups:Set(false)
end