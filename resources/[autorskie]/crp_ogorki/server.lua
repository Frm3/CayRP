ESX = nil


local cena = 15 -- Ile dostajesz za 1 bursztyna 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('szukbb') 
AddEventHandler('szukbb', function(stan)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local bursztyny = xPlayer.getInventoryItem("oogorek")
	local ilosc = bursztyny.count
	if(ilosc < 150) then
		xPlayer.addInventoryItem('ogorek', stan)
		TriggerClientEvent('esx:showNotification', '~g~Znalazłeś ogórka')
	else
		TriggerClientEvent('esx:showNotification', _source, 'Posiadasz Limit Ogórków')
	end
end)
RegisterServerEvent('crp_ogorki:oplukserver') 
AddEventHandler('crp_ogorki:oplukserver', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local bursztyny = xPlayer.getInventoryItem("ogorek")
	local ilosc = bursztyny.count

	if ilosc > 0 then
	TriggerClientEvent('esx:showNotification', _source, 'Umyłeś ~g~'..ilosc..'~w~ ogórki')
	xPlayer.removeInventoryItem('ogorek', ilosc)
	xPlayer.addInventoryItem('uogorek', ilosc)
	elseif ilosc == 0 then
	TriggerClientEvent('esx:showNotification', source, '~r~Nie masz ogórków do umycia!')
	end
end)

RegisterServerEvent('crp_ogorki:oszlifserver') 
AddEventHandler('crp_ogorki:oszlifserver', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local bursztyny = xPlayer.getInventoryItem("uogorek")
	local ilosc = bursztyny.count

	if ilosc > 0 then
	TriggerClientEvent('esx:showNotification', _source, 'Zpakowałeś ~g~'..ilosc..'~w~ ogórki')
	xPlayer.removeInventoryItem('uogorek', ilosc)
	xPlayer.addInventoryItem('oogorek', ilosc)
	elseif ilosc == 0 then
	TriggerClientEvent('esx:showNotification', source, '~r~Nie masz ogórków do spakowania!')
	end
end)


RegisterServerEvent('crp_ogorki:sprzedajserver') 
AddEventHandler('crp_ogorki:sprzedajserver', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local bursztyny = xPlayer.getInventoryItem("oogorek")
	local ilosc = bursztyny.count
	local wcena = cena * ilosc

	if ilosc > 0 then
	TriggerClientEvent('esx:showNotification', _source, 'Sprzedałeś ~g~'..ilosc..'~w~ zpakowanych ogórków za ~y~'..wcena..'$')
	xPlayer.removeInventoryItem('oogorek', ilosc)
	xPlayer.addMoney(wcena)
	elseif ilosc == 0 then
	TriggerClientEvent('esx:showNotification', source, '~r~Nie masz zpakowanych ogórków na sprzedaż!')
	end
end)