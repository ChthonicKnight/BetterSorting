local mod = getActivatedMods()

if mod:contains("JeevesPC") then
table.insert(BScats, {
	category = "ElecI",
	items = {
        "JeevesPC.BookScanner",
        "JeevesPC.Printer",
        "JeevesPC.BrokenPC",
        "JeevesPC.PDA",
        "JeevesPC.SolderingIron",
    },
})

table.insert(BScats, {
	category = "ElecC",
	items = {
        "JeevesPC.LowEndVideoCard",
        "JeevesPC.Solder",
        "JeevesPC.LowEndRAM",
        "JeevesPC.CPU",
        "JeevesPC.PrinterInk",
        "JeevesPC.LeadChunks",
        "JeevesPC.SolderIngot",
    },
})

table.insert(BScats, {
	category = "MediaG",
	items = {
        "JeevesPC.FloppyBlank",
        "JeevesPC.FloppyHordeDefense",
        "JeevesPC.FloppySnake",
        "JeevesPC.FloppyZombieRunner",
        "JeevesPC.FloppyEncrypted",
        "JeevesPC.FloppyBreakout",
        "JeevesPC.FloppyDamaged",
        "JeevesPC.FloppyTetris",
        "JeevesPC.FloppyPong",
        "JeevesPC.FloppyCorrupted",
        "JeevesPC.FloppyDeadMaze",
        "JeevesPC.FloppyInvaders",
        "JeevesPC.FloppyRecorded",
        "JeevesPC.FloppyAsteroids",
        "JeevesPC.FloppyBunkerBreach",
        "JeevesPC.FloppyZombieRacer",
    },
})

table.insert(BScats, {
	category = "FurnE",
	items = {
        "JeevesPC.EnhancedPC",
        "JeevesPC.PersonalComputer",
        "JeevesPC.ColorPC",
    },
})

