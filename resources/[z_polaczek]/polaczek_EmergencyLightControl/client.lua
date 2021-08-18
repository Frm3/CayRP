local count_bcast_timer = 0
local delay_bcast_timer = 200

local count_sndclean_timer = 0
local delay_sndclean_timer = 400

local actv_ind_timer = false
local count_ind_timer = 0
local delay_ind_timer = 180

local actv_lxsrnmute_temp = false
local srntone_temp = 0
local dsrn_mute = true

local state_indic = {}
local state_lxsiren = {}
local state_pwrcall = {}
local state_airmanu = {}

local ind_state_o = 0
local ind_state_l = 1
local ind_state_r = 2
local ind_state_h = 3

local snd_lxsiren = {}
local snd_pwrcall = {}
local snd_airmanu = {}

local status_panel = true
local Code_2 = false
local Code_3 = false
local HORN = false
local Signal_1 = false
local Signal_2 = false
local Signal_3 = false
local DUAL = false

-- these models will use their real wail siren, as determined by their assigned audio hash in vehicles.meta
local eModelsWithFireSrn =
{
	"FIRETRUK",
}

-- models listed below will use AMBULANCE_WARNING as auxiliary siren
-- unlisted models will instead use the default wail as the auxiliary siren
local eModelsWithPcall =
{	
	"AMBULANCE",
	"FIRETRUK",
	"LGUARD",
}


