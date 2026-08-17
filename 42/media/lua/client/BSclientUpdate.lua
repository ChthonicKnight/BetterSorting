Events.OnRefreshInventoryWindowContainers.Add(function(inventoryPage, reason)
    if reason ~= "end" then return end
    for _, button in ipairs(inventoryPage.backpacks) do BSupdateContainer(button.inventory)
    end
end)

Events.OnGameStart.Add(function()
    BSupdateContainer(getPlayer():getInventory())
end)