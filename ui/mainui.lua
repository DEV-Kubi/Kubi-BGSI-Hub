do
    _G.Window = library:AddWindow("Kubi BGSI Hub", {
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
        loadstring("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/main/main.lua?token=GHSAT0AAAAAAD22JRBLLST2XQ5SFBMJQNUC2PDXZHQ")()
    end

    if _G.FarmTab then
        loadstring("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/farming/farming.lua?token=GHSAT0AAAAAAD22JRBLRAS3D6SJVOQVERAI2PDXZPA")()
    end

    if _G.EggsTab then
        loadstring("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/eggs/eggs.lua?token=GHSAT0AAAAAAD22JRBLTRM44QNGZ4UL46BC2PDX2AA")()
    end

    if _G.ScriptTab then
        loadstring("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/scripting/scripting.lua?token=GHSAT0AAAAAAD22JRBL63MTAGD5WGMO7TOQ2PDX2PA")()
    end

    _G.MainTab:Show()
    library:FormatWindows()
end