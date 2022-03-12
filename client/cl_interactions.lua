-- CRAFTING BENCH
RegisterNetEvent('qb-gangweapons:client:menu:OpenCraftingMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "< LMS Crafting Menu",
            txt = "ESC or click to close",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Ammo",
            txt = "",
            params = {
                event = "qb-gangweapons:client:menu:OpenAmmo",
            }
        },
        {
            header = "Weapons",
            txt = "",
            params = {
                event = "qb-gangweapons:client:menu:OpenWeapons",
            }
        }
    })
end)

RegisterNetEvent('qb-gangweapons:client:menu:OpenAmmo', function()
    exports['qb-menu']:openMenu({
        {
            header = "< Go Back",
            txt = "",
            params = {
                event = "qb-gangweapons:client:menu:OpenCraftingMenu"
            }
        },
        {
            header = "SMG Ammo x10",
            txt =   QBCore.Shared.Items[Config.CraftingCost["smg_ammo"].item1]["label"]..": "..Config.CraftingCost["smg_ammo"].cost1.." | ".. 
                    QBCore.Shared.Items[Config.CraftingCost["smg_ammo"].item2]["label"]..": "..Config.CraftingCost["smg_ammo"].cost2.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["smg_ammo"].item3]["label"]..": "..Config.CraftingCost["smg_ammo"].cost3,
            params = {
                event = "qb-gangweapons:client:CraftAmmo",
                args = {
                    ammo = "smg_ammo",
                }
            }
        },
        {
            header = "Rifle Ammo x10",
            txt =   QBCore.Shared.Items[Config.CraftingCost["rifle_ammo"].item1]["label"]..": "..Config.CraftingCost["rifle_ammo"].cost1.." | ".. 
                    QBCore.Shared.Items[Config.CraftingCost["rifle_ammo"].item2]["label"]..": "..Config.CraftingCost["rifle_ammo"].cost2.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["rifle_ammo"].item3]["label"]..": "..Config.CraftingCost["rifle_ammo"].cost3,
            params = {
                event = "qb-gangweapons:client:CraftAmmo",
                args = {
                    ammo = "rifle_ammo",
                }
            }
        }
    })
end)

RegisterNetEvent('qb-gangweapons:client:menu:OpenWeapons', function()
    exports['qb-menu']:openMenu({
        {
            header = "< Go Back",
            txt = "",
            params = {
                event = "qb-gangweapons:client:menu:OpenCraftingMenu"
            }
        },
        {
            header = "Pistol MK2",
            txt =   QBCore.Shared.Items[Config.CraftingCost["weapon_pistol_mk2"].item1]["label"]..": "..Config.CraftingCost["weapon_pistol_mk2"].cost1.." | ".. 
                    QBCore.Shared.Items[Config.CraftingCost["weapon_pistol_mk2"].item2]["label"]..": "..Config.CraftingCost["weapon_pistol_mk2"].cost2.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_pistol_mk2"].item3]["label"]..": "..Config.CraftingCost["weapon_pistol_mk2"].cost3.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_pistol_mk2"].item4]["label"]..": "..Config.CraftingCost["weapon_pistol_mk2"].cost4.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_pistol_mk2"].item5]["label"]..": "..Config.CraftingCost["weapon_pistol_mk2"].cost5,
            params = {
                event = "qb-gangweapons:client:CraftWeapon",
                args = {
                    weapon = "weapon_pistol_mk2",
                }
            }
        },
        {
            header = "Mini SMG",
            txt =   QBCore.Shared.Items[Config.CraftingCost["weapon_minismg"].item1]["label"]..": "..Config.CraftingCost["weapon_minismg"].cost1.." | ".. 
                    QBCore.Shared.Items[Config.CraftingCost["weapon_minismg"].item2]["label"]..": "..Config.CraftingCost["weapon_minismg"].cost2.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_minismg"].item3]["label"]..": "..Config.CraftingCost["weapon_minismg"].cost3.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_minismg"].item4]["label"]..": "..Config.CraftingCost["weapon_minismg"].cost4.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_minismg"].item5]["label"]..": "..Config.CraftingCost["weapon_minismg"].cost5,
            params = {
                event = "qb-gangweapons:client:CraftWeapon",
                args = {
                    weapon = "weapon_minismg",
                }
            }
        },
        {
            header = "Compact Rifle",
            txt =   QBCore.Shared.Items[Config.CraftingCost["weapon_compactrifle"].item1]["label"]..": "..Config.CraftingCost["weapon_compactrifle"].cost1.." | ".. 
                    QBCore.Shared.Items[Config.CraftingCost["weapon_compactrifle"].item2]["label"]..": "..Config.CraftingCost["weapon_compactrifle"].cost2.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_compactrifle"].item3]["label"]..": "..Config.CraftingCost["weapon_compactrifle"].cost3.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_compactrifle"].item4]["label"]..": "..Config.CraftingCost["weapon_compactrifle"].cost4.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_compactrifle"].item5]["label"]..": "..Config.CraftingCost["weapon_compactrifle"].cost5,
            params = {
                event = "qb-gangweapons:client:CraftWeapon",
                args = {
                    weapon = "weapon_compactrifle",
                }
            }
        },
        {
            header = "Assault Rifle",
            txt =   QBCore.Shared.Items[Config.CraftingCost["weapon_assaultrifle"].item1]["label"]..": "..Config.CraftingCost["weapon_assaultrifle"].cost1.." | ".. 
                    QBCore.Shared.Items[Config.CraftingCost["weapon_assaultrifle"].item2]["label"]..": "..Config.CraftingCost["weapon_assaultrifle"].cost2.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_assaultrifle"].item3]["label"]..": "..Config.CraftingCost["weapon_assaultrifle"].cost3.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_assaultrifle"].item4]["label"]..": "..Config.CraftingCost["weapon_assaultrifle"].cost4.." | "..
                    QBCore.Shared.Items[Config.CraftingCost["weapon_assaultrifle"].item5]["label"]..": "..Config.CraftingCost["weapon_assaultrifle"].cost5,
            params = {
                event = "qb-gangweapons:client:CraftWeapon",
                args = {
                    weapon = "weapon_assaultrifle",
                }
            }
        }
    })
end)

RegisterNetEvent('qb-gangweapons:client:CraftWeapon', function(data)
    QBCore.Functions.Progressbar("CraftItem", "Crafting...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent('qb-gangweapons:server:craftWeapon',data.weapon)
        ClearPedTasks(PlayerPedId())
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)

RegisterNetEvent('qb-gangweapons:client:CraftAmmo', function(data)
    QBCore.Functions.Progressbar("CraftWeapon", "Crafting...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent('qb-gangweapons:server:craftAmmo',data.ammo)
        ClearPedTasks(PlayerPedId())
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)