ESX              = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('vehicleshop.requestInfo')
AddEventHandler('vehicleshop.requestInfo', function()
    local src = source
    local rows    

    local xPlayer = ESX.GetPlayerFromId(src)
    local identifier = xPlayer.getIdentifier()

    local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {
        ['@identifier'] = identifier
    })

    local firstname = result[1].firstname 

    local resultVehicles = MySQL.Sync.fetchAll('SELECT * FROM vehicles')

    TriggerClientEvent('vehicleshop.receiveInfo', src, xPlayer.getMoney(), firstname)    

    TriggerClientEvent("vehicleshop.vehiclesInfos", src , resultVehicles)

    TriggerClientEvent("vehicleshop.notify", src, 'error', _U('rotate_keys'))
end)



ESX.RegisterServerCallback('vehicleshop.isPlateTaken', function (source, cb, plate)
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function (result)
		cb(result[1] ~= nil)
	end)
end)

RegisterServerEvent('vehicleshop.CheckMoneyForVeh')
AddEventHandler('vehicleshop.CheckMoneyForVeh', function(veh, price, name, vehicleProps)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)


	if xPlayer.getMoney() > price then
	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate,
		['@vehicle'] = json.encode(vehicleProps)
	}, function (rowsChanged)
		TriggerClientEvent('esx:showNotification', _source, 'Auto jest twoje!')
		xPlayer.removeMoney(price)
	end)
	else
		TriggerClientEvent('esx:showNotification', _source, 'Nie masz kasy!')
	end
end)  