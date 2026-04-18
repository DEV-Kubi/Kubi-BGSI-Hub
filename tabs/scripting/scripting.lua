do
    _G.ScriptTab:AddLabel("Executor")

    _G.ScriptTab:AddLabel("--------------------------------------------------------------------------------------------------------------------")

    local Console = _G.ScriptTab:AddConsole({
        ["y"] = 100,
        ["source"] = "Lua",
    })

    local HA = _G.ScriptTab:AddHorizontalAlignment()

    HA:AddButton("Execute", function()
        loadstring(Console:Get())()
    end)
    
    HA:AddButton("Clear", function()
        Console:Set("")
    end)

    _G.ScriptTab:AddLabel("--------------------------------------------------------------------------------------------------------------------------")

    _G.ScriptTab:AddLabel("GUI Settings")

    _G.ScriptTab:AddKeybind("GUI Bind", function(key)
		if key then
            _G.ui_options["toggle_key"] = key
        end
	end)

    _G.ScriptTab:AddButton("Unload GUI", function()
        do
            local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
            if imgui then imgui:Destroy() end
        end
    end)

    _G.ScriptTab:AddLabel("--------------------------------------------------------------------------------------------------------------------")
end