table.insert(BScats, {
	category = "MediaS",
	items = {
        "JeevesPC.FloppyTraining_Welding_Advanced",
        "JeevesPC.FloppyTraining_Welding_Intermediate",
        "JeevesPC.FloppyTraining_Agriculture_Intermediate",
        "JeevesPC.FloppyTraining_FirstAid_Advanced",
        "JeevesPC.FloppyTraining_Fishing_Intermediate",
        "JeevesPC.FloppyTraining_Blacksmithing_Intermediate",
        "JeevesPC.FloppyTraining_Mechanics_Beginner",
        "JeevesPC.FloppyTraining_Pottery_Beginner",
        "JeevesPC.FloppyTraining_Tailoring_Beginner",
        "JeevesPC.FloppyTraining_Cooking_Advanced",
        "JeevesPC.FloppyTraining_Butchering_Intermediate",
        "JeevesPC.FloppyTraining_ShortBlade_Intermediate",
        "JeevesPC.FloppyTraining_Masonry_Beginner",
        "JeevesPC.FloppyTraining_Reloading_Intermediate",
        "JeevesPC.FloppyTraining_LongBlunt_Advanced",
        "JeevesPC.FloppyTraining_LongBlade_Intermediate",
        "JeevesPC.FloppyTraining_ShortBlunt_Advanced",
        "JeevesPC.FloppyTraining_Butchering_Advanced",
        "JeevesPC.FloppyTraining_Reloading_Beginner",
        "JeevesPC.FloppyTraining_Axe_Intermediate",
        "JeevesPC.FloppyTraining_LongBlunt_Beginner",
        "JeevesPC.FloppyTraining_AnimalCare_Advanced",
        "JeevesPC.FloppyTraining_ShortBlade_Beginner",
        "JeevesPC.FloppyTraining_Agriculture_Beginner",
        "JeevesPC.FloppyTraining_Cooking_Beginner",
        "JeevesPC.FloppyTraining_Tracking_Beginner",
        "JeevesPC.FloppyTraining_Carpentry_Advanced",
        "JeevesPC.FloppyTraining_Glassmaking_Intermediate",
        "JeevesPC.FloppyTraining_Fishing_Advanced",
        "JeevesPC.FloppyTraining_Cooking_Intermediate",
        "JeevesPC.FloppyTraining_AnimalCare_Beginner",
        "JeevesPC.FloppyTraining_ShortBlade_Advanced",
        "JeevesPC.FloppyTraining_FirstAid_Intermediate",
        "JeevesPC.FloppyTraining_Electrical_Intermediate",
        "JeevesPC.FloppyTraining_Knapping_Advanced",
        "JeevesPC.FloppyTraining_ShortBlunt_Intermediate",
        "JeevesPC.FloppyTraining_Tracking_Intermediate",
        "JeevesPC.FloppyTraining_LongBlade_Beginner",
        "JeevesPC.FloppyTraining_Maintenance_Intermediate",
        "JeevesPC.FloppyTraining_Axe_Beginner",
        "JeevesPC.FloppyTraining_Butchering_Beginner",
        "JeevesPC.FloppyTraining_Maintenance_Beginner",
        "JeevesPC.FloppyTraining_Electrical_Advanced",
        "JeevesPC.FloppyTraining_Pottery_Intermediate",
        "JeevesPC.FloppyTraining_Masonry_Intermediate",
        "JeevesPC.FloppyTraining_Pottery_Advanced",
        "JeevesPC.FloppyTraining_Masonry_Advanced",
        "JeevesPC.FloppyTraining_LongBlunt_Intermediate",
        "JeevesPC.FloppyTraining_Mechanics_Intermediate",
        "JeevesPC.FloppyTraining_FirstAid_Beginner",
        "JeevesPC.FloppyTraining_AnimalCare_Intermediate",
        "JeevesPC.FloppyTraining_LongBlade_Advanced",
        "JeevesPC.FloppyTraining_Mechanics_Advanced",
        "JeevesPC.FloppyTraining_Trapping_Advanced",
        "JeevesPC.FloppyTraining_Axe_Advanced",
        "JeevesPC.FloppyTraining_Maintenance_Advanced",
        "JeevesPC.FloppyTraining_Knapping_Intermediate",
        "JeevesPC.FloppyTraining_Tracking_Advanced",
        "JeevesPC.FloppyTraining_Carving_Beginner",
        "JeevesPC.FloppyTraining_Electrical_Beginner",
        "JeevesPC.FloppyTraining_Spear_Beginner",
        "JeevesPC.FloppyTraining_Aiming_Beginner",
        "JeevesPC.FloppyTraining_Welding_Beginner",
        "JeevesPC.FloppyTraining_Knapping_Beginner",
        "JeevesPC.FloppyTraining_ShortBlunt_Beginner",
        "JeevesPC.FloppyTraining_Trapping_Intermediate",
        "JeevesPC.FloppyTraining_Blacksmithing_Beginner",
        "JeevesPC.FloppyTraining_Glassmaking_Beginner",
        "JeevesPC.FloppyTraining_Carpentry_Intermediate",
        "JeevesPC.FloppyTraining_Agriculture_Advanced",
        "JeevesPC.FloppyTraining_Carving_Intermediate",
        "JeevesPC.FloppyTraining_Blacksmithing_Advanced",
        "JeevesPC.FloppyTraining_Carpentry_Beginner",
        "JeevesPC.FloppyTraining_Foraging_Beginner",
        "JeevesPC.FloppyTraining_Fishing_Beginner",
        "JeevesPC.FloppyTraining_Tailoring_Intermediate",
        "JeevesPC.FloppyTraining_Foraging_Intermediate",
        "JeevesPC.FloppyTraining_Carving_Advanced",
        "JeevesPC.FloppyTraining_Aiming_Intermediate",
        "JeevesPC.FloppyTraining_Spear_Advanced",
        "JeevesPC.FloppyTraining_Reloading_Advanced",
        "JeevesPC.FloppyTraining_Glassmaking_Advanced",
        "JeevesPC.FloppyTraining_Spear_Intermediate",
        "JeevesPC.FloppyTraining_Tailoring_Advanced",
        "JeevesPC.FloppyTraining_Trapping_Beginner",
        "JeevesPC.FloppyTraining_Foraging_Advanced",
        "JeevesPC.FloppyTraining_Aiming_Advanced",
        "JeevesPC.FloppyDocument",
        "JeevesPC.FloppySkillLibrary",
        "JeevesPC.FloppyRecipe",
    },
})

table.insert(BScats, {
	category = "LitW",
	items = {
        "JeevesPC.PaperReem",
    },
})

table.insert(BScats, {
	category = "Collect",
	items = {

    },
})

table.insert(BScats, {
	category = "Collect",
	items = {

    },
})

table.insert(BScats, {
	category = "Collect",
	items = {

    },
})
end