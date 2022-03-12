QBCore = exports['qb-core']:GetCoreObject()
debug = Config.Debug

-- DEBUG MODE
RegisterCommand('weapondebug', function(source)
    debug = not debug
    print("^3[qb-gangweapons] ^5".."Debug mode: "..tostring(debug).."^7")
end, true)

RegisterNetEvent('qb-gangweapons:server:craftAmmo', function(data)
    local Player = QBCore.Functions.GetPlayer(source)
    local hasItems = false
    if Player.Functions.GetItemByName(Config.CraftingCost[data].item1) then
        if Player.Functions.GetItemByName(Config.CraftingCost[data].item2) then
            if Player.Functions.GetItemByName(Config.CraftingCost[data].item3) then
                if Player.Functions.GetItemByName(Config.CraftingCost[data].item1).amount >= Config.CraftingCost[data].cost1 then
                    if Player.Functions.GetItemByName(Config.CraftingCost[data].item2).amount >= Config.CraftingCost[data].cost2 then
                        if Player.Functions.GetItemByName(Config.CraftingCost[data].item3).amount >= Config.CraftingCost[data].cost3 then
                            hasItems = true
                        end
                    end
                end
            end
        end
    end
    if hasItems then
        Player.Functions.RemoveItem(Config.CraftingCost[data].item1,Config.CraftingCost[data].cost1)
        Player.Functions.RemoveItem(Config.CraftingCost[data].item2,Config.CraftingCost[data].cost2)
        Player.Functions.RemoveItem(Config.CraftingCost[data].item3,Config.CraftingCost[data].cost3)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.CraftingCost[data].item1], "remove")
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.CraftingCost[data].item2], "remove")
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.CraftingCost[data].item3], "remove")
        local receiveAmount = 10
        Player.Functions.AddItem(data, receiveAmount)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data], "add")
        TriggerClientEvent('QBCore:Notify', source, 'You crafted ' .. receiveAmount .. ' '..data)
    else
        TriggerClientEvent('QBCore:Notify', source, 'You do not have the correct items.')
    end
end)

RegisterNetEvent('qb-gangweapons:server:craftWeapon', function(data)
    local Player = QBCore.Functions.GetPlayer(source)
    local hasItems = false
    if Player.Functions.GetItemByName(Config.CraftingCost[data].item1) then
        if Player.Functions.GetItemByName(Config.CraftingCost[data].item2) then
            if Player.Functions.GetItemByName(Config.CraftingCost[data].item3) then
                if Player.Functions.GetItemByName(Config.CraftingCost[data].item4) then
                    if Player.Functions.GetItemByName(Config.CraftingCost[data].item5) then
                        if Player.Functions.GetItemByName(Config.CraftingCost[data].item1).amount >= Config.CraftingCost[data].cost1 then
                            if Player.Functions.GetItemByName(Config.CraftingCost[data].item2).amount >= Config.CraftingCost[data].cost2 then
                                if Player.Functions.GetItemByName(Config.CraftingCost[data].item3).amount >= Config.CraftingCost[data].cost3 then
                                    if Player.Functions.GetItemByName(Config.CraftingCost[data].item4).amount >= Config.CraftingCost[data].cost4 then
                                        if Player.Functions.GetItemByName(Config.CraftingCost[data].item5).amount >= Config.CraftingCost[data].cost5 then
                                            hasItems = true
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    -- craft
    if hasItems then
        --removeitems
        Player.Functions.RemoveItem(Config.CraftingCost[data].item1,Config.CraftingCost[data].cost1)
        Player.Functions.RemoveItem(Config.CraftingCost[data].item2,Config.CraftingCost[data].cost2)
        Player.Functions.RemoveItem(Config.CraftingCost[data].item3,Config.CraftingCost[data].cost3)
        Player.Functions.RemoveItem(Config.CraftingCost[data].item4,Config.CraftingCost[data].cost4)
        Player.Functions.RemoveItem(Config.CraftingCost[data].item5,Config.CraftingCost[data].cost5)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.CraftingCost[data].item1], "remove")
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.CraftingCost[data].item2], "remove")
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.CraftingCost[data].item3], "remove")
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.CraftingCost[data].item4], "remove")
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.CraftingCost[data].item5], "remove")
        --giveitem
        local receiveAmount = 1
        Player.Functions.AddItem(data, receiveAmount)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data], "add")
        TriggerClientEvent('QBCore:Notify', source, 'You crafted ' .. receiveAmount .. ' '..data)
    else
        TriggerClientEvent('QBCore:Notify', source, 'You do not have the correct items.')
    end
end)