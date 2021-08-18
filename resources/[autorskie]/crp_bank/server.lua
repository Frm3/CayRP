--================================================================================================
--==                                VARIABLES - DO NOT EDIT                                     ==
--================================================================================================
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local BankStatus = {}

-- Trigger this event in your bank robbery scripts to disable bank services

RegisterServerEvent('new_banking:server:SetBankState')
AddEventHandler('new_banking:server:SetBankState', function(BankId, bool)
  BankStatus[BankId] = bool
  TriggerClientEvent('new_banking:client:SetBankState', -1, BankId, bool)
end)


RegisterServerEvent('bank:deposit')
AddEventHandler('bank:deposit', function(amount)
	local _source = source
	
	local xPlayer = ESX.GetPlayerFromId(_source)
	if amount == nil or amount <= 0 or amount > xPlayer.getMoney() then
		TriggerClientEvent('bank:result', _source, "error", "Brakuje Ci gotówki.")
	else
		xPlayer.removeMoney(amount)
		xPlayer.addAccountMoney('bank', tonumber(amount))
		TriggerClientEvent('bank:result', _source, "success", "Wpłacono pomyślnie")
	end
end)


RegisterServerEvent('bank:withdraw')
AddEventHandler('bank:withdraw', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local base = 0
	amount = tonumber(amount)
	base = xPlayer.getAccount('bank').money
	if amount == nil or amount <= 0 or amount > base then
		TriggerClientEvent('bank:result', _source, "error", "Brak wystarczających środków na koncie bankowym.")
	else
		xPlayer.removeAccountMoney('bank', amount)
		xPlayer.addMoney(amount)
		TriggerClientEvent('bank:result', _source, "success", "Wypłacasz pomyślnie")
	end
end)

RegisterServerEvent('bank:balance')
AddEventHandler('bank:balance', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	balance = xPlayer.getAccount('bank').money
	TriggerClientEvent('currentbalance1', _source, balance)
end)


RegisterServerEvent('bank:transfer')
AddEventHandler('bank:transfer', function(to, amountt)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local zPlayer = ESX.GetPlayerFromId(to)
	local balance = 0

	if(zPlayer == nil or zPlayer == -1) then
		TriggerClientEvent('bank:result', _source, "error",  "Gracz śpi.")
	else
		balance = xPlayer.getAccount('bank').money
		zbalance = zPlayer.getAccount('bank').money
		
		if tonumber(_source) == tonumber(to) then
			TriggerClientEvent('bank:result', _source, "error", "Nie możesz przelewać pieniędzy na siebie.")
		else
			if balance <= 0 or balance < tonumber(amountt) or tonumber(amountt) <= 0 then
				TriggerClientEvent('bank:result', _source, "error", "Brak wystarczających środków na koncie bankowym.")
			else
				xPlayer.removeAccountMoney('bank', tonumber(amountt))
				zPlayer.addAccountMoney('bank', tonumber(amountt))
				TriggerClientEvent('bank:result', _source, "success", "Pomyślnie przeniesiono")
			end
		end
	end
end)

RegisterServerEvent('banking:server:giveCash')
AddEventHandler('banking:server:giveCash', function(trgtId, amount)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local zPlayer = ESX.GetPlayerFromId(trgtId)

	if src ~= trgtId then
		balance = xPlayer.getMoney()

		if balance <= 0 or balance < tonumber(amount) or tonumber(amount) <= 0 then
			TriggerClientEvent('bank:result', src, "error", "Brak gotówki.")
		else
			xPlayer.removeAccountMoney('cash', tonumber(amount))
			zPlayer.addAccountMoney('cash', tonumber(amount))
			TriggerClientEvent('bank:result', src, "success", "Pomyślnie dał "..amount)
			TriggerClientEvent('bank:result', trgtId, "success", "Pomyślnie otrzymano "..amount)
		end
	else
		TriggerClientEvent('bank:result', src, "error", "Nie możesz przelewać pieniędzy na siebie.")
	end
end)

ESX.RegisterServerCallback('new_banking:fetchData', function(source, cb , data)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local data = {}
	GetData(source, function(PlayerData)
		if PlayerData ~= nil then
			data.firstname = PlayerData.firstname ~= nil and PlayerData.firstname or "UNKNOWN"
			data.lastname = PlayerData.lastname ~= nil and PlayerData.lastname or "UNKNOWN"
			cb(data)
		else
			print('[CRP_BANK] DATA JEST JAKO NULL')
		end
	end)
end)

function GetData(source, callback)
	local xPlayer = ESX.GetPlayerFromId(source)
	local identifier = xPlayer.identifier
	MySQL.Async.fetchAll('SELECT * FROM `users` WHERE `identifier` = @identifier', {
		['@identifier'] = identifier
	}, function(result)
		local data = {}
		if result[1] and result[1].firstname and result[1].lastname  then
			data.firstname = result[1].firstname
			data.lastname = result[1].lastname
			callback(data)
		else
			print('[CRP_BANK] -  Twoja baza danych ma pewne wartości zerowe w tabeli użytkowników (imię / nazwisko): ' .. xPlayer.identifier)
		end
	end)
end
