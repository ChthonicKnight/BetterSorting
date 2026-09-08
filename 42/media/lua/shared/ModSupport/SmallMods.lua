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

if mod:contains("MWPWeaponsB42") then
table.insert(BScats, {
    category = "ToolB",
    items = {
        "Base.roughneckgorillasledgehammer",
        "Base.fiskarsplittingmaul",
        "Base.ox_trade_sledgehammer",
    },
})

table.insert(BScats, {
    category = "ToolC",
    items = {
        "Base.oxnailhammer",
        "Base.fatmaxbrickhammer",
        "Base.m48tacticalwarhammer",
        "Base.stanley_fatmax_nailing_hammer",
    },
})

table.insert(BScats, {
    category = "WepMAxe",
    items = {
        "Base.sogbeardedcampaxe",
        "Base.gemtord42crashaxe",
        "Base.reavercleaver",
        "Base.mtech_stonewashed_tomahawk",
        "Base.k25_jacob_cleaver",
        "Base.crtkfreyraxe",
        "Base.gerberdownrangetomahawk",
        "Base.winklersurvivalhatchet",
        "Base.cwcombathatchet",
        "Base.sogf19nelite",
        "Base.gerberpackhatchet",
        "Base.spydercohatchethawk",
        "Base.sptesnaztacticalshovel",
        "Base.cfa_peacemaker_tomahawk",
        "Base.browning_outdoorsman_axe",
        "Base.doomsdaysurvivalaxe",
        "Base.roughneckaxe",
        "Base.pythoncampaxe",
    },
})
end

if mod:contains("[J&G] Umbrella Corp Uniform") then
table.insert(BScats, {
    category = "ClothBag",
    items = {
        "Base.Umbrella_Corp_LegPouch_Right",
        "Base.Umbrella_Corp_LegPouch_Left",
    },
})
end

if mod:contains("GanydeBielovzki's Frockin Shirts n Ties") then
table.insert(BScats, {
    category = "ClothAcc",
    items = {
        "Base.T_Tie_BowTieFull",
        "Base.Tie_Full_NoCollar",
        "Base.Tie_Stripe_Full_NoCollar",
        "Base.T_Tie_BowTie_NoCollar",
        "Base.Tie_Dots_Full_NoCollar",
        "Base.Tie_BoloTieFull",
        "Base.Tie_BowTie_NoCollar",
        "Base.Tie_Dots_Full",
        "Base.Tie_Grd_Full",
        "Base.Tie_Sq_Full",
        "Base.Tie_BoloTie_NoCollar",
        "Base.Tie_Grd_Full_NoCollar",
        "Base.Tie_Stripe_Full",
        "Base.Tie_Sq_Full_NoCollar",
    },
})

table.insert(BScats, {
    category = "ContH",
    items = {
        "Base.Bag_FrockinShirts_BoxofTies",
        "Base.Bag_FrockinShirts_BoxofShirts",
    },
})
end

if mod:contains("GanydeBielovzki's Frockin Splendor!") then
table.insert(BScats, {
    category = "ContH",
    items = {
        "Base.Bag_FrockinSplendor_Box",
        "Base.Bag_FrockinSplendor_Box_Fancy",
    },
})
end

if mod:contains("GanydeBielovzki's Frockin Splendor! Vol.2") then
table.insert(BScats, {
    category = "ContH",
    items = {
        "Base.Bag_FrockinSplendor2_ToyBox",
        "Base.Bag_FrockinSplendor2_GiftBag",
        "Base.Bag_FrockinSplendor2_TasterBag",
    },
})
end

if mod:contains("GanydeBielovzki's Frockin Splendor! Vol.3") then
table.insert(BScats, {
    category = "ContH",
    items = {
        "Base.Bag_FrockinSplendor_TasterBag",
        "Base.Bag_FrockinSplendor3_ToyBox",
        "Base.Bag_FrockinSplendor3_GiftBag",
    },
})

table.insert(BScats, {
    category = "ClothAcc",
    items = {
        "Base.Cuffs_Collar_Spiked",
        "Base.Cuffs_Collar",
    },
})
end

