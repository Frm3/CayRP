ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('chatMessage', function(source, name, message)
	if string.sub(message,1,string.len("/"))=="/" then
		--ne doit rien se passer c'est une commande
	else
		TriggerClientEvent("sendProximityMessage", -1, source, 'LOOC | '..name, message)
		local playerName = GetPlayerName(source)
		TriggerEvent('crp_logs:noembed', 'Logi LOOC', 'LOGI LOOC | '..playerName..': '..message, 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
	end
	CancelEvent()
end)

RegisterCommand('ooc', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		local playerName = GetPlayerName(playerId)
		args = table.concat(args, ' ')
		TriggerClientEvent('chat:addMessage', -1, {args = {' OOC | '..playerName..': '..args}, color = {220,220,220}})
		TriggerEvent('crp_logs:noembed', 'Logi OOC', 'LOGI OOC | '..playerName..': '..args, 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
	end
end, false)

RegisterCommand('twt', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)
		local playerNam = GetPlayerName(playerId)

		TriggerClientEvent('chat:addMessage', -1, {args = {'🐦@'.. playerName ..': '.. args}, color = {0, 153, 204}})
		TriggerEvent('crp_logs:noembed', 'Logi Twt', 'LOGI TWT | '..playerNam..': '..args, 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
	end
end, false)

RegisterCommand('dw', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)
		local playerNam = GetPlayerName(playerId)

		TriggerClientEvent('chat:addMessage', -1, {args = {'💻 Annonimus: '.. args}, color = {255, 0, 0}})
		TriggerEvent('crp_logs:noembed', 'Logi DarkWeb', 'LOGI DARKWEB | '..playerNam..': '..args, 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
	end
end, false)

RegisterCommand('reklama', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)
		local playerNam = GetPlayerName(playerId)

		TriggerClientEvent('chat:addMessage', -1, {args = {'[Reklama]: '.. args}, color = {255, 255, 0}})
		TriggerEvent('crp_logs:noembed', 'Logi Reklamy', 'LOGI REKLAMY | '..playerNam..': '..args, 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
	end
end, false)

function GetRealPlayerName(playerId)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	if xPlayer then
		if Config.EnableESXIdentity then
			if Config.OnlyFirstname then
				return xPlayer.get('firstName')
			else
				return xPlayer.getName()
			end
		else
			return xPlayer.getName()
		end
	else
		return GetPlayerName(playerId)
	end
end
