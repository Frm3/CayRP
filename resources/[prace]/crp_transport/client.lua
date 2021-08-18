local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
  }
  
  local PlayerData = {}
  
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

Citizen.CreateThread(function()
	while true do

Citizen.Wait(1)

        if PlayerData.job ~= nil and PlayerData.job.name == Config.Job then
 
            local playerPed = PlayerPedId()
	    local coords = GetEntityCoords(playerPed)
	    local vehicle = GetVehiclePedIsIn(playerPed, false)

		if IsControlJustReleased(0, Keys['F6']) then
			JobMenu()
		end

		DrawMarker(Przebieralnie.Blip, Przebieralnie.Lokalizacje.x, Przebieralnie.Lokalizacje.y, Przebieralnie.Lokalizacje.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0, 100, false, true, 2, false, false, false, false)
		DrawMarker(bossmenu.Blip, bossmenu.Lokalizacje.x, bossmenu.Lokalizacje.y, bossmenu.Lokalizacje.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0, 100, false, true, 2, false, false, false, false)
		DrawMarker(auta.Blip, auta.Lokalizacje.x, auta.Lokalizacje.y, auta.Lokalizacje.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0, 100, false, true, 2, false, false, false, false)
       	

                if GetDistanceBetweenCoords(coords, Przebieralnie.Lokalizacje.x, Przebieralnie.Lokalizacje.y, Przebieralnie.Lokalizacje.z, true) < 2.0 then
                    	ESX.ShowHelpNotification('Kliknij ~INPUT_CONTEXT~ aby otworzyć menu ubran!', false, false, 10)
                	if IsControlJustReleased(0, Keys['E']) then
				UbraniaMenu()
			end
		end

	if IsPedInAnyVehicle(playerPed, false) then
		DrawMarker(usun.Blip, usun.Lokalizacje.x, usun.Lokalizacje.y, usun.Lokalizacje.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0, 100, false, true, 2, false, false, false, false)
                if GetDistanceBetweenCoords(coords, usun.Lokalizacje.x, usun.Lokalizacje.y, usun.Lokalizacje.z, true) < 3.0 then
                    	ESX.ShowHelpNotification('Kliknij ~INPUT_CONTEXT~ aby usunąć auto!', false, false, 10)
                	if IsControlJustReleased(0, Keys['E']) then
				ESX.Game.DeleteVehicle(vehicle)
			end
		end
	end
	
                if GetDistanceBetweenCoords(coords, auta.Lokalizacje.x, auta.Lokalizacje.y, auta.Lokalizacje.z, true) < 2.0 then
                    	ESX.ShowHelpNotification('Kliknij ~INPUT_CONTEXT~ aby otworzyć menu aut!', false, false, 10)
                	if IsControlJustReleased(0, Keys['E']) then
				SpawnAuta()
			end
		end

		if PlayerData.job.grade_name == 'boss' then
                if GetDistanceBetweenCoords(coords, bossmenu.Lokalizacje.x, bossmenu.Lokalizacje.y, bossmenu.Lokalizacje.z, true) < 2.0 then
                    	ESX.ShowHelpNotification('Kliknij ~INPUT_CONTEXT~ aby otworzyć boss menu!', false, false, 10)
			if IsControlJustReleased(0, Keys['E']) then

					ESX.UI.Menu.CloseAll()
					TriggerEvent('esx_society:openBossMenu', Config.Job, function(data, menu)
						menu.close()
					end, { wash = false })
			end
		end
	    end
        end
    end
end)

Citizen.CreateThread(function()
		local blip = AddBlipForCoord(blipp.lokalizacja.x, blipp.lokalizacja.y, blipp.lokalizacja.z)

		SetBlipSprite (blip, blipp.LogoBlipa)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, blipp.Rozmiar)
		SetBlipColour (blip, blipp.Colour)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(blipp.NazwaBlipa)
		EndTextCommandSetBlipName(blip)
end)

function SpawnAuta()

	ESX.UI.Menu.CloseAll()

		local elements = {}

		local Autaa = Autaa
		for i=1, #Autaa, 1 do
			table.insert(elements, { label = Autaa[i].nazwa, model = Autaa[i].model})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_spawner',
		{
			title    = 'Menu Aut',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			menu.close()

					ESX.Game.SpawnVehicle(data.current.model, auta.Spawn, auta.h, function(vehicle)
						TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
					end)

		end, function(data, menu)
			menu.close()
		end)

	end

function ustawUbrania()
  TriggerEvent('skinchanger:getSkin', function(skin)

    if skin.sex == 0 then

      if Ubrania.male ~= nil then
        TriggerEvent('skinchanger:loadClothes', skin, Ubrania.male)
      end

    else

      if Ubrania.female ~= nil then
        TriggerEvent('skinchanger:loadClothes', skin, Ubrania.female)
      end

    end

  end)
end

function UbraniaMenu()

  local elements = {
    { label = "Odziez cywilna",     value = 'domowe'},
    { label = "Mundur roboczy",    value = 'ubraniadopracy'}
  }

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'cloakroom',
    {
      title    = 'Menu Ubrań',
      align    = 'top-left',
      elements = elements,
    },
    function(data, menu)

      if data.current.value == 'domowe' then
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
          TriggerEvent('skinchanger:loadSkin', skin)
        end)
      end

      if data.current.value == 'ubraniadopracy' then
        ustawUbrania()
      end
    end,
    function(data, menu)
      menu.close()
    end
  )
end

function JobMenu()
  local elements = {
    { label = "Start Pracy",     value = 'start'}
  }

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'cloakroom',
    {
      title    = 'Menu Pracy',
      align    = 'top-left',
      elements = elements,
    },
    function(data, menu)
local vehicleModel = GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))
      if data.current.value == 'start' then
	if GetDisplayNameFromVehicleModel(vehicleModel) == Config.MainAuto then
		startjob()
	end

      end

    end, function(data, menu)
      menu.close()
    end)

end

function startjob()

		local pos = Config.job2[math.random(1, #Config.job2)]

			SetNewWaypoint(pos.x, pos.y)


		DrawMarker(Przebieralnie.Blip, pos.x, pos.y, pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 0, 0, 100, false, true, 2, false, false, false, false)
		

end