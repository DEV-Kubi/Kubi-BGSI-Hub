do
    local Console = Tab:AddConsole({
        ["y"] = 100,
        ["source"] = "Lua",
    })

    Console:Set("-- Lua Executor!\n")
    print(Console:Get())

    local HA = Tab:AddHorizontalAlignment()

    HA:AddButton("Execute", function()
        loadstring(Console:Get())()
    end)
    
    HA:AddButton("Clear", function()
        Console:Set("")
    end) 
end