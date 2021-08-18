ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    MySQL.Async.fetchScalar("SELECT armour FROM users WHERE identifier = @identifier", { 
        ['@identifier'] = xPlayer.getIdentifier()
        }, function(data)
        if (data ~= nil) then
            TriggerClientEvent('Frost-Armor:Client:UstawArmor', playerId, data)
        end
    end)
end)

AddEventHandler('esx:playerLoaded', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    MySQL.Async.fetchScalar("SELECT health FROM users WHERE identifier = @identifier", { 
        ['@identifier'] = xPlayer.getIdentifier()
        }, function(data)
        if (data ~= nil) then
            TriggerClientEvent('Frost-Zycie:Client:UstawZycie', playerId, data)
        end
    end)
end)

RegisterServerEvent('Frost-Armor:Server:OdswiezArmor')
AddEventHandler('Frost-Armor:Server:OdswiezArmor', function(updateArmour)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    MySQL.Async.execute("UPDATE users SET armour = @armour WHERE identifier = @identifier", { 
        ['@identifier'] = xPlayer.getIdentifier(),
        ['@armour'] = tonumber(updateArmour)
    })
end)

RegisterServerEvent('Frost-Zycie:Server:OdswiezZycie')
AddEventHandler('Frost-Zycie:Server:OdswiezZycie', function(updateHealth)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    MySQL.Async.execute("UPDATE users SET health = @health WHERE identifier = @identifier", { 
        ['@identifier'] = xPlayer.getIdentifier(),
        ['@health'] = tonumber(updateHealth)
    })
end)

ESX.RegisterServerCallback('loaddatatostats', function (source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

			MySQL.Async.fetchAll("SELECT * FROM users WHERE identifier = @identifier", { ['@identifier'] = xPlayer.getIdentifier() }, function(result)
				cb(result)
			end)
end)
ESX.RegisterServerCallback('loaddatatostatsv2', function (source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

			MySQL.Async.fetchAll("SELECT * FROM statystyki WHERE identifier = @identifier", { ['@identifier'] = xPlayer.getIdentifier() }, function(result)
				cb(result)
			end)
end)

AddEventHandler('esx:playerLoaded', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)

	MySQL.Async.fetchAll("SELECT * FROM statystyki WHERE identifier = @identifier", { ['@identifier'] = xPlayer.getIdentifier() }, function(result)
		if result[1] then
			TriggerClientEvent('crp_statystyki:setdata', result)
		else
			MySQL.Async.execute('INSERT INTO statystyki (identifier, stamina, sila, pp, zj, zl, zs) VALUES (@x, 0, 0, 0, 0, 0, 0)', { ['x'] = xPlayer.getIdentifier() }, function(affectedRows)
    				print("Nowy Gracz Zapisany")
  			end)
		end
	end)
end)

RegisterServerEvent('updatebaza123')
AddEventHandler('updatebaza123', function(typ)
local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll("SELECT * FROM statystyki WHERE identifier = @identifier", { ['@identifier'] = xPlayer.getIdentifier() }, function(result)
		if result[1] then

		if typ == 'stamina' then
			asd = result[1].stamina
		elseif typ == 'sila' then
			asd = result[1].sila
		elseif typ == 'pp' then
			asd = result[1].pp
		elseif typ == 'zj' then
			asd = result[1].zj
		elseif typ == 'zl' then
			asd = result[1].zl
		elseif typ == 'zs' then
			asd = result[1].zs
		end

		MySQL.Async.execute("UPDATE statystyki SET ".. typ .." = @ile WHERE identifier = @identifier", { 
        		['@identifier'] = xPlayer.getIdentifier(),
       			['@ile'] = asd + 1
    		})

			TriggerClientEvent('crp_statystyki:setdata', result)
		end
	end)
end)