if mod:contains("GanydeBielovzki's Frockin Splendor! Vol.4") then
table.insert(BScats, {
    category = "ContH",
    items = {
        "Base.Bag_FrockinSplendor4_ToyBox",
        "Base.Bag_FrockinSplendor4_GiftBag",
    },
})

table.insert(BScats, {
    category = "MiscJ",
    items = {
        "Base.Scraps_Fishnet",
        "Base.Scraps_Nylon",
    },
})
end

if mod:contains("GanydeBielovzki's Frockin Splendor! Vol.5") then
table.insert(BScats, {
    category = "ClothAcc",
    items = {
        "Base.Accessory_Tie_Bolo_Moon_NoCollar",
        "Base.Accessory_Tie_Bolo_Letters_NoCollar",
        "Base.Accessory_Tie_Bolo_Star_NoCollar",
        "Base.Accessory_Tie_Bolo_Sun",
        "Base.Accessory_Tie_Bolo_Sun_NoCollar",
        "Base.Accessory_Tie_Bolo_Moon",
        "Base.Accessory_Tie_Bolo_NoCollar",
        "Base.Accessory_Tie_Bolo",
        "Base.Accessory_Tie_Bolo_Letters",
        "Base.Accessory_Tie_Bolo_Star",
    },
})

table.insert(BScats, {
    category = "ContH",
    items = {
"Base.Bag_FrockinSplendor5_ToyBox",
    },
})
end

if mod:contains("GanydeBielovzki's Frockin Stompers!") then
table.insert(BScats, {
    category = "ContB",
    items = {
        "Base.Box_FrockinStompersShoeBox",
        "Base.Box_FrockinStompersShoeBoxLong",
        "Base.Box_FrockinStompersShoeBoxLuxury",
        "Base.Box_FrockinStompersShoeBoxLongLuxury",
    },
})
end

if mod:contains("KATTAJ1_ClothesCore") then
table.insert(BScats, {
    category = "ToolL",
    items = {
        "Base.KATTAJ1_TacticalFlashlight",
    },
})
end

if mod:contains("Post Apocalyptic Weapons") then
table.insert(BScats, {
    category = "ToolC",
    items = {
        "Base.Post_Apocalyptic_Salvage_Hammer",
        "Base.Post_Apocalyptic_Scrap_Hammer",
    },
})
end

if mod:contains("PostSovietArmoryB42") then
table.insert(BScats, {
    category = "ContS",
    items = {
        "Base.AmmoCan_762x54R",
        "Base.AmmoCrate_545x39",
        "Base.AmmoCrate_762x54R",
        "Base.AmmoCrate_762x39",
        "Base.PSA_F1_Crate_Container",
        "Base.AmmoCan_9x39mm",
        "Base.AmmoCan_545x39",
        "Base.AmmoCrate_9x18mm",
        "Base.AmmoCan_762x39",
        "Base.AmmoCan_Opened",
        "Base.AmmoCan_9x18mm",
        "Base.AmmoCrate_9x39mm",
        "Base.PSA_RGD_Crate_Container",
    },
})

table.insert(BScats, {
    category = "WepBomb",
    items = {
        "Base.PSA_F1",
        "Base.PSA_UZRG_Can",
        "Base.PSA_F1_Body",
        "Base.PSA_RGD5",
        "Base.PSA_UZRG",
        "Base.PSA_RGD_Body",
    },
})

table.insert(BScats, {
    category = "CraftG",
    items = {
        "Base.RepairKit_762x39",
        "Base.Oiler",
        "Base.RepairKit_545x39",
        "Base.RepairKit_12g",
        "Base.RepairKit_762x54R",
        "Base.RepairKit_9x18",
    },
})
end

if mod:contains("seifuku") then
table.insert(BScats, {
    category = "ClothAcc",
    items = {
        "Base.Cute_CollarRed",
        "Base.Cute_CollarBlue",
        "Base.Cute_CollarBlack",
        "Base.TriangleTieWhite",
        "Base.TriangleTieRed",
        "Base.TriangleTieYellow",
        "Base.TriangleTieBlue",
        "Base.TriangleTieBlack",
        "Base.TriangleTiePink",
    },
})
end

