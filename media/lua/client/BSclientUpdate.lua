Events.OnRefreshInventoryWindowContainers.Add(function(inventoryPage, reason)
    if reason ~= "end" then return end
    for _, button in ipairs(inventoryPage.backpacks) do BStable.BSupdateContainer(button.inventory)
    end
end)

Events.OnGameStart.Add(function()
    BStable.BSupdateContainer(getPlayer():getInventory())
end)