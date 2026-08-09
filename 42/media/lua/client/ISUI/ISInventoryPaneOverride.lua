require "ISUI/ISInventoryPane"
function ISInventoryPane:refreshContainer()
    self.itemslist = {}
    self.itemindex = {}

    if self.collapsed == nil then
        self.collapsed = {}
    end
	if self.selected == nil then
		self.selected = {}
	end

	local selected = self:saveSelection({})
	table.wipe(self.selected)

	local playerObj = getSpecificPlayer(self.player)

	if not self.hotbar then
		self.hotbar = getPlayerHotbar(self.player);
	end

	local isEquipped = {}
	local isInHotbar = {}
	if self.parent.onCharacter then
		local wornItems = playerObj:getWornItems()
		for i=1,wornItems:size() do
			local wornItem = wornItems:get(i-1)
			isEquipped[wornItem:getItem()] = true
		end
		local item = playerObj:getPrimaryHandItem()
		if item then
			isEquipped[item] = true
		end
		item = playerObj:getSecondaryHandItem()
		if item then
			isEquipped[item] = true
		end
		if self.hotbar and self.hotbar.attachedItems then
			for _,item in pairs(self.hotbar.attachedItems) do
				isInHotbar[item] = true
			end
		end
	end

    local expandedItems = 0;
    for k, v in pairs(self.collapsed) do
        if not self.collapsed[k] then
            expandedItems = 1;
            break
        end
    end

    if expandedItems == 1 then
        self.collapseAll:setVisible(true);
        self.expandAll:setVisible(false);
    else
        self.collapseAll:setVisible(false);
        self.expandAll:setVisible(true);
    end

    local it = self.inventory:getItems();
    for i = 0, it:size()-1 do
        local item = it:get(i);
		local add = true;
		-- don't add the ZedDmg category, they are just equipped models
		if item:isHidden() then
			add = false;
		end
		if add then
			local itemName = item:getName(playerObj);
			if item:IsFood() and item:getHerbalistType() and item:getHerbalistType() ~= "" then
				if playerObj:isRecipeActuallyKnown("Herbalist") then
					if item:getHerbalistType() == "Berry" then
						itemName = (item:getPoisonPower() > 0) and getText("IGUI_PoisonousBerry") or getText("IGUI_Berry")
					end
					if item:getHerbalistType() == "Mushroom" then
						itemName = (item:getPoisonPower() > 0) and getText("IGUI_PoisonousMushroom") or getText("IGUI_Mushroom")
					end
				else
					if item:getHerbalistType() == "Berry"  then
						itemName = getText("IGUI_UnknownBerry")
					end
					if item:getHerbalistType() == "Mushroom" then
						itemName = getText("IGUI_UnknownMushroom")
					end
				end
				if itemName ~= item:getDisplayName() then
					item:setName(itemName);
				end
				itemName = item:getName(playerObj)
			end
			local equipped = false
			local inHotbar = false
			if self.parent.onCharacter then
				if isEquipped[item] then
					itemName = "equipped:"..itemName
					equipped = true
				elseif (item:isItemType(ItemType.KEY_RING) or item:hasTag(ItemTag.KEY_RING)) and playerObj:getInventory():contains(item) then
					itemName = "keyring:"..itemName
					equipped = true
				end
				if self.hotbar then
					inHotbar = isInHotbar[item];
					if inHotbar and not equipped then
						itemName = "hotbar:"..itemName
					end
				end
			end
			if self.itemindex[itemName] == nil then
				self.itemindex[itemName] = {};
				self.itemindex[itemName].items = {}
				self.itemindex[itemName].count = 0
			end
			local ind = self.itemindex[itemName];
			ind.equipped = equipped
			ind.inHotbar = inHotbar;

			ind.count = ind.count + 1
			ind.items[ind.count] = item;
		end
    end

    for k, v in pairs(self.itemindex) do

        if v ~= nil then
            table.insert(self.itemslist, v);
            local count = 1;
            local weight = 0;
            for k2, v2 in ipairs(v.items) do
                if v2 == nil then
                    table.remove(v.items, k2);
                else
                    count = count + 1;
                    weight = weight + v2:getUnequippedWeight();
                end
            end
            v.count = count;
            v.invPanel = self;
            v.name = k
            --v.cat = v.items[1]:getDisplayCategory() or v.items[1]:getCategory(); --ORIGINAL CODE--
                --Use my BStable.BSgetCategory function to detect fluid container > fluid then assign item category before defaulting back to original behavior.
                --This only adjusts the category value and not the display of the category.

            v.cat = BStable.BSgetCategory(v.items[1]) or v.items[1]:getDisplayCategory() or v.items[1]:getCategory(); --NEW CODE--
            v.weight = weight;
            if self.collapsed[v.name] == nil then
                self.collapsed[v.name] = true;
            end
        end
    end

    table.sort(self.itemslist, self.itemSortFunc );
    
    -- Adding the first item in list additionally at front as a dummy at the start, to be used in the details view as a header.
    for k, v in ipairs(self.itemslist) do
        local item = v.items[1];
        table.insert(v.items, 1, item);
    end

    self:restoreSelection(selected);
    table.wipe(selected);

    self:updateScrollbars();
    self.inventory:setDrawDirty(false);

    -- Update the buttons
    if self:isMouseOver() then
        self:onMouseMove(0, 0)
    end

    self:updateWorldObjectHighlight();

    self.refreshContainerCount = (self.refreshContainerCount or 0) + 1
    if self.refreshContainerCount > 10000 then self.refreshContainerCount = 0 end
