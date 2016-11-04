DarkRP.createShipment("Desert Eagle", {
    model = "models/weapons/w_pist_deagle.mdl",
    entity = "weapon_deagle2",
    price = 600,
    amount = 10,
    separate = true,
    pricesep = 215,
    noship = true,
    category = "Pistols",
})

DarkRP.createShipment("Five Seven", {
    model = "models/weapons/w_pist_fiveseven.mdl",
    entity = "weapon_fiveseven2",
    price = 0,
    amount = 10,
    separate = true,
    pricesep = 400,
    noship = true,
    category = "Pistols",
})

DarkRP.createShipment("Glock-18", {
    model = "models/weapons/w_pist_glock18.mdl",
    entity = "weapon_glock2",
    price = 0,
    amount = 10,
    separate = true,
    pricesep = 16000,
    noship = true,
    category = "Pistols",
})

DarkRP.createShipment("P228", {
    model = "models/weapons/w_pist_p228.mdl",
    entity = "weapon_p2282",
    price = 0,
    amount = 10,
    separate = true,
    pricesep = 300,
    noship = true,
    category = "Pistols",
})

DarkRP.createShipment("AK-47", {
    model = "models/weapons/w_rif_ak47.mdl",
    entity = "weapon_ak472",
    price = 24500,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    category = "Rifles",
})

DarkRP.createShipment("MP5", {
    model = "models/weapons/w_smg_mp5.mdl",
    entity = "weapon_mp52",
    price = 22000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    category = "Rifles",
})

DarkRP.createShipment("M4", {
    model = "models/weapons/w_rif_m4a1.mdl",
    entity = "weapon_m42",
    price = 24500,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    category = "Rifles",
})

DarkRP.createShipment("Mac 10", {
    model = "models/weapons/w_smg_mac10.mdl",
    entity = "weapon_mac102",
    price = 21500,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
})

DarkRP.createShipment("Pump Shotgun", {
    model = "models/weapons/w_shot_m3super90.mdl",
    entity = "weapon_pumpshotgun2",
    price = 17500,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    category = "Shotguns",
})

DarkRP.createShipment("Sniper Rifle", {
    model = "models/weapons/w_snip_g3sg1.mdl",
    entity = "ls_sniper",
    price = 37500,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    category = "Snipers",
})

DarkRP.createEntity("Drug Lab", {
    ent = "drug_lab",
    model = "models/props_lab/crematorcase.mdl",
    price = 4000,
    max = 5,
    cmd = "buydruglab",
})

DarkRP.createEntity("Money printer", {
    ent = "money_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 10000,
    max = 20,
    cmd = "buymoneyprinter"
})

DarkRP.createEntity("Gun lab", {
    ent = "gunlab",
    model = "models/props_c17/TrapPropeller_Engine.mdl",
    price = 5000,
    max = 1,
    cmd = "buygunlab",
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    DarkRP.createEntity("Microwave", {
        ent = "microwave",
        model = "models/props/cs_office/microwave.mdl",
        price = 400,
        max = 1,
        cmd = "buymicrowave",
        allowed = TEAM_COOK
    })
end

DarkRP.createCategory{
    name = "Other",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Rifles",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Shotguns",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Snipers",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 102,
}

DarkRP.createCategory{
    name = "Pistols",
    categorises = "weapons",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "weapons",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "vehicles",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}