if mod:contains("CigarettesExpanded") then
table.insert(BScats, {
    category = "Drugs",
    items = {
        "CigarettesExpanded.CigarettePackCanalGold",
        "CigarettesExpanded.DuntioCigarettePackLight",
        "CigarettesExpanded.CigarettePackCanalMenthol",
        "CigarettesExpanded.CigarettePackMuldraughMenthol",
        "CigarettesExpanded.CigaretteLuckyHitReds",
        "CigarettesExpanded.DuntioCigaretteLight",
        "CigarettesExpanded.DuntioCigarettePackMentholLight",
        "CigarettesExpanded.DuntioCigaretteCartonMentholLight",
        "CigarettesExpanded.CigaretteCartonLuckyHitGolds",
        "CigarettesExpanded.CigaretteCartonLuckyHitMenthol",
        "CigarettesExpanded.CigaretteCanalGold",
        "CigarettesExpanded.CigaretteCartonMuldraughReds",
        "CigarettesExpanded.Menthol",
        "CigarettesExpanded.DuntioCigaretteCartonMenthol",
        "CigarettesExpanded.CigaretteLuckyHitMenthol",
        "CigarettesExpanded.DuntioCigaretteCartonLight",
        "CigarettesExpanded.CigaretteCartonMuldraughMenthol",
        "CigarettesExpanded.CigarettePackMuldraughLights",
        "CigarettesExpanded.CigarettePackCanalCrush",
        "CigarettesExpanded.CigaretteMuldraughMenthol",
        "CigarettesExpanded.CigaretteCartonCanalGold",
        "CigarettesExpanded.DuntioCigaretteMentholLight",
        "CigarettesExpanded.CigaretteMuldraughReds",
        "CigarettesExpanded.CigaretteMuldraughLights",
        "CigarettesExpanded.CigaretteCartonCanalMenthol",
        "CigarettesExpanded.CigarettePackLuckyHitReds",
        "CigarettesExpanded.CigaretteCartonMuldraughLights",
        "CigarettesExpanded.CigarettePackMuldraughReds",
        "CigarettesExpanded.CigaretteCanalMenthol",
        "CigarettesExpanded.CigaretteCartonCanalCrush",
        "CigarettesExpanded.DuntioCigaretteMenthol",
        "CigarettesExpanded.CigarettePackLuckyHitGolds",
        "CigarettesExpanded.CigarettePackLuckyHitMenthol",
        "CigarettesExpanded.DuntioCigarettePackMenthol",
        "CigarettesExpanded.CigaretteLuckyHitGolds",
        "CigarettesExpanded.CigaretteCanalCrush",
        "CigarettesExpanded.CigaretteCartonLuckyHitReds",
    },
})
end

if mod:contains("gothCigs") then
table.insert(BScats, {
    category = "Drugs",
    items = {
        "Base.CigarettePack_Clove",
        "Base.CigaretteSingle_Clove",
        "Base.CigaretteCarton_Clove",
    },
})
end

if mod:contains("AliceGear") then
table.insert(BScats, {
    category = "ContL",
    items = {
        "ALICE.AliceCanteen",
    },
})
end

if mod:contains("hydecoautomaticgaragedoors") then
table.insert(BScats, {
    category = "ElecC",
    items = {
        "Base.HydeCoGateDrivePack_Large",
        "Base.HydeCoGateDrivePack_Small",
        "Base.HydeCoGateDrivePack_Medium",
    },
})

table.insert(BScats, {
    category = "ElecI",
    items = {
        "Base.HydeCoGarageDoorRemote",
        "Base.HydeCoGateController",
    },
})

table.insert(BSoverride, {
	category = "CraftG",
	items = {
		"Base.HeavyChain",
	},
})
end

if mod:contains("KeyBlank") then
table.insert(BScats, {
    category = "MiscK",
    items = {
        "KeyBlank.KeyBlank",
    },
})
end

if mod:contains("Ladders4220") then
table.insert(BScats, {
    category = "FurnG",
    items = {
        "Base.CollapsibleLadder_Packed",
        "Base.CollapsibleLadder",
        "Base.SteelLadder",
        "Base.WoodenLadder",
    },
})
end

if mod:contains("SpnCloth") then
table.insert(BScats, {
    category = "ClothBody",
    items = {
        "Spongie.Jacket_Tweed",
        "Spongie.Jacket_TweedOPEN",
    },
})
end

