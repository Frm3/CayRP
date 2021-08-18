ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local citizen = false
local nui = false
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

function sendNotification(message, messageType, messageTimeout)
    TriggerEvent('notification', message)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)

    if nui then
	if IsControlJustReleased(1, 177) then
		TriggerEvent('crp_statystyki:UICLOSE')
	end
    end

    end
end)

RegisterNetEvent('crp_statystyki:UIOPEN')
AddEventHandler('crp_statystyki:UIOPEN', function(data1, data2)
ESX.TriggerServerCallback('loaddatatostatsv2', function (data)
    SendNUIMessage({action = "show", imie = data1, klasa = data2, stamina = data[1].stamina, sila = data[1].sila, pp = data[1].pp, zj = data[1].zj, zl = data[1].zl, zs = data[1].zs})
	nui = true
end)
end)

RegisterNetEvent('crp_statystyki:UICLOSE')
AddEventHandler('crp_statystyki:UICLOSE', function()
    SendNUIMessage({action = "hide"})
	nui = false
end)

RegisterNetEvent('crp_statystyki:postedata')
AddEventHandler('crp_statystyki:postedata', function(data1, data2)
    SendNUIMessage({action = "setall", imie = data1, klasa = data2})
end)

RegisterCommand('statystyki', function(source)
	ESX.TriggerServerCallback('loaddatatostats', function (data)
		TriggerEvent('crp_statystyki:UIOPEN', data[1].firstname.." "..data[1].lastname, 'Gangster - Dealer')
	end)
end)

local canget = true
local cangethelka = true
local cangetrun = true
local cangetsw = true
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3000)

	local ped = GetPlayerPed(-1)
	local vehicle1 = GetVehiclePedIsUsing(PlayerPedId())
	local healthEngineCurrent = GetVehicleBodyHealth(vehicle1)
	local vehicleClass = GetVehicleClass(vehicle1) == 16 or GetVehicleClass(vehicle1) == 15
	
	if IsEntityInWater(ped) and GetEntityHeightAboveGround(ped) < 0.80 and cangetsw then
		Citizen.Wait(6000)
		TriggerEvent("FeedM:showNotification", 'Dostałeś +1 do Pojemność Płuc!')
		TriggerServerEvent('updatebaza123', 'pp')
		cangetsw = false
	end

	if healthEngineCurrent == 1000 and vehicle1 and getSpeedInUnits() > 200 and GetPedInVehicleSeat(vehicle1, -1) == ped and canget and not vehicleClass then
		TriggerEvent("FeedM:showNotification", 'Dostałeś +1 do Zdolnośći Jazdy!')
		TriggerServerEvent('updatebaza123', 'zj')
		canget = false
	end

	if GetEntitySpeed(ped) > 7 and cangetrun then
		Citizen.Wait(6000)
		TriggerEvent("FeedM:showNotification", 'Dostałeś +1 do Staminy!')
		TriggerServerEvent('updatebaza123', 'stamina')
		cangetrun = false
	end

	if healthEngineCurrent == 1000 and vehicle1 and getSpeedInUnits() > 200 and GetPedInVehicleSeat(vehicle1, -1) == ped and cangethelka and vehicleClass then
		TriggerEvent("FeedM:showNotification", 'Dostałeś +1 do Zdolnośći Latania!')
		TriggerServerEvent('updatebaza123', 'zl')
		cangethelka = false
	end

    end
end)

function getSpeedInUnits()
local vehicle = GetVehiclePedIsUsing(PlayerPedId())
    local speedInMetersSecond = GetEntitySpeed(vehicle)
    return speedInMetersSecond * 3.6
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3600000)
	canget = true
	cangethelka = true
	cangetrun = true
	cangetsw = true
    end
end)

RegisterNetEvent('crp_statystyki:setdata')
AddEventHandler('crp_statystyki:setdata', function(result)
    			StatSetInt(GetHashKey("MP0_STAMINA"), result[1].stamina, true);
			StatSetInt(GetHashKey("MP0_STRENGTH"), result[1].sila, true);
			StatSetInt(GetHashKey("MP0_LUNG_CAPACITY"), result[1].pp, true);
			StatSetInt(GetHashKey("MP0_WHEELIE_ABILITY"), result[1].zj, true);
			StatSetInt(GetHashKey("MP0_FLYING_ABILITY"), result[1].zl, true);
			StatSetInt(GetHashKey("MP0_SHOOTING_ABILITY"), result[1].zs, true);
end)
