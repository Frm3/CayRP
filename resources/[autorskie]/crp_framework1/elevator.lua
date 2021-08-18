key_floor_up = 188 -- ARROW UP
key_floor_down = 187 -- ARROW DOWN

elevators = {
    [1] = { 
        {332.15, -595.69, 43.28, "Lobby"},
        {338.62, -583.8, 74.16, "Helipad"}
	},
	[2] = { 
	{345.66, -582.54, 28.8, "Lobby 2"},
	{330.43, -601.11, 43.28, "Lobby"}
	},
	[3] = {
	{340.09, -584.68, 28.8, "Parking"}, 
        {327.05, -603.75, 43.28, "Lobby"}
	},
}

Citizen.CreateThread(function()
    -- turn positions into vectors for faster calculations
    for i = 1, #elevators do
        for k,floor in ipairs(elevators[i]) do
            elevators[i][k] = {vector3(floor[1], floor[2], floor[3]), floor[4]}
        end
    end
    while true do
        Citizen.Wait(5)
        local player = PlayerPedId()
        local PlayerLocation = GetEntityCoords(player)

        for i = 1, #elevators do
            for k,floor in ipairs(elevators[i]) do
                -- New floor
                local Level = floor[1]
                local distance = #(PlayerLocation - Level)
                if distance < 2.0 then
                    -- Get the total amount of floors
                    local numFloors = #elevators[i]

                    -- Check if there are floors above and below our current floor
                    local floorUp = nil
                    if k < numFloors then
                        floorUp = elevators[i][k + 1]
                    end
                    local floorDown = nil
                    if k > 1 then
                        floorDown = elevators[i][k - 1]
                    end

                    -- Text to show
                    -- Show current floor
                    local message = "Elevator (" .. (floor[2] or "Floor " .. k) .. ")"
                    if floorUp then
                        -- Show prompt to go up
                        message = message .. "~n~" .. "~INPUT_FRONTEND_UP~ " .. (floorUp[2] or "Floor " .. k + 1)
                    end
                    if floorDown then
                        -- Show prompt to go down
                        message = message .. "~n~" .. "~INPUT_FRONTEND_DOWN~ " .. (floorDown[2] or "Floor " .. k - 1)
                    end

                    -- Sent information how to use
                    MessageUpLeftCorner(message)

                    if floorUp ~= nil then
                        if IsControlJustReleased(1, key_floor_up) then
                            Citizen.Wait(1500)
                            -- Lets freeze the user so he can't get away..
                            FreezeEntityPosition(player, true)
                            Citizen.Wait(500)
                            -- Play some sounds the make the elevator extra cool! :D
                            PlaySoundFrontend(-1, "CLOSED", "MP_PROPERTIES_ELEVATOR_DOORS", 1);
                            Citizen.Wait(4500)
                            PlaySoundFrontend(-1, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", 0)
                            Citizen.Wait(500)
                            PlaySoundFrontend(-1, "OPENED", "MP_PROPERTIES_ELEVATOR_DOORS", 1);

                            -- Is elevator a vehicle elevator?
                            if IsPedInAnyVehicle(player, true) then
                                -- Lets teleport the user / vehicle and unfreeze the user.
                                SetEntityCoords(GetVehiclePedIsUsing(player), floorUp[1])
                                FreezeEntityPosition(player, false)
                            else
                                -- Lets teleport the user / vehicle and unfreeze the user.
                                SetEntityCoords(player, floorUp[1])
                                FreezeEntityPosition(player, false)
                            end
                        end
                    end

                    if floorDown ~= nil then
                        if IsControlJustReleased(1, key_floor_down) then
                            Citizen.Wait(1500)
                            -- Lets freeze the user so he can't get away..
                            FreezeEntityPosition(player, true)
                            Citizen.Wait(500)
                            -- Play some sounds the make the elevator extra cool! :D
                            PlaySoundFrontend(-1, "CLOSED", "MP_PROPERTIES_ELEVATOR_DOORS", 1);
                            Citizen.Wait(4500)
                            PlaySoundFrontend(-1, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", 0)
                            Citizen.Wait(500)
                            PlaySoundFrontend(-1, "OPENED", "MP_PROPERTIES_ELEVATOR_DOORS", 1);

                            -- Is elevator a vehicle elevator?
                            if IsPedInAnyVehicle(player, true) then
                                -- Lets teleport the user / vehicle and unfreeze the user.
                                SetEntityCoords(GetVehiclePedIsUsing(player), floorDown[1])
                                FreezeEntityPosition(player, false)
                            else
                                -- Lets teleport the user / vehicle and unfreeze the user.
                                SetEntityCoords(player, floorDown[1])
                                FreezeEntityPosition(player, false)
                            end
                        end
                    end
                    -- Get to here but you haven't been teleported? You are not close to an elevator ingame.
                end
            end
            -- New building
        end
    end
end)

-- Message in left up corner.
function MessageUpLeftCorner(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end


-- Message above radar.
function MessageAboveRadar(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end