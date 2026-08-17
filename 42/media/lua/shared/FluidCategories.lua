function BSgetCategory(item)
	local container = item:getFluidContainer()
	if container then
        if container:isEmpty() then
            local name = container:getContainerName()
            if name == "Pot" or name == "Pan" or name == "Saucepan" or name == "Bowl" or name == "Cup" or name == "Mug" then
            return "CookImp"
        end
            return "ContL"
        end
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

function BSupdateItem(item)
    item:setDisplayCategory(
        BSgetCategory(item) or item:getScriptItem():getDisplayCategory())
end

function BSupdateContainer(container)
    local items = container:getAllEvalRecurse(function(item)
        return item:isFluidContainer()
    end)
    for i = 0, items:size() - 1 do BSupdateItem(items:get(i))
    end
end

require "Fluids/ISFluidEmptyAction"
local BSfluidEmptyComplete = ISFluidEmptyAction.complete
local BSfluidEmptyStop = ISFluidEmptyAction.stop
function ISFluidEmptyAction:complete()
    local item = self.container:getOwner()
    local result = BSfluidEmptyComplete(self)
    if instanceof(item, "InventoryItem") then BSupdateItem(item)
    end
    return result
end
function ISFluidEmptyAction:stop()
    local item = self.container:getOwner()
    local result = BSfluidEmptyStop(self)
    if instanceof(item, "InventoryItem") then BSupdateItem(item)
    end
    return result
end

require "TimedActions/ISDrinkFluidAction"
local BSdrinkFluidComplete = ISDrinkFluidAction.complete
local BSdrinkFluidStop = ISDrinkFluidAction.stop
function ISDrinkFluidAction:complete()
    local item = self.item
    local result = BSdrinkFluidComplete(self)
    BSupdateItem(item)
    return result
end
function ISDrinkFluidAction:stop()
    local item = self.item
    local result = BSdrinkFluidStop(self)
    BSupdateItem(item)
    return result
end

require "TimedActions/ISDrinkFromBottle"
local BSdrinkBottleComplete = ISDrinkFromBottle.complete
local BSdrinkBottleStop = ISDrinkFromBottle.stop
function ISDrinkFromBottle:complete()
    local item = self.item
    local result = BSdrinkBottleComplete(self)
    BSupdateItem(item)
    return result
end
function ISDrinkFromBottle:stop()
    local item = self.item
    local result = BSdrinkBottleStop(self)
    BSupdateItem(item)
    return result
end

require "Fluids/ISFluidTransferAction"
local BSfluidTransferComplete = ISFluidTransferAction.complete
local BSfluidTransferStop = ISFluidTransferAction.stop
function BSupdateTransferItems(source, target)
    if instanceof(source, "InventoryItem") then BSupdateItem(source)
    end
    if instanceof(target, "InventoryItem") then BSupdateItem(target)
    end
end
function ISFluidTransferAction:complete()
    local source = self.sourceOwner
    local target = self.targetOwner
    local result = BSfluidTransferComplete(self)
    BSupdateTransferItems(source, target)
    return result
end
function ISFluidTransferAction:stop()
    local source = self.sourceOwner
    local target = self.targetOwner
    local result = BSfluidTransferStop(self)
    BSupdateTransferItems(source, target)
    return result
end

require "TimedActions/ISTakeFuel"
local BStakeFuelComplete = ISTakeFuel.complete
local BStakeFuelStop = ISTakeFuel.stop
function ISTakeFuel:complete()
    local item = self.petrolCan
    local result = BStakeFuelComplete(self)
    BSupdateItem(item)
    return result
end
function ISTakeFuel:stop()
    local item = self.petrolCan
    local result = BStakeFuelStop(self)
    BSupdateItem(item)
    return result
end

require "TimedActions/ISTakeWaterAction"
local BStakeWaterComplete = ISTakeWaterAction.complete
local BStakeWaterStop = ISTakeWaterAction.stop
function ISTakeWaterAction:complete()
    local item = self.item
    local result = BStakeWaterComplete(self)
    if item then BSupdateItem(item) end
    return result
end
function ISTakeWaterAction:stop()
    local item = self.item
    local result = BStakeWaterStop(self)
    if item then BSupdateItem(item)
    end
    return result
end

BSfluidCats = BSfluidCats or {}

table.insert(BSfluidCats, {
	category = "AppearC",
	fluids = {
        "HairDye",
    }
})

table.insert(BSfluidCats, {
	category = "Clean",
	fluids = {
        "Bleach",
        "CleaningLiquid",
    }
})

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

table.insert(BSfluidCats, {
	category = "CraftTailor",
	fluids = {
        "Dye",
    }
})

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

table.insert(BSfluidCats, {
	category = "Fuel",
	fluids = {
        "Petrol",
    }
})

table.insert(BSfluidCats, {
	category = "MedT",
	fluids = {
        "RubbingAlcohol",
    }
})
