local citizen = false

local TimeFreshCurrentArmour = 10000  -- 5 sekund
local TimeFreshCurrentHealth = 10000  -- 5 sekund

RegisterNetEvent('Frost-Armor:Client:UstawArmor')
AddEventHandler('Frost-Armor:Client:UstawArmor', function(armour)
    Citizen.Wait(10000)
    SetPedArmour(PlayerPedId(), tonumber(armour))
    citizen = true
end)

RegisterNetEvent('Frost-Zycie:Client:UstawZycie')
AddEventHandler('Frost-Zycie:Client:UstawZycie', function(health)
    Citizen.Wait(10000)
    SetEntityHealth(PlayerPedId(), tonumber(health))
    TriggerEvent("FeedM:showNotification", "Wczytano HP i Armor z przed wyjscia")
    --TriggerEvent("pNotify:SendNotification", {text = "Wczytano HP i Armor z przed wyjscia", type = "success", timeout = 5000, layout = "centerLeft"})
    citizen = true
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if citizen == true then
            TriggerServerEvent('Frost-Armor:Server:OdswiezArmor', GetPedArmour(PlayerPedId()))
            Citizen.Wait(TimeFreshCurrentArmour)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if citizen == true then
            TriggerServerEvent('Frost-Zycie:Server:OdswiezZycie', GetEntityHealth(PlayerPedId()))
            Citizen.Wait(TimeFreshCurrentHealth)
        end
    end
end)

--Powiadomienie
function sendNotification(message, messageType, messageTimeout)
    TriggerEvent('notification', message)
end

--Blokowanie regeneracji HP
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
                -- giga event here
        SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
    end
end)