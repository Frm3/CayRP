ESX                           = nil

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

-- ## 3dme : client side

-- ## Variables
local pedDisplaying = {}

-- ## Functions

-- OBJ : draw text in 3d
-- PARAMETERS :
--      - coords : world coordinates to where you want to draw the text
--      - text : the text to display
local function DrawText3D(coords, text)
    local camCoords = GetGameplayCamCoord()
    local dist = #(coords - camCoords)
    
    -- Experimental math to scale the text down
    local scale = 200 / (GetGameplayCamFov() * dist)

    -- Format the text
    local c = Config.visual.color
    SetTextColour(c.r, c.g, c.b, c.a)
    SetTextScale(0.0, Config.visual.scale * scale)
    SetTextFont(Config.visual.font)
    SetTextDropshadow(0, 0, 0, 0, 55)
    SetTextDropShadow()
    SetTextCentre(true)

    -- Diplay the text
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(coords, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()

end

-- OBJ : handle the drawing of text above a ped head
-- PARAMETERS :
--      - coords : world coordinates to where you want to draw the text
--      - text : the text to display
local function Display(ped, text)

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local pedCoords = GetEntityCoords(ped)
    local dist = #(playerCoords - pedCoords)

    if dist <= Config.visual.dist then

        pedDisplaying[ped] = (pedDisplaying[ped] or 1) + 1

        -- Timer
        local display = true

        Citizen.CreateThread(function()
            Wait(Config.visual.time)
            display = false
        end)

        -- Display
        local offset = 0.8 + pedDisplaying[ped] * 0.1
        while display do
            if HasEntityClearLosToEntity(playerPed, ped, 17 ) then
                local x, y, z = table.unpack(GetEntityCoords(ped))
                z = z + offset
                DrawText3D(vector3(x, y, z), text)
            end
            Wait(0)
        end

        pedDisplaying[ped] = pedDisplaying[ped] - 1

    end
end

-- ## Events

-- Share the display of 3D text
RegisterNetEvent('3ddo:shareDisplay')
AddEventHandler('3ddo:shareDisplay', function(text, serverId)
    local player = GetPlayerFromServerId(serverId)
    if player ~= -1 then
        local ped = GetPlayerPed(player)
        Display(ped, text)
    end
end)

local try = 1
RegisterNetEvent('break_tryscript:pokaz3d')
AddEventHandler('break_tryscript:pokaz3d', function(tekst, source)
    local zmienna = 1 + (try*0.15)
    Pokazuj(GetPlayerFromServerId(source), tekst, zmienna)
end)

function Pokazuj(osoba, tekst, zmienna)
    local pokazuje = true

    Citizen.CreateThread(function()
        Wait(7000)
        pokazuje = false
    end)
	
    Citizen.CreateThread(function()
        try = try + 1
        while pokazuje do
            Wait(0)
            local kordygracz = GetEntityCoords(GetPlayerPed(osoba), false)
            local kordy = GetEntityCoords(PlayerPedId(), false)
            local odleglosc = Vdist2(kordygracz, kordy)
            if odleglosc < 500 then
                 Tekst3d(kordygracz['x'], kordygracz['y'], kordygracz['z']+zmienna-0.20, tekst)
            end
        end
        try = try - 1
    end)
end

function Tekst3d(x,y,z, tekst)
  local onScreen, _x, _y = World3dToScreen2d(x, y, z)
  local p = GetGameplayCamCoords()
  local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
  local scale = (1 / distance) * 2
  local fov = (1 / GetGameplayCamFov()) * 100
  local scale = scale * fov
  if onScreen then
		SetTextScale(0.35, 0.35)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(tekst)
		DrawText(_x,_y)
		local factor = (string.len(tekst)) / 370
		DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
    end
end

local LANGUAGE = Config.language
TriggerEvent('chat:addSuggestion', '/' .. Languages[LANGUAGE].commandName, Languages[LANGUAGE].commandDescription, Languages[LANGUAGE].commandSuggestion)

local defaultScal = 0.5 -- Text scale
local colo = { r = 255, g = 255, b = 255, a = 255 } -- Text color
local fon = 0 -- Text font
local distToDra = 70 -- Min. distance to draw 

local pedDisplaying = {}

local function Display(ped, text)

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local pedCoords = GetEntityCoords(ped)
    local dist = #(playerCoords - pedCoords)

    if dist <= Config.visual.dist then

        pedDisplaying[ped] = (pedDisplaying[ped] or 1) + 1

        -- Timer
        local display = true

        Citizen.CreateThread(function()
            Wait(Config.visual.time)
            display = false
        end)

        -- Display
        local offset = 0.8 + pedDisplaying[ped] * 0.1
        while display do
            if HasEntityClearLosToEntity(playerPed, ped, 17 ) then
                local x, y, z = table.unpack(GetEntityCoords(ped))
                z = z + offset
                DrawText3D(vector3(x, y, z), text)
            end
            Wait(0)
        end

        pedDisplaying[ped] = pedDisplaying[ped] - 1

    end
end

-- OBJ : handle the drawing of text above a ped head
-- PARAMETERS :
--      - coords : world coordinates to where you want to draw the text
--      - text : the text to display
local function Displa(ped, text)

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local pedCoords = GetEntityCoords(ped)
local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local dist = closestDistance

    if dist <= distToDra then

        pedDisplaying[ped] = (pedDisplaying[ped] or 1) + 1

		
		if string.len(text) > 0 then
			display = true
		else
			display = false
		end
        --[[Citizen.CreateThread(function()
            Wait(displayTime)
            display = false
        end)]]

        -- Display
        local offset = 0.0 + pedDisplaying[ped] * 0.1
			while display do
				if HasEntityClearLosToEntity(playerPed, ped, 17 ) then
					local x, y, z = table.unpack(GetEntityCoords(ped))
					z = z + offset
					DrawText3D(vector3(x, y, z), text)
				end
				Wait(0)
				if not display then 
					break 
				end
			end

        pedDisplaying[ped] = pedDisplaying[ped] - 1

    end
end

RegisterNetEvent('opis:shareDisplay')
AddEventHandler('opis:shareDisplay', function(text, serverId)
    local player = GetPlayerFromServerId(serverId)
    if player ~= -1 then
        local ped = GetPlayerPed(player)
        Displa(ped, text)
    end
end)
