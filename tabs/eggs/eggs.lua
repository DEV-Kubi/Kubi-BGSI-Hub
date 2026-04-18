do
    _G.EggsTab:AddLabel("-------------------------------------------------------------------------------------")
    -- Misc
    _G.EggsTab:AddLabel("Egg Misc")
    local fastHatch = _G.EggsTab:AddSwitch("Fast Hatch", function(bool)
		if bool then
            local VirtualInputManager = game:GetService("VirtualInputManager")

            while task.wait(0.1) do
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.R, false, game)
                task.wait()
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.R, false, game)
            end
        else
            bool = false
        end
	end)
	fastHatch:Set(false)
end