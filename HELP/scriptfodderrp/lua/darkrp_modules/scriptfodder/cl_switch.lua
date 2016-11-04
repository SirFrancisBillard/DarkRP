-- this is an important bit of code, it lets the user know that they have changed weapon
hook.Add("PlayerSwitchWeapon", "pleasant weapon switch", function()
	surface.PlaySound("doors/handle_pushbar_open1.wav")
end)