end

--IMPORT LOCAL VARIABLES FOR USE AGAIN--
local normalTextColor = { r = 0.7, g = 0.7, b = 0.7, a = 1.0 }
local unwantedTextColor = { r = 0.5, g = 0.5, b = 0.5, a = 0.65 }

function ISInventoryPane:renderdetails(doDragged)
    self:updateScrollbars();

    if doDragged == false then
        table.wipe(self.items)

        if self.inventory:isDrawDirty() then
            self:refreshContainer()
        end
    end
    
    local player = getSpecificPlayer(self.player)

    local checkDraggedItems = false
    if doDragged and self.dragging ~= nil and self.dragStarted then
        self.draggedItems:update()
        checkDraggedItems = true
    end

    if (self.itemsToHighlight ~= nil) and ((self.itemsToHighlightOwner == nil) or (not self.itemsToHighlightOwner:isReallyVisible())) then
        self.itemsToHighlightOwner = nil
        self.itemsToHighlight = nil
    end

    if not doDragged then
		-- background of item icon
        self:drawRectStatic(0, 0, self.column2, self.height, 0.6, 0, 0, 0);
    end
    local y = 0;
    local alt = false;
    if self.itemslist == nil then
        self:refreshContainer();
    end
    local MOUSEX = self:getMouseX()
    local MOUSEY = self:getMouseY()
    local YSCROLL = self:getYScroll()
    local HEIGHT = self:getHeight()
    local equippedLine = false
    local all3D = true;
    -- Go through all the stacks of items.
    for k, v in ipairs(self.itemslist) do
        local count = 1;
        -- Go through each item in stack..
        for k2, v2 in ipairs(v.items) do
            local item = v2;
            local doIt = true;
            local xoff = 0;
            local yoff = 0;
            if doDragged == false then
                -- if it's the first item, then store the category, otherwise the item
                if count == 1 then
                    table.insert(self.items, v);
                else
                    table.insert(self.items, item);
                end

                if instanceof(item, 'InventoryItem') then
                    item:updateAge()
                end
                if instanceof(item, 'Clothing') then
                    item:updateWetness()
                end
            end
            local isDragging = false
            if self.dragging ~= nil and self.selected[y+1] ~= nil and self.dragStarted then
                xoff = MOUSEX - self.draggingX;
                yoff = MOUSEY - self.draggingY;
                if not doDragged then
                    doIt = false;
                else
                    self:suspendStencil();
                    isDragging = true
                end
            else
                if doDragged then
                    doIt = false;
                end
            end
            local topOfItem = y * self.itemHgt + YSCROLL
            if not isDragging and ((topOfItem + self.itemHgt < 0) or (topOfItem > HEIGHT)) then
                doIt = false
            end
            if doIt == true then
                -- do controller selection.
                if self.joyselection ~= nil and self.doController then
                    if self.joyselection == y then
                        self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self:getWidth()-1, self.itemHgt, 0.2, 0.2, 1.0, 1.0);
                    end
                end

                -- only do icon if header or dragging sub items without header.
                local tex = item:getTex();
                if tex ~= nil then
					local texDY = 0
					local texWH = math.min(self.itemHgt-2,32)
					local auxDXY = self.itemHgt-(self.itemHgt-texWH)/2-13
                    local texOffsetY = (y*self.itemHgt)+(self.itemHgt-texWH)/2+self.headerHgt+yoff
                    local texOffsetX = self.column2-texWH-(self.itemHgt-texWH)/2+xoff
                    if count == 1  then
                        ISInventoryItem.renderItemIcon(self, item, texOffsetX, texOffsetY+texDY, 1.0, texWH, texWH);
						if player:isEquipped(item) then
							self:drawTexture(self.equippedItemIcon, texOffsetX+auxDXY, texOffsetY+auxDXY, 1, 1, 1, 1);
						end
						if not self.hotbar then
							self.hotbar = getPlayerHotbar(self.player);
						end
						if not player:isEquipped(item) and self.hotbar and self.hotbar:isInHotbar(item) then
							self:drawTexture(self.equippedInHotbar, texOffsetX+auxDXY, texOffsetY+auxDXY, 1, 1, 1, 1);
						end
                        if item:isBroken() then
                            self:drawTexture(self.brokenItemIcon, texOffsetX+auxDXY, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        end
                        if instanceof(item, "Food") and item:isFrozen() then
                            self:drawTexture(self.frozenItemIcon, texOffsetX+auxDXY, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        end
                        if instanceof(item, "Food") and(item:isTainted() and getSandboxOptions():getOptionByName("EnableTaintedWaterText"):getValue()) or player:isKnownPoison(item) then
                            self:drawTexture(self.poisonIcon, texOffsetX+auxDXY, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        end
                        if self:isLiteratureRead(player, item) or item:hasBeenSeen(player) or item:hasBeenHeard(player) or player:hasReadMap(item) then
                            self:drawTexture(getTexture("media/ui/Tick_Mark-10.png"), texOffsetX+auxDXY, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        end
                        local fluidContainer = item:getFluidContainer() or (item:getWorldItem() and item:getWorldItem():getFluidContainer());
                        if fluidContainer ~= nil and (not fluidContainer:isEmpty()) and (fluidContainer:contains(Fluid.Bleach) or (fluidContainer:contains(Fluid.TaintedWater) and fluidContainer:getPoisonRatio() > 0.1 and getSandboxOptions():getOptionByName("EnableTaintedWaterText"):getValue())) then
							self:drawTexture(self.poisonIcon, (10+auxDXY+xoff), (y*self.itemHgt)+self.headerHgt+auxDXY-1+yoff, 1, 1, 1, 1);
						end
                        if item:isFavorite() then
                            self:drawTexture(self.favoriteStar, texOffsetX, texOffsetY+auxDXY, 1, 1, 1, 1);
                        elseif item:isNoRecipes(player) then
                            self:drawTextureScaled(self.noFavoriteRecipeInputStar, texOffsetX, texOffsetY+auxDXY, favoriteRecipeInputStarSize, favoriteRecipeInputStarSize, 1, 1, 1, 1);
                        elseif item:isFavouriteRecipeInput(player) then
                            self:drawTextureScaled(self.favoriteRecipeInputStar, texOffsetX, texOffsetY+auxDXY, favoriteRecipeInputStarSize, favoriteRecipeInputStarSize, 1, 1, 1, 1);
                        end
                    elseif v.count > 2 or (doDragged and count > 1 and self.selected[(y+1) - (count-1)] == nil) then
                        -- removed the fade effect on items in stacks as it makes it difficult to tell what color clothing and bags in stacks are
                        -- we also have variable icons for items now as well, so that makes it difficult as well when they are in stacks
                        ISInventoryItem.renderItemIcon(self, item, 10+16+xoff, texOffsetY+texDY, 1.0, texWH, texWH);
						if player:isEquipped(item) then
							self:drawTexture(self.equippedItemIcon, texOffsetX+auxDXY+16, texOffsetY+auxDXY, 1, 1, 1, 1);
                        end
						if not self.hotbar then
							self.hotbar = getPlayerHotbar(self.player);
						end
						if not player:isEquipped(item) and self.hotbar and self.hotbar:isInHotbar(item) then
							self:drawTexture(self.equippedInHotbar, texOffsetX+auxDXY, texOffsetY+auxDXY, 1, 1, 1, 1);
						end
                        if item:isBroken() then
                            self:drawTexture(self.brokenItemIcon, texOffsetX+auxDXY+16, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        end
                        if instanceof(item, "Food") and item:isFrozen() then
                            self:drawTexture(self.frozenItemIcon, texOffsetX+auxDXY+16, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        end
                        if self:isLiteratureRead(player, item) or item:hasBeenSeen(player) or item:hasBeenHeard(player) or player:hasReadMap(item) then
                            self:drawTexture(getTexture("media/ui/Tick_Mark-10.png"), texOffsetX+auxDXY, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        end
                        if instanceof(item, "Food") and(item:isTainted() and getSandboxOptions():getOptionByName("EnableTaintedWaterText"):getValue()) or player:isKnownPoison(item) then
                            self:drawTexture(self.poisonIcon, 10+16+xoff+auxDXY, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        end
                        local fluidContainer = item:getFluidContainer() or (item:getWorldItem() and item:getWorldItem():getFluidContainer());
                        if fluidContainer ~= nil and (not fluidContainer:isEmpty()) and (fluidContainer:contains(Fluid.Bleach) or (fluidContainer:contains(Fluid.TaintedWater) and fluidContainer:getPoisonRatio() > 0.1 and getSandboxOptions():getOptionByName("EnableTaintedWaterText"):getValue())) then
							self:drawTexture(self.poisonIcon, (10+auxDXY+xoff), (y*self.itemHgt)+self.headerHgt+auxDXY-1+yoff, 1, 1, 1, 1);
						end
                        if item:isFavorite() then
                            self:drawTexture(self.favoriteStar, texOffsetX+auxDXY+19, texOffsetY+auxDXY-1, 1, 1, 1, 1);
                        elseif item:isNoRecipes(player) then
                            self:drawTextureScaled(self.noFavoriteRecipeInputStar, texOffsetX, texOffsetY+auxDXY, favoriteRecipeInputStarSize, favoriteRecipeInputStarSize, 1, 1, 1, 1);
                        elseif item:isFavouriteRecipeInput(player) then
                            self:drawTextureScaled(self.favoriteRecipeInputStar, texOffsetX, texOffsetY+auxDXY, favoriteRecipeInputStarSize, favoriteRecipeInputStarSize, 1, 1, 1, 1);
                        end
                    end
                end

                if count == 1 and v.count > 2 then
					if not doDragged then
                        local texWH = math.min(self.itemHgt-2,32)
                        local texOffsetX = self.column2-texWH-(self.itemHgt-texWH)/2+xoff
                        local size = math.min(15, 8+getCore():getOptionFontSizeReal()*2)
                        local xPos = math.max(2, (2+texOffsetX-size)/2)
                        if not self.collapsed[v.name] then
                            self:drawTextureScaled(self.treeexpicon, xPos, (y*self.itemHgt)+self.headerHgt+(self.itemHgt-15)/2+yoff, size, size, 1, 1, 1, 0.8)
                        else
                            self:drawTextureScaled(self.treecolicon, xPos, (y*self.itemHgt)+self.headerHgt+(self.itemHgt-15)/2+yoff, size, size, 1, 1, 1, 0.8)
                        end
                    end
                end

                if self.selected[y+1] ~= nil and not self.highlightItem then -- clicked/dragged item
					if checkDraggedItems and self.collapsed[v.name] and self.draggedItems:cannotDropAnyItem() then
						self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self:getWidth()-1, self.itemHgt, 0.20, 1.0, 0.0, 0.0);
					elseif checkDraggedItems and not self.collapsed[v.name] and self.draggedItems:cannotDropItem(item) then
						self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self:getWidth()-1, self.itemHgt, 0.20, 1.0, 0.0, 0.0);
					elseif false and (((instanceof(item,"Food") or instanceof(item,"DrainableComboItem")) and item:getHeat() ~= 1) or item:getItemHeat() ~= 1) then
						if (((instanceof(item,"Food") or instanceof(item,"DrainableComboItem")) and item:getHeat() > 1) or item:getItemHeat() > 1) then
							self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.5, math.abs(item:getInvHeat()), 0.0, 0.0);
						else
							self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.5, 0.0, 0.0, math.abs(item:getInvHeat()));
						end
                    else
						self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self:getWidth()-1, self.itemHgt, 0.20, 1.0, 1.0, 1.0);
					end
                elseif self.mouseOverOption == y+1 and not self.highlightItem then -- called when you mose over an element
					if(((instanceof(item,"Food") or instanceof(item,"DrainableComboItem")) and item:getHeat() ~= 1) or item:getItemHeat() ~= 1) then
                        if (((instanceof(item,"Food") or instanceof(item,"DrainableComboItem")) and item:getHeat() > 1) or item:getItemHeat() > 1) then
							self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.3, math.abs(item:getInvHeat()), 0.0, 0.0);
						else
							self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.3, 0.0, 0.0, math.abs(item:getInvHeat()));
						end
                    else
						self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self:getWidth()-1, self.itemHgt, 0.05, 1.0, 1.0, 1.0);
					end
                else
                    if count == 1 then -- normal background (no selected, no dragging..)
						-- background of item line
                        if self.highlightItem and self.highlightItem == item:getType() then
                            if not self.blinkAlpha then self.blinkAlpha = 0.5; end
                            self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  self.blinkAlpha, 1, 1, 1);
                            if not self.blinkAlphaIncrease then
                                self.blinkAlpha = self.blinkAlpha - 0.05 * (UIManager.getMillisSinceLastRender() / 33.3);
                                if self.blinkAlpha < 0 then
                                    self.blinkAlpha = 0;
                                    self.blinkAlphaIncrease = true;
                                end
                            else
                                self.blinkAlpha = self.blinkAlpha + 0.05 * (UIManager.getMillisSinceLastRender() / 33.3);
                                if self.blinkAlpha > 0.5 then
                                    self.blinkAlpha = 0.5;
                                    self.blinkAlphaIncrease = false;
                                end
                            end
                        else
                            if (((instanceof(item,"Food") or instanceof(item,"DrainableComboItem")) and item:getHeat() ~= 1) or item:getItemHeat() ~= 1) then
                                if (((instanceof(item,"Food") or instanceof(item,"DrainableComboItem")) and item:getHeat() > 1) or item:getItemHeat() > 1) then
                                    if alt then
                                        self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.15, math.abs(item:getInvHeat()), 0.0, 0.0);
                                    else
                                        self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.2, math.abs(item:getInvHeat()), 0.0, 0.0);
                                    end
                                else
                                    if alt then
                                        self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.15, 0.0, 0.0, math.abs(item:getInvHeat()));
                                    else
                                        self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.2, 0.0, 0.0, math.abs(item:getInvHeat()));
                                    end
                                end
                            else
                                if alt then
                                    self:drawRect(self.column2+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt, 0.02, 1.0, 1.0, 1.0);
                                else
                                    self:drawRect(self.column2+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt, 0.2, 0.0, 0.0, 0.0);
                                end
                            end
                        end
                    else
                        if (((instanceof(item,"Food") or instanceof(item,"DrainableComboItem")) and item:getHeat() ~= 1) or item:getItemHeat() ~= 1) then
                            if (((instanceof(item,"Food") or instanceof(item,"DrainableComboItem")) and item:getHeat() > 1) or item:getItemHeat() > 1) then
								self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.2, math.abs(item:getInvHeat()), 0.0, 0.0);
							else
								self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.2, 0.0, 0.0, math.abs(item:getInvHeat()));
							end
						else
							self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self.column4, self.itemHgt,  0.4, 0.0, 0.0, 0.0);
						end
                    end
                end

                -- divider between equipped and unequipped items
                if v.equipped then
                    if not doDragged and not equippedLine and y > 0 then
                        self:drawRect(1, ((y+1)*self.itemHgt)+self.headerHgt-1-self.itemHgt, self.column4, 1, 0.2, 1, 1, 1);
                    end
                    equippedLine = true
                end

                if item:getJobDelta() > 0 and (count > 1 or self.collapsed[v.name]) then
                    local scrollBarWid = self:isVScrollBarVisible() and 13 or 0
                    local displayWid = self.column4 - scrollBarWid
                    self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, displayWid * item:getJobDelta(), self.itemHgt, 0.2, 0.4, 1.0, 0.3);
                end

                if self.itemsToHighlight ~= nil and self.itemsToHighlight[item] == true then
                    self:drawRect(1+xoff, (y*self.itemHgt)+self.headerHgt+yoff, self:getWidth()-1, self.itemHgt, 0.20, 1.0, 1.0, 1.0);
                end

				local textDY = (self.itemHgt - self.fontHgt) / 2

                local itemName = item:getName(getSpecificPlayer(self.player));

                local textColor = normalTextColor
                if item:isUnwanted(getSpecificPlayer(self.player)) then textColor = unwantedTextColor end
                if count == 1 then

					-- if we're dragging something and want to put it in a container wich is full
					if doDragged and ISMouseDrag.dragging and #ISMouseDrag.dragging > 0 then
						local red = false;
						if red then
							if v.count > 2 then
								self:drawText(itemName.." ("..(v.count-1)..")", self.column2+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, 0.7, 0.0, 0.0, 1.0, self.font);
							else
								self:drawText(itemName, self.column2+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, 0.7, 0.0, 0.0, 1.0, self.font);
							end
						else
							if v.count > 2 then
								self:drawText(itemName.." ("..(v.count-1)..")", self.column2+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, textColor.r, textColor.g, textColor.b, textColor.a, self.font);
							else
								self:drawText(itemName, self.column2+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, textColor.r, textColor.g, textColor.b, textColor.a, self.font);
							end
						end
					else
						local clipX = math.max(0, self.column2+xoff)
						local clipY = math.max(0, (y*self.itemHgt)+self.headerHgt+yoff+self:getYScroll())
						local clipX2 = math.min(clipX + self.column3-self.column2, self.width)
						local clipY2 = math.min(clipY + self.itemHgt, self.height)
						if clipX < clipX2 and clipY < clipY2 then
						self:setStencilRect(clipX, clipY, clipX2 - clipX, clipY2 - clipY)
						if v.count > 2 then
							self:drawText(itemName.." ("..(v.count-1)..")", self.column2+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, textColor.r, textColor.g, textColor.b, textColor.a, self.font);
						else
							self:drawText(itemName, self.column2+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, textColor.r, textColor.g, textColor.b, textColor.a, self.font);
						end
						self:clearStencilRect()
						self:repaintStencilRect(clipX, clipY, clipX2 - clipX, clipY2 - clipY)
						end
					end
                end

                if item:getJobDelta() > 0  then
                    if  (count > 1 or self.collapsed[v.name]) then
						if self.dragging == count then
							self:drawText(item:getJobType(), self.column3+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, 0.7, 0.0, 0.0, 1.0, self.font);
						else
							self:drawText(item:getJobType(), self.column3+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, 0.7, 0.7, 0.7, 1.0, self.font);
						end
                    end

                else
                    if count == 1 then
						if doDragged then
							-- Don't draw the category when dragging
                        --elseif item:getDisplayCategory() then -- display the custom category set in items.txt
                            --self:drawText(getText("IGUI_ItemCat_" .. item:getDisplayCategory()), self.column3+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, 0.6, 0.6, 0.8, 1.0, self.font); --ORIGINAL CODE--

                                --Leverage v.cat to now display the category isntead of going to the static DisplayCategory by default.*/
                        elseif v.cat then
                            self:drawText(getText("IGUI_ItemCat_" .. v.cat), self.column3+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, 0.6, 0.6, 0.8, 1.0, self.font); --NEW CODE--
                        else
                            self:drawText(getText("IGUI_ItemCat_" .. item:getCategory()), self.column3+8+xoff, (y*self.itemHgt)+self.headerHgt+textDY+yoff, 0.6, 0.6, 0.8, 1.0, self.font);
                        end
                    else
                        local redDetail = false;
                        self:drawItemDetails(item, y, xoff, yoff, redDetail);
                    end

                end
                if self.selected ~= nil and self.selected[y+1] ~= nil then
                    self:resumeStencil();
                end

            end
            if count == 1 then
                if alt == nil then alt = false; end
                alt = not alt;
            end

            y = y + 1;

            if count == 1 and self.collapsed ~= nil and v.name ~= nil and self.collapsed[v.name] then
                if instanceof(item, "Food") then
                    -- Update all food items in a collapsed stack so they separate when freshness changes.
                    for k3,v3 in ipairs(v.items) do
                        v3:updateAge()
                    end
                end
                break
            end
            if count == ISInventoryPane.MAX_ITEMS_IN_STACK_TO_RENDER + 1 then
                break
            end
            count = count + 1;
        end
	end

    self:setScrollHeight(y * self.itemHgt);
	self:setScrollWidth(0);

	if self.draggingMarquis then
		local w = self:getMouseX() - self.draggingMarquisX;
		local h = self:getMouseY() - self.draggingMarquisY;
		self:drawRectBorder(self.draggingMarquisX, self.draggingMarquisY, w, h, 0.4, 0.9, 0.9, 1);
    end

    if not doDragged then
		self:drawRectStatic(1, 0, self.width-2, self.headerHgt, 1, 0, 0, 0);
    end
end