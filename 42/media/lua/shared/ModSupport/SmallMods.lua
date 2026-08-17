local mod = getActivatedMods()

--if mod:contains("testmod") then
--table.insert(BScats, {
--    category = "TEST",
--    items = {
--
--    },
--})
--end

if mod:contains("Railroader") then
table.insert(BScats, {
    category = "Fuel",
    items = {
        "Base.RR_DieselCan",
    },
})

table.insert(BScats, {
    category = "LitW",
    items = {
        "Base.RR_EngineerNotebook",
    },
})
end

if mod:contains("rSemiTruck") then
table.insert(BScats, {
    category = "Mech",
    items = {
        "Base.TransportFreezerSystem",
        "Base.Tank2000W_2",
        "Base.Tank125_2",
        "Base.Tank2000_2",
        "Rotators.Tank750_2",
        "Rotators.Tank125_2",
        "Rotators.Tank125",
    },
})
end

if mod:contains("SaucedCarts") then
table.insert(BScats, {
    category = "ToolG",
    items = {
        "SaucedCarts.ShoppingCart",
    },
})
end

if mod:contains("SaucedTrolleys") then
table.insert(BScats, {
    category = "ToolG",
    items = {
        "SaucedTrolley.TrolleyCart",
    },
})
end

if mod:contains("SpecialEmergencyVehicles") then
table.insert(BScats, {
    category = "ContH",
    items = {
        "Base.CDCsamplesuitcaseSEV",
        "Base.Bag_SEVProtectiveCaseBulkyAmmo_556",
        "Base.CDCsuitcaseSEV",
    },
})

table.insert(BScats, {
    category = "MiscJ",
    items = {
        "SpecialEmergencyVehicles.SEV_CDCnote4",
        "SpecialEmergencyVehicles.SEV_CDCnote3",
        "SpecialEmergencyVehicles.SEV_CDCnote2",
        "SpecialEmergencyVehicles.SEV_CDCnote1",
        "Base.sevCDCbloodsample",
    },
})
end

if mod:contains("tsarslib") then
table.insert(BScats, {
    category = "SurCamp",
    items = {
        "ATA2.ATASleepingBag",
    },
})

table.insert(BScats, {
    category = "Mech",
    items = {
        "Base.ATARoofLightItem",
        "ATA2.ATABullbar3Item",
        "ATA2.ATARoofLightItem",
        "ATA2.ATAFendersWideItem",
        "ATA2.ATABullbarPoliceItem1",
        "ATA2.ATASpoilerRear2Item",
        "ATA2.ATASpoilerFrontItem",
        "ATA2.ATASkirtsSideItem",
        "ATA2.ATABullbar2Item",
        "ATA2.ATASpoilerRear1Item",
        "ATA2.ATAFrontRoofLightItem",
        "ATA2.ATAProtectionWheelsChain",
        "ATA2.ATA2ItemContainer",
        "ATA2.ATABullbar1Item",
    },
})
end

if mod:contains("Xiaomi_SU7") then
table.insert(BScats, {
    category = "Mech",
    items = {
        "ATA2.XiaomiSU7Hood3Item3",
        "ATA2.XiaomiSU7Hood4Item3",
        "ATA2.XiaomiSU7Hood2Item3",
    },
})
end

if mod:contains("B42Horticulture") then
table.insert(BSoverride, {
    category = "Drugs",
    items = {
		"Base.HempBundle",
		"Base.HempBundleDried",
    },
})

table.insert(BScats, {
    category = "Drugs",
    items = {
        "Base.HempLeaves",
        "Base.PaperPulp_Pot",
        "Base.CannedHempBuds_Decarbed",
        "Base.CannedHempBuds_Decarbed_Open",
        "Base.HempBuds",
        "Base.CannedHempBuds_Cured",
        "Base.OilHemp",
        "Base.CannedHempBuds_Open",
        "Base.HempBuds_Decarbed",
        "Base.HempBuds_Cured",
        "Base.CannedHempBuds",
        "Base.RawRollingPapers",
        "Base.CigarHemp",
        "Base.CigarRolled",
        "Base.CigarettePack_Rolled",
        "Base.SmokingPipeGlass_Tobacco",
        "Base.SmokingPipe_Hemp",
        "Base.TobaccoChewing_Jar",
        "Base.SmokingPipeGlass_Hemp",
        "Base.TobaccoChewing_WaterTin",
        "Base.CigaretteHemp",
        "Base.HempLoose",
        "Base.TobaccoChewing_Tin",
        "Base.CigarettePack_Hemp",
        "Base.CanPipe_Hemp",
        "Base.SmokingPipeGlass",
        "Base.TobaccoWet",
    },
})

table.insert(BScats, {
    category = "CookIng",
    items = {
        "Base.SimpleSugarSyrup",
        "Base.Saucepan_Syrup",
        "Base.SaucepanCopper_Syrup",
    },
})

table.insert(BScats, {
    category = "CraftG",
    items = {
        "Base.PaperPulp_PotForged",
        "Base.PaperSheetWet",
        "Base.PaperSheet",
        "Base.PaperSheetPressed",
        "Base.PaperPulp",
        "Base.MouldAndDeckle_PaperSheet",
    },
})

table.insert(BScats, {
    category = "CraftTailor",
    items = {
        "Base.HempStalks",
    },
})

table.insert(BScats, {
    category = "ToolC",
    items = {
        "Base.MouldAndDeckle",
    },
})
end

