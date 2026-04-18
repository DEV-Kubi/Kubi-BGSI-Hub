do
    local VirtualInputManager = game:GetService("VirtualInputManager")
    -- Misc
    _G.EggsTab:AddLabel("Egg Misc")

    local turned = false

    local fastHatch = _G.EggsTab:AddSwitch("Fast Hatch (Spams R Button)", function(bool)
        turned = false
		if bool then
            while task.wait(0.1) do
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.R, false, game)
                task.wait()
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.R, false, game)
                if turned == true then
                    break
                end
            end
        else
            turned = true
        end
	end)
	fastHatch:Set(false)
end