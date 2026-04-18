do
    local Console = _G.ScriptTab:AddConsole({
        ["y"] = 100,
        ["source"] = "Lua",
    })

    Console:Set("-- Lua Executor!\n")
    print(Console:Get())

    local HA = _G.ScriptTab:AddHorizontalAlignment()

    HA:AddButton("Execute", function()
        loadstring(Console:Get())()
    end)
    
    HA:AddButton("Clear", function()
        Console:Set("")
    end)

    _G.ScriptTab:AddKeybind("GUI Bind", function(key)
		if key then
            task.wait(1)
            _G.Window["toggle_key"] = key
        end
	end, {
		["standard"] = Enum.KeyCode.RightShift
    })

    _G.ScriptTab:AddButton("Unload GUI", function()
        local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
        if imgui then imgui:Destroy() end
    end)
end