if mod:contains("PSR") then
table.insert(BScats, {
    category = "ElecC",
    items = {
        "PSR.DeepCycleBattery",
        "PSR.PSRInverter",
        "PSR.WiredCarBattery",
        "PSR.SuperBattery",
        "PSR.ImprovisedBattery",
        "PSR.DIYBattery",
        "PSR.SolarPanel",
    },
})

table.insert(BScats, {
    category = "ElecI",
    items = {
        "PSR.SolarFailsafe",
        "PSR.SolarPanelFlat",
        "PSR.PowerBank",
        "PSR.SolarPanelWall",
        "PSR.SolarPanelMounted",
    },
})
end

if mod:contains("JeevesDrops") then
table.insert(BScats, {
    category = "ElecI",
    items = {
        "JeevesDrops.JD_AirdropRadio",
    },
})
end

if mod:contains("SwampFoxsTacticalAxe") then
table.insert(BScats, {
    category = "WepMAxe",
    items = {
        "SwampFoxTacticalAxe.TacticalAxe",
    },
})
end

if mod:contains("UndeadSuvivor") then
table.insert(BScats, {
    category = "ContH",
    items = {
        "UndeadSurvivor.PrepperBags",
    },
})

table.insert(BScats, {
    category = "ToolL",
    items = {
        "UndeadSurvivor.PrepperFlashlight",
    },
})

table.insert(BScats, {
    category = "LitW",
    items = {
        "UndeadSurvivor.BountyPhoto10",
        "UndeadSurvivor.BountyPhoto09",
        "UndeadSurvivor.BountyPhoto01",
        "UndeadSurvivor.BountyPhoto02",
        "UndeadSurvivor.BountyPhoto03",
        "UndeadSurvivor.BountyPhoto04",
        "UndeadSurvivor.BountyPhoto05",
        "UndeadSurvivor.BountyPhoto06",
        "UndeadSurvivor.BountyPhoto07",
        "UndeadSurvivor.BountyPhoto08",
    },
})
end

if mod:contains("VorpallySauced") then
table.insert(BScats, {
    category = "CraftG",
    items = {
        "VorpallySauced.VorpalShard",
    },
})

table.insert(BScats, {
    category = "LitE",
    items = {
        "VorpallySauced.CompendiumMasteryRevealed",
        "VorpallySauced.CompendiumLegendsOfBlade",
        "VorpallySauced.CompendiumShootersCreed",
        "VorpallySauced.CompendiumBallisticMastery",
        "VorpallySauced.CompendiumAwakening",
        "VorpallySauced.CompendiumBlooded",
        "VorpallySauced.CompendiumBondedWeapon",
        "VorpallySauced.CompendiumPathOfSteel",
        "VorpallySauced.MorrisonsFieldJournal",
    },
})
end

if mod:contains("zReModVaccin30bykERHUS42S") then
table.insert(BScats, {
    category = "MiscJ",
    items = {
        "zReLabItems.LabSyringeUsed",
        "zReLabItems.CmpSyringeWithTaintedBlood",
        "zReLabItems.bkNotebookVaccineDummy",
    },
})

table.insert(BScats, {
    category = "CraftChem",
    items = {
        "zReLabItems.LabFlaskPack",
        "zReLabItems.LabSyringePack",
        "zReLabItems.ChSodiumHydroxideBag",
        "zReLabItems.CmpSyringeReusableWithTaintedBlood",
        "zReLabItems.ChHydrochloricAcidCan",
        "zReLabItems.LabFlaskDirty",
        "zReLabItems.LabTestTubePack",
        "zReLabItems.MatPlagueSamplesNormal",
        "zReLabItems.LabTestTube",
        "zReLabItems.CmpFlaskWithLeukocytes",
        "zReLabItems.LabSyringeReusableUsed",
        "zReLabItems.CmpTestTubeWithTaintedBlood",
        "zReLabItems.CmpFlaskWithBloodCellsOrBloodPlasmaDummy",
        "zReLabItems.LabCorks",
        "zReLabItems.ChSulfuricAcidCan",
        "zReLabItems.MatPlagueSamplesRare",
        "zReLabItems.CmpTestTubeWithAntibodies",
        "zReLabItems.CmpFlaskWithHydrogenPeroxide",
        "zReLabItems.ChAmmonia",
        "zReLabItems.LabSyringeReusable",
        "zReLabItems.CmpFlaskWithSodiumHypochlorite",
        "zReLabItems.LabFlask",
        "zReLabItems.CmpSyringeReusableWithBlood",
        "zReLabItems.CmpSyringeWithBlood",
        "zReLabItems.CmpFlaskWithBloodCells",
        "zReLabItems.CmpFlaskWithBloodPlasma",
        "zReLabItems.LabSyringe",
        "zReLabItems.CmpTestTubeWithInfectedBlood",
        "zReLabItems.CmpFlaskWithAmmoniumSulfate",
        "zReLabItems.LabTestTubeDirty",
        "zReLabItems.ChAmmoniumChlorideBag",
    },
})

