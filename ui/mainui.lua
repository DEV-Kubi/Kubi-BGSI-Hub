do
    _G.Window = _G.library:AddWindow("Kubi BGSI Hub", {
		main_color = Color3.fromRGB(102, 153, 255),
		min_size = Vector2.new(650, 450),
		toggle_key = Enum.KeyCode.RightShift,
		can_resize = true,
	})

    _G.ReplicatedStorage = game:GetService("ReplicatedStorage")

    _G.Client = _G.ReplicatedStorage.Client
    _G.Tutorial = require(Client.Tutorial)

	_G.MainTab = _G.Window:AddTab("Main")
    _G.FarmTab = _G.Window:AddTab("Farming")
    _G.WorldTab = _G.Window:AddTab("World")
    _G.EggsTab = _G.Window:AddTab("Eggs")
    _G.ScriptTab = _G.Window:AddTab("Scripting")

    if _G.MainTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/main/main.lua"))()
    end

    if _G.FarmTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/farming/farming.lua"))()
    end

    if _G.WorldTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/world/world.lua"))()
    end

    if _G.EggsTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/eggs/eggs.lua"))()
    end

    if _G.ScriptTab then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DEV-Kubi/Kubi-BGSI-Hub/refs/heads/main/tabs/scripting/scripting.lua"))()
    end

    _G.MainTab:Show()
    _G.library:FormatWindows()
end