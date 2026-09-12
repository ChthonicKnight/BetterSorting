Events.OnRefreshInventoryWindowContainers.Add(function(inventoryPage, reason)
    if reason ~= "end" then return end
    for _, button in ipairs(inventoryPage.backpacks) do BSupdateFluids(button.inventory) BSupdateMedia(button.inventory)
    end
end)

Events.OnGameStart.Add(function()
    local inventory = getPlayer():getInventory()
    BSupdateFluids(inventory)
    BSupdateMedia(inventory)
end)