table.insert(BScats, {
    category = "FurnC",
    items = {
        "zReLabItems.LabChromatograph",
        "zReLabItems.LabCentrifuge",
        "zReLabItems.LabMicroscope",
        "zReLabItems.LabChemistrySet",
        "zReLabItems.LabSpectrometer",
    },
})

table.insert(BScats, {
    category = "FurnD",
    items = {
        "zReLabItems.LabPosterHumanBrain",
        "zReLabItems.LabPosterWashHands",
        "zReLabItems.LabPosterBiohazard",
        "zReLabItems.LabDecorWhiteboard",
        "zReLabItems.LabPosterPeriodicTable",
    },
})

table.insert(BScats, {
    category = "MedM",
    items = {
        "zReLabItems.CmpSyringeWithQualityVaccine",
        "zReLabItems.CmpSyringeWithCure",
        "zReLabItems.CmpSyringeWithSerum",
        "zReLabItems.CmpSyringeReusableWithCure",
        "zReLabItems.CmpSyringeReusableWithPlainVaccine",
        "zReLabItems.CmpSyringeWithPlainVaccine",
        "zReLabItems.CmpAlbuminPills",
        "zReLabItems.CmpSyringeReusableWithQualityVaccine",
        "zReLabItems.CmpSyringeReusableWithSerum",
    },
})

table.insert(BScats, {
    category = "Misc",
    items = {
        "zReLabItems.LabTestResultNegative",
        "zReLabItems.LabTestResultPositive",
    },
})
end

if mod:contains("NewMusic") then
table.insert(BScats, {
	category = "ElecI",
	items = {
        "NewMusic.BoomboxCyan",
        "NewMusic.CDPlayerBlack",
        "NewMusic.CDPlayerWhite",
        "NewMusic.WalkmanBlue",
        "NewMusic.BoomboxWhite",
        "NewMusic.CDPlayerCyan",
        "NewMusic.BoomboxPurple",
        "NewMusic.BoomboxCamo",
        "NewMusic.VinylplayerEbony",
        "NewMusic.WalkmanRed",
        "NewMusic.WalkmanPink",
        "NewMusic.WalkmanYellow",
        "NewMusic.WalkmanLore",
        "NewMusic.CDPlayerCow",
        "NewMusic.WalkmanWhite",
        "NewMusic.CDPlayerYellow",
        "NewMusic.WalkmanCamo",
        "NewMusic.CDPlayerRed",
        "NewMusic.VinylplayerOak",
        "NewMusic.WalkmanMagenta",
        "NewMusic.WalkmanGreen",
        "NewMusic.CDPlayerPink",
        "NewMusic.BoomboxRed",
        "NewMusic.VinylplayerMetal",
        "NewMusic.CDPlayerGreen",
        "NewMusic.WalkmanCyan",
        "NewMusic.BoomboxPink",
        "NewMusic.CDPlayerOrange",
        "NewMusic.BoomboxGreen",
        "NewMusic.CDPlayerMagenta",
        "NewMusic.BoomboxOddbolt",
        "NewMusic.BoomboxYellow",
        "NewMusic.BoomboxBlack",
        "NewMusic.WalkmanBlack",
        "NewMusic.BoomboxOrange",
        "NewMusic.CDPlayerBlue",
        "NewMusic.BoomboxMagenta",
        "NewMusic.CDPlayerPurple",
        "NewMusic.WalkmanOrange",
        "NewMusic.BoomboxBlue",
        "NewMusic.BoomboxGrey",
        "NewMusic.WalkmanPurple",
        "NewMusic.VinylplayerRosewood",
    },
})