if mod:contains("BetterFlashlightsFixed") then
table.insert(BScats, {
    category = "ToolL",
    items = {
        "Base.BF_HeadLight",
        "Base.Torch4",
        "Base.Torch5",
        "Base.Torch6",
        "Base.Torch1",
        "Base.Torch2",
        "Base.Torch3",
        "Base.HandTorch_ManLite",
        "Base.BF_EgenerexLite",
        "Base.HandTorch_Army2",
        "Base.HandTorch_Army1",
        "Base.BF_SpiffoLite",
        "Base.HandTorch_CK_LED",
        "Base.BF_OldFlashlight",
        "Base.Torch7",
        "Base.TorchArmy2",
        "Base.TorchArmy1",
    },
})
end

if mod:contains("HardwoodsPolicePack") then
table.insert(BScats, {
    category = "ToolL",
    items = {
        "Base.MagliteFlashlight",
    },
})

table.insert(BScats, {
    category = "WepMelee",
    items = {
        "Base.Maglite",
        "Base.TelescopingBaton",
    },
})

table.insert(BScats, {
    category = "Collect",
    items = {
        "Base.SilverCoinMorgan",
    },
})

table.insert(BScats, {
    category = "ToolB",
    items = {
        "Base.BreachingHammer",
    },
})
end

if mod:contains("HBAC") then
table.insert(BScats, {
    category = "MiscJ",
    items = {
        "HBAC.FakeGenericItem",
    },
})

table.insert(BScats, {
    category = "CraftAmmo",
    items = {
        "HBAC.22ProjectileBox",
        "HBAC.9mmProjectileBox",
        "HBAC.PrimerBox",
        "HBAC.939ProjectileBox",
        "HBAC.76254ProjectileBox",
        "HBAC.57ProjectileBox",
        "HBAC.762ProjectileBox",
        "HBAC.ShotgunPelletsBox",
        "HBAC.308ProjectileBox",
        "HBAC.46ProjectileBox",
        "HBAC.545ProjectileBox",
        "HBAC.45ProjectileBox",
        "HBAC.44ProjectileBox",
        "HBAC.556ProjectileBox",
        "HBAC.38ProjectileBox",
        "HBAC.223ProjectileBox",
        "HBAC.3030ProjectileBox",
    },
})

table.insert(BScats, {
    category = "ToolC",
    items = {
        "HBAC.ReloadingTool",
    },
})
end

if mod:contains("HBVCEFb42") then
table.insert(BScats, {
    category = "CraftAmmo",
    items = {
        "HBVCEF.556x45_Casing",
        "HBVCEF.380_Casing",
        "HBVCEF.30_Casing",
        "HBVCEF.22_Casing",
        "HBVCEF.50_Casing",
        "HBVCEF.762x51_Casing",
        "HBVCEF.357_Casing",
        "HBVCEF.792x57_Casing",
        "HBVCEF.762x39_Casing",
        "HBVCEF.38_Casing",
        "HBVCEF.3006_Casing",
        "HBVCEF.46x30_Casing",
        "HBVCEF.545x39_Casing",
        "HBVCEF.57x28_Casing",
        "HBVCEF.308_Casing",
        "HBVCEF.762x54_Casing",
        "HBVCEF.44_Casing",
        "HBVCEF.50BMG_Casing",
        "HBVCEF.12Gauge_Hull_Green",
        "HBVCEF.45_Casing",
        "HBVCEF.12Gauge_Hull_Red",
        "HBVCEF.9x19_Casing",
        "HBVCEF.7x57_Casing",
        "HBVCEF.9x39_Casing",
        "HBVCEF.10x25_Casing",
        "HBVCEF.3030_Casing",
        "HBVCEF.4570_Casing",
        "HBVCEF.223_Casing",
    },
})
end

if mod:contains("LWBetterElectronics") then
table.insert(BScats, {
    category = "MiscJ",
    items = {
        "LWBetterElectronics.RemoteDoormotor",
        "LWBetterElectronics.BeginnerElectronicsKit",
    },
})

table.insert(BScats, {
    category = "ElecC",
    items = {
        "LWBetterElectronics.AdvancedRemoteCraftedV3",
        "LWBetterElectronics.AdvancedRemoteCraftedV2",
        "LWBetterElectronics.AdvancedRemoteCraftedV1",
    },
})

table.insert(BScats, {
    category = "WepBomb",
    items = {
        "LWBetterElectronics.AdvancedNoiseMakerV2",
        "LWBetterElectronics.AdvancedNoiseMakerV3",
        "LWBetterElectronics.AdvancedNoiseMakerSensorV2",
        "LWBetterElectronics.AdvancedNoiseMakerV1",
        "LWBetterElectronics.AdvancedNoiseMakerSensorV3",
        "LWBetterElectronics.AdvancedNoiseMakerSensorV1",
        "LWBetterElectronics.AdvancedNoiseMakerRemoteV2",
        "LWBetterElectronics.AdvancedNoiseMakerRemoteV3",
        "LWBetterElectronics.AdvancedNoiseMakerRemoteV1",
    },
})

table.insert(BScats, {
    category = "FoodN",
    items = {
        "LWBetterElectronics.Happymix",
        "LWBetterElectronics.Otternoses",
        "LWBetterElectronics.YeenBeans",
    },
})

table.insert(BScats, {
    category = "LitR",
    items = {
        "LWBetterElectronics.CircuitDiagramHamRadio",
        "LWBetterElectronics.CircuitDiagramWalkieTalkie",
        "LWBetterElectronics.CircuitDiagramRadio",
        "LWBetterElectronics.CircuitDiagramAmplifier",
    },
})
end

if mod:contains("testmod") then
table.insert(BScats, {
    category = "TEST",
    items = {

    },
})
end