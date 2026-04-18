do
    _G.Window = _G.library:AddWindow("Kubi BGSI Hub", {
		main_color = Color3.fromRGB(102, 153, 255),
		min_size = Vector2.new(650, 650),
		toggle_key = Enum.KeyCode.RightShift,
		can_resize = true,
	})

	_G.MainTab = _G.Window:AddTab("Main")
    _G.FarmTab = _G.Window:AddTab("Farming")
    _G.EggsTab = _G.Window:AddTab("Eggs")
    _G.ScriptTab = _G.Window:AddTab("Scripting")

    if _G.MainTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/main/main.lua"))()
    end

    if _G.FarmTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/farming/farming.lua"))()
    end

    if _G.EggsTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/eggs/eggs.lua"))()
    end

    if _G.ScriptTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/scripting/scripting.lua"))()
    end

    _G.MainTab:Show()
    library:FormatWindows()
end