---------------------------------------------------------------------
function ShowDebug(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

---------------------------------------------------------------------
function useFiretruckSiren(veh)
	local model = GetEntityModel(veh)
	for i = 1, #eModelsWithFireSrn, 1 do
		if model == GetHashKey(eModelsWithFireSrn[i]) then
			return true
		end
	end
	return false
end

---------------------------------------------------------------------
function usePowercallAuxSrn(veh)
	local model = GetEntityModel(veh)
	for i = 1, #eModelsWithPcall, 1 do
		if model == GetHashKey(eModelsWithPcall[i]) then
			return true
		end
	end
	return false
end

---------------------------------------------------------------------
function CleanupSounds()
	if count_sndclean_timer > delay_sndclean_timer then
		count_sndclean_timer = 0
		for k, v in pairs(state_lxsiren) do
			if v > 0 then
				if not DoesEntityExist(k) or IsEntityDead(k) then
					if snd_lxsiren[k] ~= nil then
						StopSound(snd_lxsiren[k])
						ReleaseSoundId(snd_lxsiren[k])
						snd_lxsiren[k] = nil
						state_lxsiren[k] = nil
					end
				end
			end
		end
		for k, v in pairs(state_pwrcall) do
			if v == true then
				if not DoesEntityExist(k) or IsEntityDead(k) then
					if snd_pwrcall[k] ~= nil then
						StopSound(snd_pwrcall[k])
						ReleaseSoundId(snd_pwrcall[k])
						snd_pwrcall[k] = nil
						state_pwrcall[k] = nil
					end
				end
			end
		end
		for k, v in pairs(state_airmanu) do
			if v == true then
				if not DoesEntityExist(k) or IsEntityDead(k) or IsVehicleSeatFree(k, -1) then
					if snd_airmanu[k] ~= nil then
						StopSound(snd_airmanu[k])
						ReleaseSoundId(snd_airmanu[k])
						snd_airmanu[k] = nil
						state_airmanu[k] = nil
					end
				end
			end
		end
	else
		count_sndclean_timer = count_sndclean_timer + 1
	end
end

---------------------------------------------------------------------
function TogIndicStateForVeh(veh, newstate)
	if DoesEntityExist(veh) and not IsEntityDead(veh) then
		if newstate == ind_state_o then
			SetVehicleIndicatorLights(veh, 0, false) -- R
			SetVehicleIndicatorLights(veh, 1, false) -- L
		elseif newstate == ind_state_l then
			SetVehicleIndicatorLights(veh, 0, false) -- R
			SetVehicleIndicatorLights(veh, 1, true) -- L
		elseif newstate == ind_state_r then
			SetVehicleIndicatorLights(veh, 0, true) -- R
			SetVehicleIndicatorLights(veh, 1, false) -- L
		elseif newstate == ind_state_h then
			SetVehicleIndicatorLights(veh, 0, true) -- R
			SetVehicleIndicatorLights(veh, 1, true) -- L
		end
		state_indic[veh] = newstate
	end
end

---------------------------------------------------------------------
function TogMuteDfltSrnForVeh(veh, toggle)
	if DoesEntityExist(veh) and not IsEntityDead(veh) then
		DisableVehicleImpactExplosionActivation(veh, toggle)
	end
end

---------------------------------------------------------------------
function SetLxSirenStateForVeh(veh, newstate)
	if DoesEntityExist(veh) and not IsEntityDead(veh) then
		if newstate ~= state_lxsiren[veh] then
				
			if snd_lxsiren[veh] ~= nil then
				StopSound(snd_lxsiren[veh])
				ReleaseSoundId(snd_lxsiren[veh])
				snd_lxsiren[veh] = nil
			end
						
			if newstate == 1 then
				if useFiretruckSiren(veh) then
					TogMuteDfltSrnForVeh(veh, false)
				else
					snd_lxsiren[veh] = GetSoundId()	
					PlaySoundFromEntity(snd_lxsiren[veh], "VEHICLES_HORNS_SIREN_1", veh, 0, 0, 0)
					TogMuteDfltSrnForVeh(veh, true)
				end
				
			elseif newstate == 2 then
				snd_lxsiren[veh] = GetSoundId()
				PlaySoundFromEntity(snd_lxsiren[veh], "VEHICLES_HORNS_SIREN_2", veh, 0, 0, 0)
				TogMuteDfltSrnForVeh(veh, true)
			
			elseif newstate == 3 then
				snd_lxsiren[veh] = GetSoundId()
				if useFiretruckSiren(veh) then
					PlaySoundFromEntity(snd_lxsiren[veh], "VEHICLES_HORNS_AMBULANCE_WARNING", veh, 0, 0, 0)
				else
					PlaySoundFromEntity(snd_lxsiren[veh], "VEHICLES_HORNS_POLICE_WARNING", veh, 0, 0, 0)
				end
				TogMuteDfltSrnForVeh(veh, true)
				
			else
				TogMuteDfltSrnForVeh(veh, true)
				
			end				
				
			state_lxsiren[veh] = newstate
		end
	end
end

---------------------------------------------------------------------
function TogPowercallStateForVeh(veh, toggle)
	if DoesEntityExist(veh) and not IsEntityDead(veh) then
		if toggle == true then
			if snd_pwrcall[veh] == nil then
				snd_pwrcall[veh] = GetSoundId()
				if usePowercallAuxSrn(veh) then
					PlaySoundFromEntity(snd_pwrcall[veh], "VEHICLES_HORNS_AMBULANCE_WARNING", veh, 0, 0, 0)
				else
					PlaySoundFromEntity(snd_pwrcall[veh], "VEHICLES_HORNS_SIREN_1", veh, 0, 0, 0)
				end
			end
		else
			if snd_pwrcall[veh] ~= nil then
				StopSound(snd_pwrcall[veh])
				ReleaseSoundId(snd_pwrcall[veh])
				snd_pwrcall[veh] = nil
			end
		end
		state_pwrcall[veh] = toggle
	end
end

---------------------------------------------------------------------
function SetAirManuStateForVeh(veh, newstate)
	if DoesEntityExist(veh) and not IsEntityDead(veh) then
		if newstate ~= state_airmanu[veh] then
				
			if snd_airmanu[veh] ~= nil then
				StopSound(snd_airmanu[veh])
				ReleaseSoundId(snd_airmanu[veh])
				snd_airmanu[veh] = nil
			end
						
			if newstate == 1 then
				snd_airmanu[veh] = GetSoundId()
				if useFiretruckSiren(veh) then
					PlaySoundFromEntity(snd_airmanu[veh], "VEHICLES_HORNS_FIRETRUCK_WARNING", veh, 0, 0, 0)
				else
					PlaySoundFromEntity(snd_airmanu[veh], "SIRENS_AIRHORN", veh, 0, 0, 0)
				end
				
			elseif newstate == 2 then
				snd_airmanu[veh] = GetSoundId()
				PlaySoundFromEntity(snd_airmanu[veh], "VEHICLES_HORNS_SIREN_1", veh, 0, 0, 0)
			
			elseif newstate == 3 then
				snd_airmanu[veh] = GetSoundId()
				PlaySoundFromEntity(snd_airmanu[veh], "VEHICLES_HORNS_SIREN_2", veh, 0, 0, 0)
				
			end				
				
			state_airmanu[veh] = newstate
		end
	end
end

function Draw(text, r, g, b, alpha, x, y, width, height, ya, center, font)
    SetTextColour(r, g, b, alpha)
    SetTextFont(font)
    SetTextScale(width, height)
    SetTextWrap(0.0, 1.0)
    SetTextCentre(center)
    SetTextDropshadow(0, 0, 0, 0, 0)
    SetTextEdge(1, 0, 0, 0, 205)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    Citizen.InvokeNative(0x61BB1D9B3A95D802, ya)
    DrawText(x, y)
end

function _DrawRect(x, y, width, height, r, g, b, a, ya)
    Citizen.InvokeNative(0x61BB1D9B3A95D802, ya)
    DrawRect(x, y, width, height, r, g, b, a)
end

function _DrawPanel()
	_DrawRect(0.8236 + 0.11, 0.91 + 0.01, 0.1070, 0.094, 0, 0, 0, 200, 0)
	
	Draw("Code 1", 0, 0, 0, 255, 0.790 + 0.11, 0.87 + 0.01, 0.25, 0.25, 1, true, 0)
	_DrawRect(0.790 + 0.11, 0.88 + 0.01, 0.03, 0.02, 105, 105, 105, 225, 0)

	Draw("Code 2", 0, 0, 0, 255, 0.824 + 0.11, 0.87 + 0.01, 0.25, 0.25, 1, true, 0)
	if Code_2 then
		_DrawRect(0.824 + 0.11, 0.88 + 0.01, 0.03, 0.02, 173, 0, 0, 225, 0)
	else
		_DrawRect(0.824 + 0.11, 0.88 + 0.01, 0.03, 0.02, 186, 186, 186, 225, 0)
	end

	Draw("Code 3", 0, 0, 0, 255, 0.857 + 0.11, 0.87 + 0.01, 0.25, 0.25, 1, true, 0)
	if Code_3 then
		_DrawRect(0.857 + 0.11, 0.88 + 0.01, 0.03, 0.02, 173, 0, 0, 225, 0)
	else
		_DrawRect(0.857 + 0.11, 0.88 + 0.01, 0.03, 0.02, 186, 186, 186, 225, 0)
	end

	Draw("SIG 1", 0, 0, 0, 255, 0.790 + 0.11, 0.9 + 0.01, 0.25, 0.25, 1, true, 0)
	if Signal_1 then
		_DrawRect(0.790 + 0.11, 0.91 + 0.01, 0.03, 0.02, 0, 173, 0, 225, 0)
	else
		_DrawRect(0.790 + 0.11, 0.91 + 0.01, 0.03, 0.02, 186, 186, 186, 225, 0)
	end
	
	Draw("SIG 2", 0, 0, 0, 255, 0.824 + 0.11, 0.9 + 0.01, 0.25, 0.25, 1, true, 0)
	if Signal_2 then
		_DrawRect(0.824 + 0.11, 0.91 + 0.01, 0.03, 0.02, 0, 173, 0, 225, 0)
	else
		_DrawRect(0.824 + 0.11, 0.91 + 0.01, 0.03, 0.02, 186, 186, 186, 225, 0)
	end

	Draw("SIG 3", 0, 0, 0, 255, 0.857 + 0.11, 0.9 + 0.01, 0.25, 0.25, 1, true, 0)
	if Signal_3 then
		_DrawRect(0.857 + 0.11, 0.91 + 0.01, 0.03, 0.02, 0, 173, 0, 225, 0)
	else
		_DrawRect(0.857 + 0.11, 0.91 + 0.01, 0.03, 0.02, 186, 186, 186, 225, 0)
	end

	Draw("HORN ", 0, 0, 0, 255, 0.790 + 0.11, 0.93 + 0.01, 0.25, 0.25, 1, true, 0)
	if HORN then
		_DrawRect(0.790 + 0.11, 0.94 + 0.01, 0.03, 0.02, 0, 173, 0, 225, 0)
	else
		_DrawRect(0.790 + 0.11, 0.94 + 0.01, 0.03, 0.02, 186, 186, 186, 225, 0)
	end

	Draw("DUAL", 0, 0, 0, 255, 0.824 + 0.11, 0.93 + 0.01, 0.25, 0.25, 1, true, 0)
	if DUAL then
		_DrawRect(0.824 + 0.11, 0.94 + 0.01, 0.03, 0.02, 255, 194, 0, 255, 0)
	else
		_DrawRect(0.824 + 0.11, 0.94 + 0.01, 0.03, 0.02, 186, 186, 186, 225, 0)
	end
end


---------------------------------------------------------------------
RegisterNetEvent("lvc_TogIndicState_c")
AddEventHandler("lvc_TogIndicState_c", function(sender, newstate)
	local player_s = GetPlayerFromServerId(sender)
	local ped_s = GetPlayerPed(player_s)
	if DoesEntityExist(ped_s) and not IsEntityDead(ped_s) then
		if ped_s ~= GetPlayerPed(-1) then
			if IsPedInAnyVehicle(ped_s, false) then
				local veh = GetVehiclePedIsUsing(ped_s)
				TogIndicStateForVeh(veh, newstate)
			end
		end
	end
end)

AddEventHandler('lux_vehcontrol:ELSClick', function(soundFile, soundVolume)
SendNUIMessage({
  transactionType     = 'playSound',
  transactionFile     = soundFile,
  transactionVolume   = soundVolume
})
end)

---------------------------------------------------------------------
RegisterNetEvent("els:setTakedownState_c")
AddEventHandler("els:setTakedownState_c", function(sender)
    local player_s = GetPlayerFromServerId(sender)
	local ped_s = GetPlayerPed(player_s)
	print('event client')

    if player_s ~= -1 then 
        if DoesEntityExist(ped_s) and not IsEntityDead(ped_s) then
            if IsPedInAnyVehicle(ped_s, false) then
				local veh = GetVehiclePedIsUsing(ped_s)
                    changeLightStage(0, 1, 1, 1)
            end
        end
    end 
end)

---------------------------------------------------------------------
RegisterNetEvent("lvc_TogDfltSrnMuted_c")
AddEventHandler("lvc_TogDfltSrnMuted_c", function(sender, toggle)
	local player_s = GetPlayerFromServerId(sender)
	local ped_s = GetPlayerPed(player_s)

	if DoesEntityExist(ped_s) and not IsEntityDead(ped_s) then
		if ped_s ~= GetPlayerPed(-1) then
			if IsPedInAnyVehicle(ped_s, false) then
				local veh = GetVehiclePedIsUsing(ped_s)
				TogMuteDfltSrnForVeh(veh, toggle)
			end
		end
	end
end)

---------------------------------------------------------------------
RegisterNetEvent("lvc_SetLxSirenState_c")
AddEventHandler("lvc_SetLxSirenState_c", function(sender, newstate)
	local player_s = GetPlayerFromServerId(sender)
	local ped_s = GetPlayerPed(player_s)

	if DoesEntityExist(ped_s) and not IsEntityDead(ped_s) then
		if ped_s ~= GetPlayerPed(-1) then
			if IsPedInAnyVehicle(ped_s, false) then
				local veh = GetVehiclePedIsUsing(ped_s)
				SetLxSirenStateForVeh(veh, newstate)
			end
		end
	end
end)

---------------------------------------------------------------------
RegisterNetEvent("lvc_TogPwrcallState_c")
AddEventHandler("lvc_TogPwrcallState_c", function(sender, toggle)
	local player_s = GetPlayerFromServerId(sender)
	local ped_s = GetPlayerPed(player_s)

	if DoesEntityExist(ped_s) and not IsEntityDead(ped_s) then
		if ped_s ~= GetPlayerPed(-1) then
			if IsPedInAnyVehicle(ped_s, false) then
				local veh = GetVehiclePedIsUsing(ped_s)
				TogPowercallStateForVeh(veh, toggle)
			end
		end
	end
end)

---------------------------------------------------------------------
RegisterNetEvent("lvc_SetAirManuState_c")
AddEventHandler("lvc_SetAirManuState_c", function(sender, newstate)
	local player_s = GetPlayerFromServerId(sender)
	local ped_s = GetPlayerPed(player_s)

	if DoesEntityExist(ped_s) and not IsEntityDead(ped_s) then
		if ped_s ~= GetPlayerPed(-1) then
			if IsPedInAnyVehicle(ped_s, false) then
				local veh = GetVehiclePedIsUsing(ped_s)
				SetAirManuStateForVeh(veh, newstate)
			end
		end
	end
end)
---------------------------------------------------------------------


Citizen.CreateThread(function()
	while true do
		if status_panel then 
			local playerped = GetPlayerPed(-1)		

			if IsPedInAnyVehicle(playerped, false) then	
				local veh = GetVehiclePedIsUsing(playerped)

				if GetPedInVehicleSeat(veh, -1) == playerped then
					if GetVehicleClass(veh) == 18 then
						_DrawPanel()
					end
				end
			end
		else
			Citizen.Wait(10000)
		end
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
			
			CleanupSounds()
			
			----- IS IN VEHICLE -----
			local playerped = GetPlayerPed(-1)		

			if IsPedInAnyVehicle(playerped, false) then	
			
				----- IS DRIVER -----
				local veh = GetVehiclePedIsUsing(playerped)	

				if GetPedInVehicleSeat(veh, -1) == playerped then
				-----------------------		 	

					DisableControlAction(0, 84, true) -- INPUT_VEH_PREV_RADIO_TRACK  
					DisableControlAction(0, 83, true) -- INPUT_VEH_NEXT_RADIO_TRACK 
					
					if state_indic[veh] ~= ind_state_o and state_indic[veh] ~= ind_state_l and state_indic[veh] ~= ind_state_r and state_indic[veh] ~= ind_state_h then
						state_indic[veh] = ind_state_o
					end
					
					-- INDIC AUTO CONTROL
					if actv_ind_timer == true then	
						if state_indic[veh] == ind_state_l or state_indic[veh] == ind_state_r then
							if GetEntitySpeed(veh) < 6 then
								count_ind_timer = 0
							else
								if count_ind_timer > delay_ind_timer then
									count_ind_timer = 0
									actv_ind_timer = false
									state_indic[veh] = ind_state_o
									TogIndicStateForVeh(veh, state_indic[veh])
									count_bcast_timer = delay_bcast_timer
								else
									count_ind_timer = count_ind_timer + 1
								end
							end
						end
					end
					
					
					--- IS EMERG VEHICLE ---
					if GetVehicleClass(veh) == 18 then
						
						local actv_manu = false
						local actv_horn = false
						
						DisableControlAction(0, 86, true) -- INPUT_VEH_HORN	
						--DisableControlAction(0, 172, true) -- INPUT_CELLPHONE_UP 
						--DisableControlAction(0, 173, true) -- INPUT_CELLPHONE_DOWN
						--DisableControlAction(0, 174, true) -- INPUT_CELLPHONE_LEFT 
						--DisableControlAction(0, 175, true) -- INPUT_CELLPHONE_RIGHT 
						DisableControlAction(0, 81, true) -- INPUT_VEH_NEXT_RADIO
						DisableControlAction(0, 82, true) -- INPUT_VEH_PREV_RADIO
						--	DisableControlAction(0, 19, true) -- INPUT_CHARACTER_WHEEL 
						DisableControlAction(0, 85, true) -- INPUT_VEH_RADIO_WHEEL 
						DisableControlAction(0, 80, true) -- INPUT_VEH_CIN_CAM 
					
						SetVehRadioStation(veh, "OFF")
						SetVehicleRadioEnabled(veh, false)
						
						if state_lxsiren[veh] ~= 1 and state_lxsiren[veh] ~= 2 and state_lxsiren[veh] ~= 3 then
							state_lxsiren[veh] = 0
						end
						if state_pwrcall[veh] ~= true then
							state_pwrcall[veh] = false
						end
						if state_airmanu[veh] ~= 1 and state_airmanu[veh] ~= 2 and state_airmanu[veh] ~= 3 then
							state_airmanu[veh] = 0
						end
						
						if useFiretruckSiren(veh) and state_lxsiren[veh] == 1 then
							TogMuteDfltSrnForVeh(veh, false)
							dsrn_mute = false
						else
							TogMuteDfltSrnForVeh(veh, true)
							dsrn_mute = true
						end
						
						if not IsVehicleSirenOn(veh) and state_lxsiren[veh] > 0 then
							SetLxSirenStateForVeh(veh, 0)
							count_bcast_timer = delay_bcast_timer
						end
						if not IsVehicleSirenOn(veh) and state_pwrcall[veh] == true then
							TogPowercallStateForVeh(veh, false)
							count_bcast_timer = delay_bcast_timer
						end
					
						----- CONTROLS -----
						if not IsPauseMenuActive() then
						
							-- TOG DFLT SRN LIGHTS  or IsDisabledControlJustReleased(0, 164) 
							if IsDisabledControlJustReleased(0, 85) then
								if IsVehicleSirenOn(veh) then
						--			TriggerEvent("lux_vehcontrol:ELSClick", "Off", 0.7) -- Off
									PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
									Code_2 = false
									Code_3 = false
									Signal_1 = false
									Signal_2 = false
									Signal_3 = false
									DUAL = false
									SetVehicleSiren(veh, false)
								else
								--	TriggerEvent("lux_vehcontrol:ELSClick", "On", 0.5) -- On
								PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
									Code_2 = true
									Citizen.Wait(150)
									SetVehicleSiren(veh, true)
									count_bcast_timer = delay_bcast_timer
								end		

							
							-- TOG LX SIREN
							elseif IsDisabledControlJustReleased(0, 157) then
								local cstate = state_lxsiren[veh]

								if cstate == 0 then
									if IsVehicleSirenOn(veh) then
									--	TriggerEvent("lux_vehcontrol:ELSClick", "Upgrade", 0.7) -- Upgrade
										PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
										Code_3 = true
										Signal_1 = true
										SetLxSirenStateForVeh(veh, 1)
										count_bcast_timer = delay_bcast_timer
									end
								else
								--	TriggerEvent("lux_vehcontrol:ELSClick", "Downgrade", 1) -- Downgrade
									PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
									Code_3 = false
									Signal_1 = false
									Signal_2 = false
									Signal_3 = false
									SetLxSirenStateForVeh(veh, 0)
									count_bcast_timer = delay_bcast_timer
								end
							elseif IsDisabledControlJustReleased(0, 158) then
								if state_pwrcall[veh] == true then
								--	TriggerEvent("lux_vehcontrol:ELSClick", "Downgrade", 1) -- Downgrade
									PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
									DUAL = false
									TogPowercallStateForVeh(veh, false)
									count_bcast_timer = delay_bcast_timer
								else
									if IsVehicleSirenOn(veh) then
									--	TriggerEvent("lux_vehcontrol:ELSClick", "Upgrade", 0.7) -- Upgrade
										PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
										DUAL = true
										TogPowercallStateForVeh(veh, true)
										count_bcast_timer = delay_bcast_timer
									end
								end
								
							end
							
							-- BROWSE LX SRN TONES
							if state_lxsiren[veh] > 0 then
								if IsDisabledControlJustReleased(0, 80) or IsDisabledControlJustReleased(0, 81) then
									if IsVehicleSirenOn(veh) then
										local cstate = state_lxsiren[veh]
										local nstate = 1

									--	TriggerEvent("lux_vehcontrol:ELSClick", "Upgrade", 0.7)
										PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
										if cstate == 1 then
											nstate = 2
											Signal_1 = false
											Signal_2 = true
											Signal_3 = false
										elseif cstate == 2 then
											nstate = 3
											Signal_1 = false
											Signal_2 = false
											Signal_3 = true
										else	
											nstate = 1
											Signal_1 = true
											Signal_2 = false
											Signal_3 = false
										end
										SetLxSirenStateForVeh(veh, nstate)
										count_bcast_timer = delay_bcast_timer
									end
								end
							end
										
							-- MANU
							if state_lxsiren[veh] < 1 then
								if IsDisabledControlPressed(0, 80) or IsDisabledControlPressed(0, 81) then
									actv_manu = true
								else
									actv_manu = false
								end
							else
								actv_manu = false
							end
							
							-- HORN
							if IsDisabledControlPressed(0, 86) then
								actv_horn = true
								HORN = true
							else
								actv_horn = false
								HORN = false
							end
						end
						
						---- ADJUST HORN / MANU STATE ----
						local hmanu_state_new = 0

						if actv_horn == true and actv_manu == false then
							hmanu_state_new = 1
						elseif actv_horn == false and actv_manu == true then
							hmanu_state_new = 2
						elseif actv_horn == true and actv_manu == true then
							hmanu_state_new = 3
						end
						if hmanu_state_new == 1 then
							if not useFiretruckSiren(veh) then
								if state_lxsiren[veh] > 0 and actv_lxsrnmute_temp == false then
									srntone_temp = state_lxsiren[veh]
									SetLxSirenStateForVeh(veh, 0)
									actv_lxsrnmute_temp = true
								end
							end
						else
							if not useFiretruckSiren(veh) then
								if actv_lxsrnmute_temp == true then
									SetLxSirenStateForVeh(veh, srntone_temp)
									actv_lxsrnmute_temp = false
								end
							end
						end
						if state_airmanu[veh] ~= hmanu_state_new then
							SetAirManuStateForVeh(veh, hmanu_state_new)
							count_bcast_timer = delay_bcast_timer
						end	
					end
					
						
					--- IS ANY LAND VEHICLE ---	
					if GetVehicleClass(veh) ~= 14 and GetVehicleClass(veh) ~= 15 and GetVehicleClass(veh) ~= 16 and GetVehicleClass(veh) ~= 21 then
					
						----- CONTROLS -----
						if not IsPauseMenuActive() then
						
							-- IND L
							if IsDisabledControlJustReleased(0, 84) then -- INPUT_VEH_PREV_RADIO_TRACK
								local cstate = state_indic[veh]

								if cstate == ind_state_l then
									state_indic[veh] = ind_state_o
									actv_ind_timer = false
								else
									state_indic[veh] = ind_state_l
									actv_ind_timer = true
								end
								TogIndicStateForVeh(veh, state_indic[veh])
								count_ind_timer = 0
								count_bcast_timer = delay_bcast_timer			
							-- IND R
							elseif IsDisabledControlJustReleased(0, 83) then -- INPUT_VEH_NEXT_RADIO_TRACK
								local cstate = state_indic[veh]

								if cstate == ind_state_r then
									state_indic[veh] = ind_state_o
									actv_ind_timer = false
								else
									state_indic[veh] = ind_state_r
									actv_ind_timer = true
								end
								TogIndicStateForVeh(veh, state_indic[veh])
								count_ind_timer = 0
								count_bcast_timer = delay_bcast_timer
							
								-- IND H
							elseif IsControlJustReleased(0, 202) then -- INPUT_FRONTEND_CANCEL / Backspace
								if GetLastInputMethod(0) then -- last input was with kb
									local cstate = state_indic[veh]
									
									if cstate == ind_state_h then
										state_indic[veh] = ind_state_o
									else
										state_indic[veh] = ind_state_h
									end
									TogIndicStateForVeh(veh, state_indic[veh])
									actv_ind_timer = false
									count_ind_timer = 0
									count_bcast_timer = delay_bcast_timer
								end
							end
						
						end
						
						
						----- AUTO BROADCAST VEH STATES -----
						if count_bcast_timer > delay_bcast_timer then
							count_bcast_timer = 0
							--- IS EMERG VEHICLE ---
							if GetVehicleClass(veh) == 18 then
								TriggerServerEvent("lvc_TogDfltSrnMuted_s", dsrn_mute)
								TriggerServerEvent("lvc_SetLxSirenState_s", state_lxsiren[veh])
								TriggerServerEvent("lvc_TogPwrcallState_s", state_pwrcall[veh])
								TriggerServerEvent("lvc_SetAirManuState_s", state_airmanu[veh])
							end
							--- IS ANY OTHER VEHICLE ---
							TriggerServerEvent("lvc_TogIndicState_s", state_indic[veh])
						else
							count_bcast_timer = count_bcast_timer + 1
						end
					
					end
					
				end
			end

		Citizen.Wait(0)
	end
end)