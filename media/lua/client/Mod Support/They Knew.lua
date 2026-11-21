-- They Knew [B42]
-- https://steamcommunity.com/sharedfiles/filedetails/?id=3387110070
local mod = getActivatedMods()

if mod:contains("TheyKnewB42") then
table.insert(BScats, {
	category = "MedM",
	items = {
		 "TheyKnew.Zomboxolone",
		 "TheyKnew.ZomboxolonePill",
		 "TheyKnew.Zomboxycycline",
		 "TheyKnew.ZomboxycyclinePill",
		 "TheyKnew.Zomboxivir",
    },
})

table.insert(BScats, {
	category = "ClothBody",
	items = {
		 "TheyKnew.MysteriousHazmat"
    },
})

table.insert(BScats, {
	category = "ClothBag",
	items = {
		 "TheyKnew.MysteriousSatchel"
    },
})
end