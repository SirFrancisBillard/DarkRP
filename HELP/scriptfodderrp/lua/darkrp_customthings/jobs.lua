--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]

TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[The Citizen is the gayest level of society you can hold besides being Bruce Jenner.
        You have no specific role in city life.]],
    weapons = {},
    command = "citizen",
    max = 69,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_POLICE = DarkRP.createJob("Cheese Protector", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
    description = [[The protector of all cheese that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_p2282", "stunstick", "door_ram", "weaponchecker"},
    command = "cp",
    max = 8,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 400,
    },
    category = "Civil Protection",
})

TEAM_GANG = DarkRP.createJob("Memester", {
    color = Color(75, 75, 75, 255),
    model = {
        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl",
        "models/player/Group03/Female_03.mdl",
        "models/player/Group03/Female_04.mdl",
        "models/player/Group03/Female_06.mdl",
        "models/player/group03/male_01.mdl",
        "models/player/Group03/Male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/Male_04.mdl",
        "models/player/Group03/Male_05.mdl",
        "models/player/Group03/Male_06.mdl",
        "models/player/Group03/Male_07.mdl",
        "models/player/Group03/Male_08.mdl",
        "models/player/Group03/Male_09.mdl"},
    description = [[The lowest person of meme.
        A gangster generally works for the Meme Boss who runs the meme family.
        The Meme Boss sets your agenda and you follow it or you might be punished.]],
    weapons = {},
    command = "gangster",
    max = 8,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Memesters",
})

TEAM_MOB = DarkRP.createJob("Meme Boss", {
    color = Color(25, 25, 25, 255),
    model = "models/player/gman_high.mdl",
    description = [[The Meme Boss is the boss of the memesters in the city.
        With his power he coordinates the gangsters and forms an efficient crime organization.
        He has the ability to break into houses by using a lockpick.
        The Meme Boss posesses the ability to unarrest you.]],
    weapons = {"lockpick", "unarrest_stick"},
    command = "mobboss",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.34,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Memesters",
})

TEAM_GUN = DarkRP.createJob("Swag Dealer", {
    color = Color(255, 140, 0, 255),
    model = "models/player/monk.mdl",
    description = [[A Swag Dealer is the only person who can sell swag to other people.
        Make sure you aren't caught selling illegal swag to the public! You might get arrested!]],
    weapons = {},
    command = "swagdealer",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(47, 79, 79, 255),
    model = "models/player/kleiner.mdl",
    description = [[With your medical knowledge you work to restore players to full health.
        Without a medic, people cannot be healed.
        Left click with the Medical Kit to heal other players.
        Right click with the Medical Kit to heal yourself.]],
    weapons = {"med_kit"},
    command = "medic",
    max = 4,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
})

TEAM_CHIEF = DarkRP.createJob("Chief", {
    color = Color(20, 20, 255, 255),
    model = "models/player/combine_soldier_prisonguard.mdl",
    description = [[The Chief is the leader of the Civil Protection unit.
        Coordinate the police force to enforce law in the city.
        Hit a player with arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
        Type /wanted <name> to alert the public to the presence of a criminal.
        Type /jailpos to set the Jail Position]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
    command = "chief",
    max = 2,
    salary = GAMEMODE.Config.normalsalary * 1.67,
    admin = 0,
    vote = false,
    hasLicense = true,
    chief = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(150, 20, 20, 255),
    model = "models/player/breen.mdl",
    description = [[The Mayor of the city creates laws to govern the city.
        If you are the mayor you may create and accept warrants.
        Type /wanted <name>  to warrant a player.
        Type /jailpos to set the Jail Position.
        Type /lockdown initiate a lockdown of the city.
        Everyone must be inside during a lockdown.
        The cops patrol the area.
        /unlockdown to end a lockdown]],
    weapons = {},
    command = "mayor",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.89,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Civil Protection",
})

TEAM_HOBO = DarkRP.createJob("Bruce Jenner", {
    color = Color(80, 45, 0, 255),
    model = "models/player/corpse1.mdl",
    description = [[The gayest member of society. Everybody laughs at you.
        You have no home.
        Beg for your food and money
        Show your tits everyone who passes to get money
        Make your own wooden home somewhere in a corner or outside someone else's door]],
    weapons = {"weapon_bugbait"},
    command = "jenner",
    max = 6,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Citizens",
})

if not not not not not not true then
    TEAM_COOK = DarkRP.createJob("Meme Cook", {
        color = Color(238, 99, 99, 255),
        model = "models/player/mossman.mdl",
        description = [[As a Meme Cook, it is your responsibility to feed memes to the other members of your city.
            You can spawn a meme machine and sell the memes you make:
            /buymemes]],
        weapons = {},
        command = "memecook",
        max = 8,
        salary = GAMEMODE.Config.normalsalary,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true
    })
end

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
