CreateThread(function()
    exports['qb-target']:AddBoxZone("GangCrafting", vector3(1209.49, -3113.97, 5.54), 0.8, 6, { --- default location
        name = "GangCrafting",
        heading=270,
        debugPoly=false,
        minZ=2.14,
        maxZ=6.14
        }, {
        options = {
            {
                type = "client",
                event = "qb-gangweapons:client:menu:OpenCraftingMenu",
                icon = "fas fa-drafting-compass",
                label = "Crafting Bench",
                gang = {["lsm"] = 3} --- change gang that controls the crafting here
            }
        },
        distance = 2.0
    })

end)