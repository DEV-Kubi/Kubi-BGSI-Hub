do
    local Window = library:AddWindow("Kubi BGSI Hub", {
		main_color = Color3.fromRGB(102, 153, 255),
		min_size = Vector2.new(650, 650),
		toggle_key = Enum.KeyCode.RightShift,
		can_resize = true,
	})
	local MainTab = Window:AddTab("Main")
    local FarmTab = Window:AddTab("Farming")
    local EggsTab = Window:AddTab("Eggs")
    local ScriptTab = Window:AddTab("Scripting")

    if MainTab then
        loadstring("")
    end

    if FarmTab then
        loadstring("")
    end

    if EggsTab then
        loadstring("")
    end

    if ScriptTab then
        loadstring("")
    end

    MainTab:Show()
    library:FormatWindows()
end