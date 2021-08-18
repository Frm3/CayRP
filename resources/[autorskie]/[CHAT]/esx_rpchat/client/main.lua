ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, text)
    local myId = PlayerId()
    local pid = GetPlayerFromServerId(id)
    
    
    if pid == myId then
		TriggerEvent('chatMessage',"^4" .. name .. "^7 " .. text, {0, 153, 204})
    elseif GetDistanceBetweenCoords(GetEntityCoords(Citizen.InvokeNative(0x43A66C31C68491C0, myId)), GetEntityCoords(Citizen.InvokeNative(0x43A66C31C68491C0, pid)), true) <= 19.999 then
	    if Citizen.InvokeNative(0xB8DFD30D6973E135, pid) then
			TriggerEvent('chatMessage',"^4" .. name .. "^7 " .. text, {0, 153, 204})
		end
    end
end)

RegisterNetEvent('esx_rpchat:sendProximityMessage')
AddEventHandler('esx_rpchat:sendProximityMessage', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)

	local playerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)

	if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
	end
end)

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/twt',  'Twitter',  {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/dw',   'DarkWeb',   {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('chat:removeSuggestion', '/twt')
		TriggerEvent('chat:removeSuggestion', '/dw')
	end
end)
