RegisterCommand('do', function(source, args)
    local text = "* " ..table.concat(args, " ") .. " *"
    TriggerClientEvent('3ddo:shareDisplay', -1, text, source)
    TriggerEvent('crp_logs:noembed', 'Logi Do', 'LOGI DO | '..GetPlayerName(source)..': '..table.concat(args, " "), 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
    TriggerClientEvent("sendProximityMessage", -1, source, '^4DO | '..GetPlayerName(source), table.concat(args, " "))
end)

RegisterCommand('me', function(source, args)
    local text = "" ..table.concat(args, " ") .. ""
    TriggerClientEvent('3ddo:shareDisplay', -1, text, source)
    TriggerEvent('crp_logs:noembed', 'Logi Me', 'LOGI ME | '..GetPlayerName(source)..': '..table.concat(args, " "), 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
    TriggerClientEvent("sendProximityMessage", -1, source, '^5ME | '..GetPlayerName(source), table.concat(args, " "))
end)

RegisterCommand('try', function(source, args, rawCommand)
    local score = math.random(1,2)
	if score == 1 then
	TriggerClientEvent('3ddo:shareDisplay', -1, '*próba* udana', source)
        TriggerEvent('crp_logs:noembed', 'Logi Try', 'LOGI TRY | '..GetPlayerName(source)..': *próba* udana', 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
	TriggerClientEvent("sendProximityMessage", -1, source, '^2TRY | '..GetPlayerName(source), '*próba* udana')
	else
	TriggerClientEvent('3ddo:shareDisplay', -1, '*próba* nieudana', source)
        TriggerEvent('crp_logs:noembed', 'Logi Try', 'LOGI TRY | '..GetPlayerName(source)..': *próba* nieudana', 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
	TriggerClientEvent("sendProximityMessage", -1, source, '^2TRY | '..GetPlayerName(source), '*próba* nieudana')
	end
end, false)

RegisterCommand('opis', function(source, args)
	args = table.concat(args, ' ')
	TriggerClientEvent('opis:shareDisplay', -1, args, source)
TriggerEvent('crp_logs:noembed', 'Logi Opis', 'LOGI OPIS | '..GetPlayerName(source)..': '..args, 'https://i.imgur.com/EroY8Ii.png', 'https://discord.com/api/webhooks')
end)