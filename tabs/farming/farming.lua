do
    _G.FarmTab:AddLabel("Farming")

    local turned = false

    local autoCollectPickups = _G.FarmTab:AddSwitch("Auto Collect Pickups", function(bool)
        turned = false
		if bool then
            while task.wait(1) do
                for i,v in pairs(_G.Tutorial.module_upvr._activePickups) do
                    v:Destroy()
                    _G.Tutorial.module_upvr._activePickups[tostring(i)] = nil
                    game:GetService("ReplicatedStorage").Remotes.Pickups.CollectPickup:FireServer(i)
                    if turned == true then
                        break
                    end
                end
            end
        else
            turned = true
        end
	end)
	autoCollectPickups:Set(false)
end