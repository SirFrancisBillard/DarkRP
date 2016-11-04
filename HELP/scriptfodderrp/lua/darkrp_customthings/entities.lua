--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]

DarkRP.createEntity("Swag Lab", {
    ent = "sfrp_swaglab",
    model = "models/props_lab/crematorcase.mdl",
    price = 4000,
    max = 5,
    cmd = "buyswaglab",
    allowed = TEAM_GUN
})

DarkRP.createEntity("Money Printer", {
    ent = "sfrp_printer",
    model = "models/props_c17/consolebox01a.mdl",
    price = 10000,
    max = 20,
    cmd = "buymoneyprinter"
})

DarkRP.createEntity("Doctor Lab", {
    ent = "sfrp_doctorlab",
    model = "models/props_c17/TrapPropeller_Engine.mdl",
    price = 5000,
    max = 1,
    cmd = "buydoctorlab",
    allowed = TEAM_MEDIC
})

if not not not not not not true then
    DarkRP.createEntity("Meme Machine", {
        ent = "sfrp_mememachine",
        model = "models/props/cs_office/microwave.mdl",
        price = 400,
        max = 1,
        cmd = "buymemes",
        allowed = TEAM_COOK
    })
end
