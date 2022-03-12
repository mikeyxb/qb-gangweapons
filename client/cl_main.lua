--[[ local QBCore = exports['qb-core']:GetCoreObject()
local PlayerGang = {}
local isInMenu = false
local sleep ]]
QBCore = exports['qb-core']:GetCoreObject()
PlayerGang = {}
employees = {}
bank = 0
unemployed = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerGang = QBCore.Functions.GetPlayerData().gang
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate')
AddEventHandler('QBCore:Client:OnGangUpdate', function(GangInfo)
    PlayerGang = GangInfo
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerGang = {}
    bank = 0
    employees = {}
    unemployed = {}
end)

AddEventHandler('onClientResourceStart',function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then return end
    PlayerGang = QBCore.Functions.GetPlayerData().gang
end)

-- UI
function showInteraction(text , type)
    SendNUIMessage({
        type = "open",
        text = text,
        color = type,
    })
end

function hideInteraction()
    SendNUIMessage({
        type = "close",
    })
end

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end