
--- SERVER

ESX               = nil
local cars 		  = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('crp_dajklucze:requestPlayerCars', function(source, cb, plate)

	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll(
		'SELECT * FROM owned_vehicles WHERE owner = @identifier',
		{
			['@identifier'] = xPlayer.identifier
		},
		function(result)

			local found = false

			for i=1, #result, 1 do

				local vehicleProps = json.decode(result[i].vehicle)

				if trim(vehicleProps.plate) == trim(plate) then
					found = true
					break
				end

			end

			if found then
				cb(true)
			else
				cb(false)
			end

		end
	)
end)

RegisterServerEvent('crp_dajklucze:frommenu')
AddEventHandler('crp_dajklucze:frommenu', function ()
	TriggerClientEvent('crp_dajklucze:keys', source)
end)


RegisterServerEvent('crp_dajklucze:setVehicleOwnedPlayerId')
AddEventHandler('crp_dajklucze:setVehicleOwnedPlayerId', function (playerId, vehicleProps)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	MySQL.Async.execute('UPDATE owned_vehicles SET owner=@owner WHERE plate=@plate',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate
	},

	function (rowsChanged)
		TriggerClientEvent('esx:showNotification', playerId, 'Masz nowy samochód z tablicą ~g~' ..vehicleProps.plate..'!', vehicleProps.plate)

	end)
end)

function trim(s)
    if s ~= nil then
		return s:match("^%s*(.-)%s*$")
	else
		return nil
    end
end



RegisterCommand("dajklucze", function(source, args, user)
TriggerClientEvent('crp_dajklucze:keys', source)
end)
