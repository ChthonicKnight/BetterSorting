BStable = BStable or {}

function BStable.BSgetCategory(item)
	local container = item:getFluidContainer()
	if container then
		local fluid = container:getPrimaryFluid()
		if fluid then
			local ftype = fluid:getFluidTypeString()
			for _, category in ipairs(BSfluidCats) do
                for _, name in ipairs(category.fluids) do
                    if ftype == name then
                        return category.category
                    end
                end
            end
		end
	end
	return nil
end

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "AppearC",
	fluids = {
        "HariDye",
    }
})

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "Clean",
	fluids = {
        "Bleach",
        "CleaningLiquid",
    }
})

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "ContL",
	fluids = {
        "Cologne",
        "Perfume",
        "PoisonPotent",
        "Blood",
        "Acid",
        "SecretFlavoring",
        "AnimalBlood",
        "AnimalGrease",
    }
})

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "CraftTailor",
	fluids = {
        "Dye",
    }
})

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "FoodA",
	fluids = {
        "Beer",
        "Brandy",
        "Champagne",
        "Cider",
        "CoffeeLiqueur",
        "Curacao",
        "Gin",
        "Grenadine",
        "Mead",
        "Port",
        "Rum",
        "Scotch",
        "Sherry",
        "Tequila",
        "Vermouth",
        "Vodka",
        "Whiskey",
        "Wine",
    }
})

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "FoodB",
	fluids = {
        "Water",
        "TaintedWater",
        "CarbonatedWater",
        "CowMilk",
        "AnimalMilk",
        "SheepMilk",
        "Cola",
        "ColaDiet",
        "GingerAle",
        "MilkChocolate",
        "SodaBlueberry",
        "SodaBubblegum",
        "SodaPop",
        "SodaLime",
        "SodaGrape",
        "SodaPineapple",
        "SodaStrewberry",
        "Coffee",
        "Tea",
        "Honey",
        "JuiceApple",
        "JuiceCranberry",
        "JuiceFruitpunch",
        "JuiceGrape",
        "JuiceLemon",
        "JuiceOrange",
        "JuiceTomato",
        "SimpleSyrup",
        "SpiffoJuice",
    }
})

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "Fuel",
	fluids = {
        "Petrol",
    }
})

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "MedT",
	fluids = {
        "RubbingAlcohol",
    }
})