table.insert(BScats, {
	category = "MediaG",
	items = {
        "NewMusic.LootRepDeviceCDPlayerStoreTopUp",
        "NewMusic.LootRepDeviceRecordPlayerStoreTopUp",
        "NewMusic.LootRepMediaWaxStoreTopUp",
        "NewMusic.LootRepDeviceWalkman",
        "NewMusic.LootRepDeviceRecordPlayer",
        "NewMusic.LootRepMediaTape",
        "NewMusic.LootRepMediaDiscStoreTopUp",
        "NewMusic.LootRepDeviceWalkmanStoreTopUp",
        "NewMusic.LootRepMediaWax",
        "NewMusic.LootRepDeviceBoombox",
        "NewMusic.LootRepMediaDisc",
        "NewMusic.LootRepDeviceCDPlayer",
        "NewMusic.LootRepDeviceBoomboxStoreTopUp",
        "NewMusic.LootRepMediaTapeStoreTopUp",
    },
})
end

if mod:contains("eggonsaday42.13.2patch") then
table.insert(BScats, {
    category = "FurnG",
    items = {
        "EADAY.ToiletCabinDoor_Blue",
        "EADAY.ToiletCabinDoor_Rose",
        "EADAY.DoorWithWindow_White",
        "EADAY.SlideGlassDoor_MahoganyFrame",
        "EADAY.FittingRoomDoor_Brown",
        "EADAY.PushDoor_Green",
        "EADAY.SmallWicket_MetalMesh",
        "EADAY.UnknownDoor",
        "EADAY.SlideGlassDoor_AluFrame",
        "EADAY.CarpentryDoor3",
        "EADAY.CarpentryDoor2",
        "EADAY.CarpentryDoor1",
        "EADAY.MetalDoor_Bronze",
        "EADAY.ClassroomDoor_Ebony",
        "EADAY.ClassroomDoor_Pine",
        "EADAY.ShedDoor",
        "EADAY.SplitGlassDoor_Spiffos",
        "EADAY.PushDoorWithWindow_Pine_Right",
        "EADAY.SplitGlassDoor_Fossoil",
        "EADAY.GlassDoor_EbonyFrame",
        "EADAY.Door_White",
        "EADAY.MetalDoor_Grey_Left",
        "EADAY.SplitGlassDoor_GraphiteFrame_Left",
        "EADAY.DoorWithWindow_Walnut",
        "EADAY.LargeWicket_WoodenWithPeephole",
        "EADAY.FittingRoomDoor_Graphite",
        "EADAY.MetalDoor_Steel",
        "EADAY.LargeWicket_ElaborateMetal2",
        "EADAY.FittingRoomDoor_Beige",
        "EADAY.ChurchDoor_Blue_Right",
        "EADAY.GlassDoor_MahoganyFrame",
        "EADAY.SplitGlassDoor_PizzaWhirled",
        "EADAY.Door_Blue",
        "EADAY.SmallWicket_ElaborateMetal",
        "EADAY.SplitGlassDoor_GraphiteFrame_Right",
        "EADAY.PushDoor_Spiffos",
        "EADAY.PushDoor_Orange",
        "EADAY.PushDoorWithWindow_Pine_Left",
        "EADAY.ChurchDoor_Walnut_Left",
        "EADAY.SecurityDoor",
        "EADAY.SplitGlassDoor_EbonyFrame",
        "EADAY.PushDoor_Graphite",
        "EADAY.Door_Mahogany",
        "EADAY.Door_Walnut",
        "EADAY.PushDoor_Reddish",
        "EADAY.SmallWicket_Wooden",
        "EADAY.PushDoor_Blue",
        "EADAY.SplitGlassDoor_Gas2Go",
        "EADAY.CellDoor",
        "EADAY.MetalDoor_Brass",
        "EADAY.MetalDoor_Grey_Right",
        "EADAY.PileOCrepeDoor_Blue",
        "EADAY.PushDoorWithWindow",
        "EADAY.ChurchDoor_Walnut_Right",
        "EADAY.ChurchDoor_Blue_Left",
    },
})
end

