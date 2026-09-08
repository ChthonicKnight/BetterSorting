Events.OnRefreshInventoryWindowContainers.Add(function(inventoryPage, reason)
    if reason ~= "end" then return end
    for _, button in ipairs(inventoryPage.backpacks) do
        BSupdateBase(button.inventory)
        BSupdateFluids(button.inventory)
        BSupdateMedia(button.inventory)
    end
end)

Events.OnGameStart.Add(function()
    local inventory = getPlayer():getInventory()
    BSupdateBase(inventory)
    BSupdateFluids(inventory)
    BSupdateMedia(inventory)
end)