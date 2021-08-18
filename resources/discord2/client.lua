local onlinePlayers = 0
local onlineEms = 0
local onlineLspd = 0

RegisterNetEvent('top_discordpresence:frakcjeliczba')
AddEventHandler('top_discordpresence:frakcjeliczba', function(policja, medycy)
	onlineEms = medycy
	onlineLspd = policja 
end)
  
  Citizen.CreateThread(function()
	while true do
		Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', '~p~CayRP | ~p~Polski ~p~Serwer ~p~RP�')
		
        SetDiscordAppId("771761424476667924")
        SetDiscordRichPresenceAsset("main") 
        SetDiscordRichPresenceAssetText("CayRP") 
        SetDiscordRichPresenceAssetSmall("main") 
        SetDiscordRichPresenceAssetSmallText('LSPD: ' .. onlineLspd .. ' EMS: ' .. onlineEms .. '') 
        SetDiscordRichPresenceAction(0, "Dolacz na serwer!", "fivem://connect/cay-network.pl")
        SetDiscordRichPresenceAction(1, "Discord!", "https://cay-network.pl/dc")        
		players = {}
		for i = 0, 256 do
			if NetworkIsPlayerActive( i ) then
				table.insert( players, i )
			end
		end
		SetRichPresence("Obywateli:  [".. #players .. " / 64]  ID: " .. GetPlayerServerId(PlayerId()))
		Citizen.Wait(60000)
	end
end)

