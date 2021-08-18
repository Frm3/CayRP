----------------------------------------------------------------------------------------------------------------------------
---Skrypt napisany przez breakehh_#3030 / brejka_#3030, skrypt wzorowany jest na skrypcie na 10-13 z serwera StrefaRP 3.0---
----------------------------------------------------------------------------------------------------------------------------

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("break_10-13srp:request")
AddEventHandler("break_10-13srp:request", function(Officer)
	TriggerClientEvent("break_10-13srp:alert", -1, source, Officer)
end)

ESX.RegisterServerCallback('break_10-13srp:checkjob', function(source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
 	if xPlayer.job.name == 'police' then
		cb(true)
	else
		cb(false)
	end
end)

----------------------------------------------------------------------------------------------------------------------------
---Skrypt napisany przez breakehh_#3030 / brejka_#3030, skrypt wzorowany jest na skrypcie na 10-13 z serwera StrefaRP 3.0---
----------------------------------------------------------------------------------------------------------------------------