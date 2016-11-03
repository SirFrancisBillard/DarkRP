AddCSLuaFile()

if CLIENT then
    SWEP.Author = "DarkRP Shitposters"
    SWEP.PrintName = "Glock"
    SWEP.Instructions = "Shoot with it"
    SWEP.Slot = 1
    SWEP.SlotPos = 0
    SWEP.IconLetter = "c"

    killicon.AddFont("weapon_glock2", "CSKillIcons", SWEP.IconLetter, Color(255, 80, 0, 255))
end

SWEP.Base = "weapon_cs_base2"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Category = "DarkRP (Weapon)"

SWEP.ViewModel = "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"
SWEP.HoldType = "pistol"

SWEP.Weight = 500
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Primary.Sound = Sound("Weapon_Glock.Single")
SWEP.Primary.Recoil = 0
SWEP.Primary.Unrecoil = 0
SWEP.Primary.Damage = 1337
SWEP.Primary.NumShots = 8
SWEP.Primary.Cone = 0.01
SWEP.Primary.ClipSize = 200
SWEP.Primary.Delay = 0.01
SWEP.Primary.DefaultClip = 800
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "pistol"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

--Start of Firemode configuration
SWEP.IronSightsPos = Vector(-5.77, -6.6, 2.7)
SWEP.IronSightsAng = Vector(0.9, 0, 0)
