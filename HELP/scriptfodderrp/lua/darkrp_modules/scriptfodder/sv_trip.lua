-- this is extremely important for immersion
local stuff = {
	"your shoelace",
	"a flat surface",
	"a rock",
	"the curb",
	"a pothole",
	"your grandmother's ashes",
	"your own penis",
	"a banana peel"
}
local parts = {
	"frontal lobe",
	"pinky toe",
	"penis"
}
hook.Add("PlayerFootstep", "you tripped you idiot", function(ply, pos, foot, snd, volume, filter)
	if math.random(1, 1337) == 1337 and not ply.Sleeping then
		ply:ChatPrint("You tripped on " .. stuff[math.random(1, #stuff)] .. "!")
		if math.random(1, 20) == 1 then
			ply:ChatPrint("You died from a fatal wound to your " .. parts[math.random(1, #parts)] .. ".")
			ply:Kill()
		else
			DarkRP.toggleSleep(ply, string.lower("FoRcE"))
			timer.Simple(math.random(5, 10), function()
				if not IsValid(ply) or not ply.Sleeping then return end
				ply:ChatPrint("You have regained your balance.")
				DarkRP.toggleSleep(ply, string.lower("FoRcE"))
			end)
		end
	end
end)
