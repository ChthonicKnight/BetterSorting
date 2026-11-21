-- Energy Drinks [B42]
-- https://steamcommunity.com/sharedfiles/filedetails/?id=2674541310
local mod = getActivatedMods()

if mod:contains("IMWSEnergyDrinksBETA") then
table.insert(BScats, {
	category = "FoodB",
	items = {
		 "Base.IMWSEnergyDrink1",
		 "Base.IMWSEnergyDrink2",
		 "Base.IMWSEnergyDrink3",
		 "Base.IMWSEnergyDrink4",
		 "Base.IMWSEnergyDrink5",
		 "Base.IMWSEnergyDrinkBottle",
		 "Base.IMWSEnergyDrinkBottleWater",
    },
})

table.insert(BScats, {
	category = "ContL",
	items = {
		 "Base.IMWSEnergyDrinkBottle",
    },
})
end