if mod:contains("rSemiTruck") then
table.insert(BSoverride, {
    category = "CraftG",
    items = {
		"Base.HeavyChain",
    },
})
end

if mod:contains("SkillBookExpansionB42") then
table.insert(BScats, {
    category = "LitS",
    items = {
        "SkillBookExpansionB42.BookStrength1",
        "SkillBookExpansionB42.BookLightfooted1",
        "SkillBookExpansionB42.BookBlunt1",
        "SkillBookExpansionB42.BookLightfooted2",
        "SkillBookExpansionB42.BookStrength3",
        "SkillBookExpansionB42.BookLightfooted3",
        "SkillBookExpansionB42.BookStrength2",
        "SkillBookExpansionB42.BookBlunt3",
        "SkillBookExpansionB42.BookLightfooted4",
        "SkillBookExpansionB42.BookStrength5",
        "SkillBookExpansionB42.BookBlunt2",
        "SkillBookExpansionB42.BookLightfooted5",
        "SkillBookExpansionB42.BookStrength4",
        "SkillBookExpansionB42.BookBlunt5",
        "SkillBookExpansionB42.BookSmallBlunt4",
        "SkillBookExpansionB42.BookBlunt4",
        "SkillBookExpansionB42.BookSmallBlunt3",
        "SkillBookExpansionB42.BookSmallBlunt5",
        "SkillBookExpansionB42.BookSpear4",
        "SkillBookExpansionB42.BookSneaking3",
        "SkillBookExpansionB42.BookSpear5",
        "SkillBookExpansionB42.BookSneaking4",
        "SkillBookExpansionB42.BookSneaking5",
        "SkillBookExpansionB42.BookSpear1",
        "SkillBookExpansionB42.BookSpear2",
        "SkillBookExpansionB42.BookSneaking1",
        "SkillBookExpansionB42.BookSpear3",
        "SkillBookExpansionB42.BookSneaking2",
        "SkillBookExpansionB42.BookNimble3",
        "SkillBookExpansionB42.BookNimble2",
        "SkillBookExpansionB42.BookNimble5",
        "SkillBookExpansionB42.BookNimble4",
        "SkillBookExpansionB42.BookSneakingSet",
        "SkillBookExpansionB42.BookSmallBladeSet",
        "SkillBookExpansionB42.BookSmallBlade1",
        "SkillBookExpansionB42.BookSmallBlade2",
        "SkillBookExpansionB42.BookSmallBlade3",
        "SkillBookExpansionB42.BookSmallBlade4",
        "SkillBookExpansionB42.BookSmallBlade5",
        "SkillBookExpansionB42.BookAxe3",
        "SkillBookExpansionB42.BookAxe4",
        "SkillBookExpansionB42.BookAxe1",
        "SkillBookExpansionB42.BookAxe2",
        "SkillBookExpansionB42.BookLightfootedSet",
        "SkillBookExpansionB42.BookSprinting1",
        "SkillBookExpansionB42.BookSprinting2",
        "SkillBookExpansionB42.BookSprinting3",
        "SkillBookExpansionB42.BookSprinting4",
        "SkillBookExpansionB42.BookSprinting5",
        "SkillBookExpansionB42.BookNimbleSet",
        "SkillBookExpansionB42.BookSmallBluntSet",
        "SkillBookExpansionB42.BookStrengthSet",
        "SkillBookExpansionB42.BookBluntSet",
        "SkillBookExpansionB42.BookFitnessSet",
        "SkillBookExpansionB42.BookAxe5",
        "SkillBookExpansionB42.BookNimble1",
        "SkillBookExpansionB42.BookFitness2",
        "SkillBookExpansionB42.BookFitness1",
        "SkillBookExpansionB42.BookFitness4",
        "SkillBookExpansionB42.BookFitness3",
        "SkillBookExpansionB42.BookFitness5",
        "SkillBookExpansionB42.BookAxeSet",
        "SkillBookExpansionB42.BookSmallBlunt2",
        "SkillBookExpansionB42.BookSmallBlunt1",
        "SkillBookExpansionB42.BookSpearSet",
        "SkillBookExpansionB42.BookSprintingSet",
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