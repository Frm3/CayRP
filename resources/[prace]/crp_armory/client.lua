local PlayerData = {}
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

local playerPed = PlayerPedId()
local playerVeh = GetVehiclePedIsIn(playerPed, false)

---------------------------------------------------------------------------
--- Main Loop
---------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local playerPed = PlayerPedId()
		local coords    = GetEntityCoords(playerPed)

		for k,v in pairs(Config.Armoury) do
			if PlayerData.job and PlayerData.job.name == Config.PoliceDatabaseName and PlayerData.job.grade >= v.RankLocked then
				for i = 1, #v.Pos, 1 do
					local distance =  Vdist(coords, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z)

					if (distance < 1) then
						DrawText3D(v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, "[E] Weź "..v.Name)
						if IsControlJustReleased(0, Keys['E']) then
							TriggerServerEvent("h4rv3y-armoury:takeitem", v.Weapon, v.PerOne, v.Cena, v.Name)
							Citizen.Wait(500)
						end
					end			
				end
			end
		end
	end
end)

---------------------------------------------------------------------------
--- Draw Text
---------------------------------------------------------------------------
function DrawText3D(x,y,z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	  
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 370
	DrawRect(_x,_y+0.0125, 0.01+ factor, 0.03, 0, 0, 0, 50)
end