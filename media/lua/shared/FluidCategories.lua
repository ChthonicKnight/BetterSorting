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

function BStable.BSupdateItem(item)
    item:setDisplayCategory(
        BStable.BSgetCategory(item) or item:getScriptItem():getDisplayCategory())
end

function BStable.BSupdateContainer(container)
    local items = container:getAllEvalRecurse(function(item)
        return item:isFluidContainer()
    end)
    for i = 0, items:size() - 1 do BStable.BSupdateItem(items:get(i))
    end
end

require "Fluids/ISFluidEmptyAction"
local BSfluidEmpty = ISFluidEmptyAction.complete
function ISFluidEmptyAction:complete()
    local result = BSfluidEmpty(self)
    BStable.BSupdateItem(self.container:getOwner())
    return result
end

require "TimedActions/ISDrinkFluidAction"
local BSdrinkFluid = ISDrinkFluidAction.complete
function ISDrinkFluidAction:complete()
    local result = BSdrinkFluid(self)
    BStable.BSupdateItem(self.item)
    return result
end

require "TimedActions/ISDrinkFromBottle"
local BSdrinkBottle = ISDrinkFromBottle.complete
function ISDrinkFromBottle:complete()
    local result = BSdrinkBottle(self)
    BStable.BSupdateItem(self.item)
    return result
end

require "TimedActions/ISFluidTransferAction"
local BSfluidTransfer = ISFluidTransferAction.complete
function ISFluidTransferAction:complete()
    local result = BSfluidTransfer(self)
    BStable.BSupdateItem(self.sourceOwner)
    BStable.BSupdateItem(self.targetOwner)
    return result
end

require "TimedActions/ISTakeFuel"
local BStakeFuel = ISTakeFuel.complete
function ISTakeFuel:complete()
    local result = BStakeFuel(self)
    BStable.BSupdateItem(self.petrolCan)
    return result
end

require "TimedActions/ISTakeWaterAction"
local BStakeWater = ISTakeWaterAction.complete
function ISTakeWaterAction:complete()
    local result = BStakeWater(self)
    BStable.BSupdateItem(self.item)
    return result
end

BSfluidCats = BSfluidCats or {}
table.insert(BSfluidCats, {
	category = "AppearC",
	fluids = {
        "HairDye",
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