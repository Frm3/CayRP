-- Client

ESX               = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent("crp_dajklucze:keys")
AddEventHandler("crp_dajklucze:keys", function()

giveCarKeys()

end)

function giveCarKeys()
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)

	if IsPedInAnyVehicle(playerPed,  false) then
        vehicle = GetVehiclePedIsIn(playerPed, false)			
    else
        vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 7.0, 0, 70)
    end

	local plate = GetVehicleNumberPlateText(vehicle)
	local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)


	ESX.TriggerServerCallback('crp_dajklucze:requestPlayerCars', function(isOwnedVehicle)

		if isOwnedVehicle then

		local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

if closestPlayer == -1 or closestDistance > 3.0 then
  ESX.ShowNotification('Nikt nie stoi obok ciebie!')
else
  ESX.ShowNotification('Oddajesz kluczyki do samochodu z tablicą ~g~'..vehicleProps.plate..'!')
  TriggerServerEvent('crp_dajklucze:setVehicleOwnedPlayerId', GetPlayerServerId(closestPlayer), vehicleProps)
end

		end
	end, GetVehicleNumberPlateText(vehicle))
end
