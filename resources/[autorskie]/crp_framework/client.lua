local blips = {
	{title="Szeryfi", colour=46, id=60, x=1852.91, y=3687.53, z=34.26},
	{title="SÄ…d", colour=46, id=206, x=242.98, y=-1085.02, z=28.84},
	{title="K1 Dealers", colour=46, id=523, x=-33.08, y=-1668.89, z=29.48},
}
DensityMultiplier = 0.7
local dict = "amb@world_human_hang_out_street@female_arms_crossed@base"

Citizen.CreateThread(function()

    while ( not HasAnimSetLoaded( "dict " ) ) do 
        Citizen.Wait( 100 )
    end 

    while ( not HasAnimSetLoaded( "move_ped_crouched" ) ) do 
        Citizen.Wait( 100 )
    end 


    while ( not HasAnimSetLoaded( "missminuteman_1ig_2" ) ) do 
        Citizen.Wait( 100 )
    end 

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
        local playerPed = GetPlayerPed(-1)
        local playerLocalisation = GetEntityCoords(playerPed)
        local crosss = false
        local crouched = false
        local handsup = false

	    SetVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetPedDensityMultiplierThisFrame(DensityMultiplier)
	    SetRandomVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetParkedVehicleDensityMultiplierThisFrame(DensityMultiplier)
	    SetScenarioPedDensityMultiplierThisFrame(DensityMultiplier, DensityMultiplier)
        ClearAreaOfCops(playerLocalisation.x, playerLocalisation.y, playerLocalisation.z, 400.0)
        DisablePlayerVehicleRewards(PlayerId())

        if (IsControlJustReleased(0, button) or IsDisabledControlJustReleased(0, button)) and vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
            toggleEngine()
        end

        if IsControlJustPressed(1, 182) then --Start holding g
            if not crouched then
                SetPedMovementClipset(playerPed, "move_ped_crouched", 0.25 )
                crouched = true
            else
                crouched = false
                ResetPedMovementClipset(playerPed, 0 )
            end
        end

        if IsControlJustPressed(1, 36) then --Start holding g
            if not crosss then
                TaskPlayAnim(GetPlayerPed(-1), dict, "base", 8.0, 8.0, -1, 50, 0, false, false, false)
                crosss = true
            else
                crosss = false
                ClearPedTasks(GetPlayerPed(-1))
            end
        end

		if IsControlJustPressed(1, 243) then
			if not handsup then
				TaskPlayAnim(PlayerPedId(), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
				handsup = true
			else
				handsup = false
				ClearPedTasks(PlayerPedId())
			end
		end

	end
end)

function toggleEngine()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
        SetVehicleEngineOn(vehicle, (not GetIsVehicleEngineRunning(vehicle)), false, true)
    end
end
