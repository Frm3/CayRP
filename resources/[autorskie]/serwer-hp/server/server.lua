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
