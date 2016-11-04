ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Memes"
ENT.Author = "Allah HimSelf"
ENT.Spawnable = true

function ENT:SetupDataTables()
    self:NetworkVar("Entity", 1, "owning_ent")
end
