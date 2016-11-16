if SERVER then
    AddCSLuaFile("shared.lua")
end

SWEP.PrintName = "Medic Kit"
SWEP.Author = "FacePunch ShitPosters"
SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.Description = "Kills EveryBody Instantly."
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.Instructions = "Left Click To Kill SomeOne\nRight Click To Heal YourSelf"
SWEP.IsDarkRPMedKit = true

SWEP.Spawnable = true
SWEP.AdminOnly = true
SWEP.Category = "ScriptFodderRP (Utility)"

SWEP.ViewModel = "models/weapons/c_medkit.mdl"
SWEP.WorldModel = "models/weapons/w_medkit.mdl"
SWEP.UseHands = true

SWEP.Primary.Recoil = 0
SWEP.Primary.ClipSize  = -1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic  = true
SWEP.Primary.Delay = 0.1
SWEP.Primary.Ammo = "none"

SWEP.Secondary.Recoil = 0
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = 1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Delay = 0.3
SWEP.Secondary.Ammo = "none"

function SWEP:PrimaryAttack()
    self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)

    local found
    local lastDot = -1 -- the opposite of what you're looking at
    self:GetOwner():LagCompensation(true)
    local aimVec = self:GetOwner():GetAimVector()

    for k,v in pairs(player.GetAll()) do
        local maxhealth = 1337
        if v == self:GetOwner() or v:GetShootPos():DistToSqr(self:GetOwner():GetShootPos()) > 7225 or v:Health() >= maxhealth or not v:Alive() then continue end

        local direction = v:GetShootPos() - self:GetOwner():GetShootPos()
        direction:Normalize()
        local dot = direction:Dot(aimVec)

        -- Looking more in the direction of this player
        if dot > lastDot then
            lastDot = dot
            found = v
        end
    end
    self:GetOwner():LagCompensation(false)

    if found then
        found:SetHealth(found:Health() + 69)
        found:ChatPrint("ApRil Fools")
        self:EmitSound("hl1/fvox/boop.wav", 150, found:Health() / found:GetMaxHealth() * 100, 1, CHAN_AUTO)
    end
end

function SWEP:SecondaryAttack()
    self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
    local ply = self:GetOwner()
    local maxhealth = self:GetOwner():GetMaxHealth() or 100
    if ply:Health() < maxhealth then
        ply:SetHealth(ply:Health() + 69)
        ply:ChatPrint("TeeHee ReKt")
        self:EmitSound("hl1/fvox/boop.wav", 150, ply:Health() / ply:GetMaxHealth() * 100, 1, CHAN_AUTO)
    end
end
