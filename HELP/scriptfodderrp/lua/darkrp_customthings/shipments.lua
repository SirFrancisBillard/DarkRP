--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]

DarkRP.createShipment("Desert Eagle", {
    model = "models/weapons/w_pist_deagle.mdl",
    entity = "weapon_deagle2",
    price = 0,
    amount = 10,
    separate = true,
    pricesep = 600,
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
    pricesep = 160000,
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
