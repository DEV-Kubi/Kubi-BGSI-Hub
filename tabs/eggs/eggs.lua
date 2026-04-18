do
    local VirtualInputManager = game:GetService("VirtualInputManager")
    -- Misc
    _G.EggsTab:AddLabel("Egg Misc")

    local turned = false

    local fastHatch = _G.EggsTab:AddSwitch("Fast Hatch", function(bool)
        turned = false
		if bool then
            repeat
                while task.wait(0.1) do
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.R, false, game)
                task.wait()
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.R, false, game)
            end
            break
            until turned == true
        else
            turned = true
            print("fast hatched turned off")
        end
	end)
	fastHatch:Set(false)
end