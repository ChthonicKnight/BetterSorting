local mod = getActivatedMods()

if mod:contains("MarzGuns") then
table.insert(BScats, {
	category = "CraftAmmo",
	items = {
        "MarzGuns.357_Casing",
        "MarzGuns.556x45_Casing",
        "MarzGuns.22_Casing",
        "MarzGuns.3006_Casing",
        "MarzGuns.762x54_Casing",
        "MarzGuns.44_Casing",
        "MarzGuns.792x57_Casing",
        "MarzGuns.762x39_Casing",
        "MarzGuns.12Gauge_Hull_Green",
        "MarzGuns.12Gauge_Hull_Red",
        "MarzGuns.9x39_Casing",
        "MarzGuns.3030_Casing",
        "MarzGuns.38_Casing",
        "MarzGuns.40mm_Casing",
        "MarzGuns.4570_Casing",
        "MarzGuns.223_Casing",
        "MarzGuns.762x51_Casing",
        "MarzGuns.46x30_Casing",
        "MarzGuns.308_Casing",
        "MarzGuns.45_Casing",
        "MarzGuns.9x19_Casing",
        "MarzGuns.50_Casing",
        "MarzGuns.545x39_Casing",
        "MarzGuns.57x28_Casing",
    },
})

table.insert(BScats, {
	category = "WepAmmo",
	items = {
        "MarzGuns.40mm_Incendiary_Explosion",
        "MarzGuns.40mm_HE_Explosion",
        "MarzGuns.M18",
        "MarzGuns.M14_Incendiary",
        "MarzGuns.M67",
    },
})

table.insert(BScats, {
	category = "MiscJ",
	items = {
        "MarzGuns.FakeItemRails",
        "MarzGuns.explosion_0",
        "MarzGuns.FakeItemPistols",
        "MarzGuns.FakeItem",
        "MarzGuns.FakeItemRifles",
    },
})

table.insert(BScats, {
	category = "ToolG",
	items = {
        "MarzGuns.RepairPack",
    },
})
end

if mod:contains("MarzVanillaGuns") then
table.insert(BScats, {
	category = "MiscJ",
	items = {
        "Base.GenericFakeItem",
    },
})
end