ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
	while true do
		local xPlayers = ESX.GetPlayers()
		local EMSConnected = 0
		local PoliceConnected = 0

		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])	
			if xPlayer.job.name == 'police' then
				PoliceConnected = PoliceConnected + 1
			end
			if xPlayer.job.name == 'ambulance' then
				EMSConnected = EMSConnected + 1
			end
			
		end
		
		TriggerClientEvent('top_discordpresence:frakcjeliczba', -1, PoliceConnected, EMSConnected)
		Wait(5000)
	end
end)