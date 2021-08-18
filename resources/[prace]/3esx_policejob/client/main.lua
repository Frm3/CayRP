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
local PlayerData              = {}
local GUI = {}
local HasAlreadyEnteredMarker = false
local LastStation             = nil
local LastPart                = nil
local LastPartNum             = nil
local LastEntity              = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local IsHandcuffed            = false
local HandcuffTimer           = nil
local IsDragged               = false
local IsFirstHandcuffTick     = true
local hasAlreadyJoined        = false
local myIdentifier    = nil
local blipsCops = {}
local CurrentTask             = {}
local prop
local isindressingmenu = false
local ininstance = false
ESX                           = nil
GUI.Time = 0



  local blip = AddBlipForCoord(Config.PoliceStations['LSPD'].Blip.Pos.x, Config.PoliceStations['LSPD'].Blip.Pos.y, Config.PoliceStations['LSPD'].Blip.Pos.z)
    SetBlipSprite(blip,  Config.PoliceStations['LSPD'].Blip.Sprite)
    SetBlipColour(blip,  Config.PoliceStations['LSPD'].Blip.Colour)
    SetBlipAlpha(blip, 250)
    SetBlipScale(blip, 1.2)
    BeginTextCommandSetBlipName("STRING")
  AddTextComponentString('Komenda')
  EndTextCommandSetBlipName(blip)




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

function SetVehicleMaxMods(vehicle, livery, offroad, color, extras, bulletproof, tint, tunning)
	local t = {
		modArmor 	= 4,
		modTurbo 	= true,
		modXenon 	= true,
		windowTint 	= 0,
		dirtLevel 	= 0,
		extras 		= {1,1,1,1,1,1,1,1,1,1,1,1,1}
	}
	
	if tunning then
		t.modEngine = 3
		t.modBrakes = 2
		t.modTransmission = 2
		t.modSuspension = 3
	end
	
	if offroad then
		t.wheels = 4
		t.modFrontWheels = 10
	end

	if bulletproof then
		t.bulletProofTyre = true
	end

	if color then
		t.color1 = color
		t.color2 = color
		t.pearlescentColor = color
	end

	if extras then
		for k, v in pairs(extras) do
			t.extras[tonumber(k)] = tonumber(v)
		end
	end

	if tint then
		t.windowTint = tint
	end

	ESX.Game.SetVehicleProperties(vehicle, t)
	if livery then
		SetVehicleLivery(vehicle, livery)
	end
end

function DrawText3D(x, y, z, text, scale)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local pX, pY, pZ = table.unpack(GetGameplayCamCoords())

	SetTextScale(scale, scale)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextEntry("STRING")
	SetTextCentre(1)
	SetTextColour(255, 255, 255, 255)
	SetTextOutline()

	AddTextComponentString(text)
	DrawText(_x, _y)

	local factor = (string.len(text)) / 270
	DrawRect(_x, _y + 0.015, 0.005 + factor, 0.03, 31, 31, 31, 155)
end

local timeLeft = nil
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if timeLeft ~= nil then
			local coords = GetEntityCoords(PlayerPedId())	
			DrawText3D(coords.x, coords.y, coords.z + 0.1, timeLeft .. '~g~%', 0.4)
		end
	end
end)

function procent(time, cb)
	if cb ~= nil then
		Citizen.CreateThread(function()
			timeLeft = 0
			repeat
				timeLeft = timeLeft + 1
				Citizen.Wait(time)
			until timeLeft == 100
			timeLeft = nil
			cb()
		end)
	else
		timeLeft = 0
		repeat
			timeLeft = timeLeft + 1
			Citizen.Wait(time)
		until timeLeft == 100
		timeLeft = nil
	end
end

Citizen.CreateThread(function()
  local Interior = GetInteriorAtCoords(440.84, -983.14, 30.69)
  LoadInterior(Interior)
end)

function cleanPlayer(playerPed)
	SetPedArmour(playerPed, 0)
	ClearPedBloodDamage(playerPed)
	ResetPedVisibleDamage(playerPed)
	ClearPedLastWeaponDamage(playerPed)
	ResetPedMovementClipset(playerPed, 0)
end

function isHandcuffed()
  return IsHandcuffed
end

function playCode99Sound()
  TriggerServerEvent('SANDY_InteractSound_SV:PlayWithinDistance', 3.0, 'PoliceDispatch', 0.8, exports['InteractSound']:getToken())
  Wait(1800)
end

RegisterNetEvent('rich:ShowInfo')
AddEventHandler('rich:ShowInfo', function(notetext)
ESX.ShowNotification(notetext)
end)


RegisterNetEvent('ww:instance')
AddEventHandler('ww:instance', function(what)
    ininstance = what
end)

RegisterNetEvent('rich:BackupReq')
AddEventHandler('rich:BackupReq', function(bk, s)
local coords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(s)))
TriggerServerEvent('rich:BackupReqs', bk, coords)
end)


RegisterNetEvent('rich:BackupSend')
AddEventHandler('rich:BackupSend', function(bk, coords)
if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
  local bkLvl = bk
  local bkLvlTxt = "N/A"

  local street1 = GetStreetNameAtCoord(coords.x, coords.y, coords.z, Citizen.ResultAsInteger(), Citizen.ResultAsInteger())
  local streetName = (GetStreetNameFromHashKey(street1))

  if bkLvl == "0" then
    bkLvlTxt = "~r~~h~KOD 0"
    TriggerServerEvent('SANDY_InteractSound_SV:PlayWithinDistance', 3.0, 'PoliceDispatch', 0.8, exports['InteractSound']:getToken())
  elseif bkLvl == "10-20" then
    bkLvlTxt = "~b~KOD 10-20"
    TriggerServerEvent('SANDY_InteractSound_SV:PlayWithinDistance', 3.0, 'PoliceDispatch', 0.8, exports['InteractSound']:getToken())
  elseif bkLvl == "10-13" then
    bkLvlTxt = "~r~10-13"
    TriggerServerEvent('SANDY_InteractSound_SV:PlayWithinDistance', 3.0, 'PoliceDispatch', 0.8, exports['InteractSound']:getToken())
  end

  ESX.ShowNotification("Oficer potrzebuje pomocy " .. bkLvlTxt .. "~s~ | ~o~Lokalizacja: ~s~" .. streetName .. "")
  if bkLvl == "10-20" or bkLvl == "0" or bkLvl == "10-13" then
    playCode99Sound()
    SetNewWaypoint(coords.x, coords.y)
  end

  local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip,  280)
    SetBlipColour(blip,  1)
    SetBlipAlpha(blip, 250)
    SetBlipScale(blip, 1.2)
    BeginTextCommandSetBlipName("STRING")
  AddTextComponentString('# KOD: '..bkLvl..'')
  EndTextCommandSetBlipName(blip)
  Citizen.Wait(30000)
  RemoveBlip(blip)
  end
end)

local MiejsceSkin = {x = -1096.2517, y = -828.6399, z = 26.8}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		local plyCoords = GetEntityCoords(GetPlayerPed(-1), false) 
		local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, MiejsceSkin.x, MiejsceSkin.y, MiejsceSkin.z)
    if not isindressingmenu then
  		if dist <= 5.0 then	
  			DrawMarker(27, MiejsceSkin.x, MiejsceSkin.y, MiejsceSkin.z-0.95, 0, 0, 0, 0, 0, 0, 1.01, 1.01, 0.6001, 0, 205, 250, 200, 0, 0, 0, 0)
      		if dist <= 1.0 then
       			if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
         		 		ESX.ShowHelpNotification('Naciśnij ~INPUT_CONTEXT~, aby ~y~dopasować mundur!')
  		        	if IsControlJustPressed(0, 38) then
  		          		TriggerEvent("esx_skin:openSaveableMenu")
                    isindressingmenu = true
  		        	end
  		        end
  		    end
  		end
    end
	end
end)

function setUniform(job, playerPed)
  TriggerEvent('skinchanger:getSkin', function(skin)

    if skin.sex == 0 then
      if Config.Uniforms[job].male ~= nil then
        TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms[job].male)
      else
        ESX.ShowNotification(_U('no_outfit'))
      end
      if job == 'bullet_wear' or job == 'so_wear' then
        SetPedArmour(playerPed, 50)
      end
    else
      if Config.Uniforms[job].female ~= nil then
        TriggerEvent('skinchanger:loadClothes', skin, Config.Uniforms[job].female)
      else
        ESX.ShowNotification(_U('no_outfit'))
      end
      if job == 'bullet_wear' or job == 'so_wear' then
        SetPedArmour(playerPed, 50)
      end
    end

  end)
end

local dostep = {
  'steam:11000013dc999d0' --niemieckiszef
}

local madostep = false

function OpenCloakroomMenu()

  ESX.TriggerServerCallback('sandy:sprawdzhexa', function(id)
    if id then
      for i=0, #dostep do
        if tostring(id) == tostring(dostep[i]) then
          madostep = true
        end
      end
    end
  end)

  Wait(1000)

  local playerPed = PlayerPedId()

  local elements = {
    { label = 'Ubrania z mieszkan', value = 'player_dressing' },
    { label = _U('citizen_wear'), value = 'citizen_wear' },
    { label = _U('bullet_wear'), value = 'bullet_wear' },
  }

  if PlayerData.job.grade_name == 'cadet' then
    table.insert(elements, {label = _U('police_wear'), value = 'recruit_wear'})
  end

  if PlayerData.job.grade_name == 'officer1' or PlayerData.job.grade_name == 'officer2' or PlayerData.job.grade_name == 'officer3' then
    table.insert(elements, {label = _U('police_wear'), value = 'officer_wear'})
    table.insert(elements, {label = _U('motocykl_wear'), value = 'motocykl_wear'})
  end

  if PlayerData.job.grade_name == 'sergeant1' or PlayerData.job.grade_name == 'sergeant2' or PlayerData.job.grade_name == 'sergeant3' then
    table.insert(elements, {label = _U('police_wear'), value = 'sergeant_wear'})
    table.insert(elements, {label = _U('motocykl_wear'), value = 'motocykl_wear'})
  end
  
  if PlayerData.job.grade_name == 'Lieutenant1' or PlayerData.job.grade_name == 'Lieutenant2' or PlayerData.job.grade_name == 'Lieutenant3' then
    table.insert(elements, {label = _U('police_wear'), value = 'lieutenant_wear'})
    table.insert(elements, {label = _U('motocykl_wear'), value = 'motocykl_wear'})
  end

  if PlayerData.job.grade_name == 'captain1' or PlayerData.job.grade_name == 'captain2' or PlayerData.job.grade_name == 'captain3' then
    table.insert(elements, {label = _U('police_wear'), value = 'kapitan_wear'})
    table.insert(elements, {label = _U('motocykl_wear'), value = 'motocykl_wear'})
    table.insert(elements, {label = _U('dodatkowy_wear'), value = 'dodatkowy_wear'})
  end
  
  if PlayerData.job.grade_name == 'commander' or PlayerData.job.grade_name == 'chief1' or PlayerData.job.grade_name == 'chief2' or PlayerData.job.grade_name == 'chief3' or PlayerData.job.grade_name == 'boss' then
    table.insert(elements, {label = _U('motocykl_wear'), value = 'motocykl_wear'})
    table.insert(elements, {label = _U('dodatkowy_wear'), value = 'dodatkowy_wear'})
  end
 
  if PlayerData.job.grade_name == 'srecruit' then
    table.insert(elements, {label = _U('police_wear'), value = 'srecruit_wear'})
  end 
 
  if PlayerData.job.grade_name == 'sdeputy1' or PlayerData.job.grade_name == 'sdeputy2' or PlayerData.job.grade_name == 'sdeputy3' then
    table.insert(elements, {label = _U('police_wear'), value = 'srecruit1_wear'})
  end 
  
  if PlayerData.job.grade_name == 'scorporal' or PlayerData.job.grade_name == 'ssergeant' then
    table.insert(elements, {label = _U('police_wear'), value = 'srecruit2_wear'})
  end   

  if PlayerData.job.grade_name == 'slieutenant' then
    table.insert(elements, {label = _U('police_wear'), value = 'srecruit3_wear'})
  end     
  
  if PlayerData.job.grade_name == 'scaptain' or PlayerData.job.grade_name == 'scommander' then
    table.insert(elements, {label = _U('police_wear'), value = 'srecruit4_wear'})
  end 

  if PlayerData.job.grade_name == 'asheriff' or PlayerData.job.grade_name == 'usheriff' then
    table.insert(elements, {label = _U('police_wear'), value = 'srecruit5_wear'})
  end    
  
  if madostep == true then
    table.insert(elements, {label = _U('swat_wear'), value = 'swat_wear'})
  end


  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'cloakroom',
    {
      title    = _U('cloakroom'),
      align    = 'center',
      elements = elements,
    },
    function(data, menu)

      cleanPlayer(playerPed)

      if data.current.value == 'citizen_wear' then
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
          TriggerEvent('skinchanger:loadSkin', skin)
        end)
      end

      if
        data.current.value == 'recruit_wear' or
        data.current.value == 'officer_wear' or
        data.current.value == 'sergeant_wear' or
        data.current.value == 'lieutenant_wear' or
        data.current.value == 'k9_wear' or
        data.current.value == 'motocykl_wear' or
        data.current.value == 'doa_wear' or
        data.current.value == 'boss_wear' or
        data.current.value == 'srecruit_wear' or
        data.current.value == 'srecruit1_wear' or	
        data.current.value == 'srecruit2_wear' or	
        data.current.value == 'srecruit3_wear' or	
        data.current.value == 'srecruit4_wear' or
        data.current.value == 'srecruit5_wear' or										
        data.current.value == 'bullet_wear' or
        data.current.value == 'so_wear' or		
        data.current.value == 'dodatkowy_wear' or
        data.current.value == 'kapitan_wear' or
        data.current.value == 'gilet_wear'
      then
        setUniform(data.current.value, playerPed)
      end
      if data.current.value == 'swat_wear' then
        setUniform(data.current.value, playerPed)
        SetPedArmour(playerPed, 100)
      elseif data.current.value == 'm_wear' then
          setUniform(data.current.value, playerPed)
      elseif data.current.value == 'gu_wear' then
        setUniform(data.current.value, playerPed)
        SetPedArmour(playerPed, 50)
	  end

    if data.current.value == 'player_dressing' then

			ESX.TriggerServerCallback('root_property:getPlayerDressing', function(dressing)
				local elements = {}

				for i=1, #dressing, 1 do
					table.insert(elements, {
						label = dressing[i],
						value = i
					})
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'player_dressing', {
					title    = 'Ubrania z mieszkań',
					align    = 'center',
					elements = elements
				}, function(data2, menu2)
					TriggerEvent('skinchanger:getSkin', function(skin)
						ESX.TriggerServerCallback('esx_property:getPlayerOutfit', function(clothes)
							TriggerEvent('skinchanger:loadClothes', skin, clothes)
							TriggerEvent('esx_skin:setLastSkin', skin)

							TriggerEvent('skinchanger:getSkin', function(skin)
								TriggerServerEvent('esx_skin:save', skin)
							end)
						end, data2.current.value)
					end)
				end, function(data2, menu2)
					menu2.close()
				end)
      end)
    end
      
      if
        data.current.value == 'lieutenant_wear_freemode' or
        data.current.value == 'commandant_wear_freemode'
      then
        local model = nil
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
          if skin.sex == 0 then
            model = GetHashKey(data.current.maleModel)
          else
            model = GetHashKey(data.current.femaleModel)
          end
        end)
      
        RequestModel(model)
        while not HasModelLoaded(model) do
          RequestModel(model)
          Citizen.Wait(1500)
        end
      
        SetPlayerModel(PlayerId(), model)
        SetModelAsNoLongerNeeded(model)
      end

      CurrentAction     = 'menu_cloakroom'
      CurrentActionMsg  = _U('open_cloackroom')
      CurrentActionData = {}

    end,
    function(data, menu)
      menu.close()
      CurrentAction     = 'menu_cloakroom'
      CurrentActionMsg  = _U('open_cloackroom')
      CurrentActionData = {}
    end
  )
end

function OpenArmoryMenu(station)

  if Config.EnableArmoryManagement then
    ESX.TriggerServerCallback('esx_jobpolice:showdirtymoney', function(dirtymoney)
    local elements = {
      {label = _U('remove_object'),  value = 'get_stock'},
      {label = _U('deposit_object'), value = 'put_stock'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'armory',
      {
        title    = _U('armory'),
        align    = 'center',
        elements = elements,
      },
      function(data, menu)

        if data.current.value == 'get_weapon' then
          if PlayerData.job ~= nil and PlayerData.job.name == 'police' and PlayerData.job.grade_name == 'recruit' then
            ESX.ShowNotification('Masz za niską rangę w LSSD! (Poproś wyższej rangi)')
          else
            OpenGetWeaponMenu()
          end
        end

        if data.current.value == 'put_weapon' then
          OpenPutWeaponMenu()
        end

        if data.current.value == 'buy_weapons' then
          OpenBuyWeaponsMenu(station)
        end

        if data.current.value == 'put_stock' then
          OpenPutStocksMenu()
        end

        if data.current.value == 'get_stock' then
          if PlayerData.job ~= nil and PlayerData.job.name == 'police' and PlayerData.job.grade_name == 'recruit' then
            ESX.ShowNotification('Masz za niską rangę w LSSD! (Poproś wyższej rangi)')
          else
            OpenGetStocksMenu()
          end
        end
      end,
      function(data, menu)

        menu.close()

        CurrentAction     = 'menu_armory'
        CurrentActionMsg  = _U('open_armory')
        CurrentActionData = {station = station}
      end
    )
  end)

  else

    local elements = {
      {label = _U('put_weapon'),     value1 = 'put_weapon'},
      {label = _U('remove_object'),  value1 = 'get_stock'},
      {label = _U('deposit_object'), value1 = 'put_stock'},
    }

    if PlayerData.job.grade == 0 then
      table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
      table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
      table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
      table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
      table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'})  
    elseif PlayerData.job.grade == 1 then
      table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
      table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
      table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
      table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
      table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
	elseif PlayerData.job.grade == 2 then  
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
	elseif PlayerData.job.grade == 3 then  
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
  elseif PlayerData.job.grade == 4 then  
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
  elseif PlayerData.job.grade == 5 then
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
  elseif PlayerData.job.grade == 6 then
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
  elseif PlayerData.job.grade == 7 then
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
  elseif PlayerData.job.grade == 8 then
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
  elseif PlayerData.job.grade == 9 then
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
  elseif PlayerData.job.grade == 10 then
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
	elseif PlayerData.job.grade == 11 then
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
	elseif PlayerData.job.grade == 12 then
    table.insert(elements, {label = ('Pistolet Vintage'), value = 'vintagepistol'})  
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pukawka'), value = 'snspistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
	elseif PlayerData.job.grade == 13 then
    table.insert(elements, {label = ('Pistolet Vintage'), value = 'vintagepistol'})  
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pukawka'), value = 'snspistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'})  
	elseif PlayerData.job.grade == 14 then
    table.insert(elements, {label = ('Pistolet Vintage'), value = 'vintagepistol'})  
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pukawka'), value = 'snspistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'})  
   elseif PlayerData.job.grade == 15 then
    table.insert(elements, {label = ('Pistolet Vintage'), value = 'vintagepistol'})  
    table.insert(elements, {label = ('Pistolet Bojowy'), value = 'combatpistol'})  
    table.insert(elements, {label = ('Pukawka'), value = 'snspistol'})  
    table.insert(elements, {label = ('Pistolet'), value = 'pistol'})  
    table.insert(elements, {label = ('Latarka'), value = 'flashlight'})  
    table.insert(elements, {label = ('Palka Policyjna'), value = 'nightstick'})  
    table.insert(elements, {label = ('Tazer'), value = 'stungun'}) 
    table.insert(elements, {label = ('Amunicja'), value = 'pistol_ammo'}) 
    end

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'armory',
      {
        title    = _U('armory'),
        align    = 'center',
        elements = elements,
      },
      function(data, menu)
	  
        if data.current.value1 == 'put_stock' then
          if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
            OpenPutStocksMenu()
          else
            OpenPutStocksMenu()
          end
        end

        if data.current.value1 == 'get_stock' then
          if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
            OpenGetStocksMenu()
          else
            OpenGetStocksMenu()
          end
        end		
		
        if data.current.value1 == 'put_weapon' then
          if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
            OpenPutWeaponMenu()
          end
        end		
		
        local weapon = data.current.value
        TriggerServerEvent('esx_jobpolice:giveWeapon', weapon,  125)
        
      end,
      function(data, menu)

        menu.close()

        CurrentAction     = 'menu_armory'
        CurrentActionMsg  = _U('open_armory')
        CurrentActionData = {station = station}

      end
    )
  end
end

function AddVehicleKeys(vehicle)
  local localVehPlateTest = GetVehicleNumberPlateText(vehicle)
  if localVehPlateTest ~= nil then
    local localVehPlate = string.lower(localVehPlateTest)
    TriggerEvent("ls:newVehicle", localVehPlate, localVehId, localVehLockStatus)
    ESX.ShowNotification("Otrzymałeś kluczki do pojazdu ~b~LSSD")
  end
end

function OpenVehicleSpawnerMenu(station, partNum)
  ESX.TriggerServerCallback('sandy:sprawdzhexa', function(id)
    if id then
      for i=0, #dostep do
        if tostring(id) == tostring(dostep[i]) then
          madostep = true
        end
      end
    end
  end)


  local vehicles = Config.PoliceStations[station].Vehicles
  ESX.UI.Menu.CloseAll()
	local elements = {}
	for k,v in ipairs(Config.VehicleGroups[PlayerData.job.name]) do
		if v.license == nil then
			table.insert(elements, { label = v.label, value = k })
		else
			if HaveLicense(v.license) then
				table.insert(elements, { label = v.label, value = k })
			end
		end
	end
	
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_spawner', {
      title    = _U('vehicle_menu'),
      align    = 'center',
      elements = elements,
    }, function(data, menu)
        menu.close()
		if Config.VehicleGroups[PlayerData.job.name][data.current.value] then
			local elements2 = {}
			for _, vehicle in ipairs(Config.AuthorizedVehicles[PlayerData.job.name]) do
				local let = false
				for k,v in ipairs(vehicle.groups) do
					if v == data.current.value then	
						let = true				
						break
					end
				end

					if let then
						table.insert(elements2, { label = vehicle.label, model = vehicle.model, livery = vehicle.livery, offroad = vehicle.offroad, color = vehicle.color, extras = vehicle.extras, plate = vehicle.plate, tint = vehicle.tint, bulletproof = vehicle.bulletproof, tunning = vehicle.tunning })
					end
				end
		
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_spawner_vehicle', {
			  title    = data.current.label,
			  align    = 'center',
			  elements = elements2
			}, function(data2, menu2)
				local livery = data2.current.livery or false
				local offroad = data2.current.offroad or false
				local color = data2.current.color or false
				local extras = data2.current.extras or false
				local bulletproof = data2.current.bulletproof or false
				local tint = data2.current.tint or false
				local tunning = data2.current.tunning or false

				local setPlate = true
				if data2.current.plate ~= nil and not data2.current.plate then
					setPlate = false
				end

				local vehicle = GetClosestVehicle(vehicles[partNum].SpawnPoint.x,  vehicles[partNum].SpawnPoint.y,  vehicles[partNum].SpawnPoint.z, 3.0, 0, 71)
				if not DoesEntityExist(vehicle) then
				  local playerPed = PlayerPedId()
					ESX.Game.SpawnVehicle(data2.current.model, {
					  x = vehicles[partNum].SpawnPoint.x,
					  y = vehicles[partNum].SpawnPoint.y,
					  z = vehicles[partNum].SpawnPoint.z
					}, vehicles[partNum].Heading, function(vehicle)
					  SetVehicleMaxMods(vehicle, livery, offroad, color, extras, bulletproof, tint, tunning)
					  if setPlate then
						local plate
						if PlayerData.job.name == 'sheriff' then
							plate = "SHER " .. math.random(100,999)
						else
							plate = "LSSD " .. math.random(100,999)
						end
						SetVehicleNumberPlateText(vehicle, plate)
						TriggerEvent('ls:dodajklucze', GetVehicleNumberPlateText(vehicle))
					  else
						TriggerEvent('ls:dodajklucze', GetVehicleNumberPlateText(vehicle))
					  end
					  TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
					end)
				else
				  ESX.ShowNotification('Pojazd znaduje się w miejscu wyciągnięcia następnego')
				end
			end,
			function(data2, menu2)
				menu.close()
				OpenVehicleSpawnerMenu(station, partNum)
			end)
		end
    end,
    function(data, menu)
      menu.close()

      CurrentAction     = 'menu_vehicle_spawner'
      CurrentActionData = {station = station, partNum = partNum}
    end)
end
function OpenPoliceActionsMenu()
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), 'police_actions',
	{
		title    = 'LSSD',
		align    = 'center',
		elements = {
      {label = _U('citizen_interaction'), value = 'citizen_interaction'},
			{label = _U('vehicle_interaction'),	value = 'vehicle_interaction'},
      {label = _U('object_spawner'),		value = 'object_spawner'},
      {label = "Pokaż odznake",			value = 'odznaka'}
		}
  }, function(data, menu)
    
    if data.current.value == 'lornetka' then
      TriggerEvent('jumelles:Active')
      menu.close()
    end

    if data.current.value == 'odznaka' then
      TriggerServerEvent('odznaka')
      menu.close()
    end

		if data.current.value == 'citizen_interaction' then
			local elements = {
				{label = _U('search'),			value = 'body_search'},
				{label = _U('handcuff'),		value = 'handcuff'},
				{label = _U('drag'),			value = 'drag'},
				{label = _U('put_in_vehicle'),	value = 'put_in_vehicle'},
				{label = _U('out_the_vehicle'),	value = 'out_the_vehicle'},
				{label = 'Wydaj licencje', value = 'license1'},
        {label = _U('license_check'), value = 'license'}

			}
								
			ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'citizen_interaction',
			{
				title    = _U('citizen_interaction'),
				align    = 'center',
				elements = elements
			}, function(data2, menu2)
				local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
        if closestPlayer ~= -1 and closestDistance <= 2.0 then
          local closestPed = GetPlayerPed(closestPlayer)
				local action = data2.current.value
				  if action == 'identity_card' then
						OpenIdentityCardMenu(closestPlayer)
          elseif action == 'body_search' then
                  OpenBodySearchMenu(closestPlayer)
          elseif action == 'handcuff' then
            ESX.ShowNotification('~o~Zakułeś/Rozkułeś ~b~' .. GetPlayerServerId(closestPlayer))
                  TriggerServerEvent('esx_jobpolice:handcuff', GetPlayerServerId(closestPlayer))
          elseif action == 'drag' then
            if IsPedCuffed(GetPlayerPed(closestPlayer)) or IsPlayerDead(closestPlayer) then
              ESX.ShowNotification('~o~Przenosisz obywatela ~b~' .. GetPlayerServerId(closestPlayer))
              TriggerServerEvent('esx_jobpolice:drag', GetPlayerServerId(closestPlayer))
            else
              ESX.ShowNotification("~r~Najpierw musisz zakuć obywatela.")
            end
          elseif action == 'put_in_vehicle' then
            ESX.ShowNotification('~o~Wsadzasz do pojazdu ~b~' .. GetPlayerServerId(closestPlayer))
            TriggerServerEvent('esx_jobpolice:putInVehicle', GetPlayerServerId(closestPlayer))
          elseif action == 'out_the_vehicle' then
            ESX.ShowNotification('~o~Wyciągasz z pojazdu ~b~' .. GetPlayerServerId(closestPlayer))
            TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
					elseif action == 'jail' then
						JailPlayer(GetPlayerServerId(closestPlayer))
						if data2.current.value == 'identity_card' then
 					   OpenIdentityCardMenu(player)
						end
					elseif action == 'license' then
					ShowPlayerLicense(closestPlayer)
					elseif action == 'license1' then
            if PlayerData.job.name == 'police' and PlayerData.job.grade >= 10 then
              TriggerServerEvent('esx_jobpolice:DajLicencje', GetPlayerServerId(closestPlayer))
              Citizen.Wait(1500)
              TriggerServerEvent('esx_weashop:ladujlicke', GetPlayerServerId(closestPlayer))
            else
              ESX.ShowNotification("~r~Nie mozesz wydawac licencji")
            end
          elseif action == 'gsr_test' then
            if IsPedCuffed(GetPlayerPed(closestPlayer)) then
              ESX.ShowNotification("~y~Sprawdzanie dłoni pod kątem prochu...")
              Citizen.Wait(1500)
              TriggerServerEvent('esx_gsr:Check', GetPlayerServerId(closestPlayer))
            else
              ESX.ShowNotification("~r~Najpierw musisz zakuć obywatela.")
            end
					end
				else
					ESX.ShowNotification('Brak graczy w ~r~pobliżu!')
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		elseif data.current.value == 'vehicle_interaction' then
			local elements = {}
			local playerPed = PlayerPedId()
			local coords    = GetEntityCoords(playerPed)
			local vehicle   = ESX.Game.GetVehicleInDirection()
			
			if DoesEntityExist(vehicle) then
				table.insert(elements, {label = _U('vehicle_info'),	value = 'vehicle_infos'})
				table.insert(elements, {label = _U('pick_lock'),	value = 'hijack_vehicle'})
				table.insert(elements, {label = _U('impound'),		value = 'impound'})
			else
				ESX.ShowNotification("~r~Nie znaleziono samochodu")
      end

			ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'vehicle_interaction',
			{
				title    = _U('vehicle_interaction'),
				align    = 'center',
				elements = elements
			}, function(data2, menu2)
				coords    = GetEntityCoords(playerPed)
				vehicle   = ESX.Game.GetVehicleInDirection()
				action    = data2.current.value
				
				if action == 'search_database' then
					LookupVehicle()
				elseif DoesEntityExist(vehicle) then
					local vehicleData = ESX.Game.GetVehicleProperties(vehicle)
					if action == 'vehicle_infos' then
						OpenVehicleInfosMenu(vehicleData)
						
					elseif action == 'hijack_vehicle' then
						if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 3.0) then
							TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_WELDING", 0, true)
							Citizen.Wait(25000)
							ClearPedTasksImmediately(playerPed)

							SetVehicleDoorsLocked(vehicle, 1)
							SetVehicleDoorsLockedForAllPlayers(vehicle, false)
							ESX.ShowNotification(_U('vehicle_unlocked'))
            end
					elseif action == 'impound' then
						if CurrentTask.Busy then
							return
						end

						ESX.ShowHelpNotification(_U('impound_prompt'))
						TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)

						CurrentTask.Busy = true
						CurrentTask.Task = ESX.SetTimeout(10000, function()
							ClearPedTasks(playerPed)
							TriggerEvent('esx_jobpolice:takeVehicle')
							Citizen.Wait(200)
						end)

						Citizen.CreateThread(function()
							while CurrentTask.Busy do
								Citizen.Wait(1500)

								vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 3.0, 0, 71)
								if not DoesEntityExist(vehicle) and CurrentTask.Busy then
									ESX.ShowNotification(_U('impound_canceled_moved'))
									ESX.ClearTimeout(CurrentTask.Task)
									ClearPedTasks(playerPed)
									CurrentTask.Busy = false
									break
								end
							end
						end)
					end
				else
					ESX.ShowNotification(_U('no_vehicles_nearby'))
				end

			end, function(data2, menu2)
				menu2.close()
			end
      )

    elseif data.current.value == 'Dodatki' then
			ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'citizen_interaction',
			{
				title    = 'Dodatki do broni',
				align    = 'center',
				elements = {
					{label = 'Latarka taktyczna',		value = 'Latarka'},
				}
			}, function(data2, menu2)
				local model     = data2.current.value

				if model == 'Latarka' then
          TriggerEvent('esx_attachments_bleiker:flashlight')
          menu2.close()
        end
      end)

		elseif data.current.value == 'object_spawner' then
			menu.close()
			ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'citizen_interaction',
			{
				title    = _U('traffic_interaction'),
				align    = 'center',
				elements = {
					{label = _U('cone'),		value = 'prop_roadcone02a'},
					{label = _U('barrier'),		value = 'prop_barrier_work05'},
					{label = _U('spikestrips'),	value = 'p_ld_stinger_s'}
				}
			}, function(data2, menu2)
				local playerPed = PlayerPedId()
				local coords    = GetEntityCoords(playerPed)
				local forward   = GetEntityForwardVector(playerPed)
				local x, y, z   = table.unpack(coords + forward * 1.0)

				local model     = data2.current.value
				if model == 'prop_roadcone02a' then
					z = z - 1.0
				end

				ESX.Game.SpawnObject(model, {
					x = x,
					y = y,
					z = z
				}, function(obj)
					SetEntityHeading(obj, GetEntityHeading(playerPed))
          PlaceObjectOnGroundProperly(obj)
          if model == 'prop_barrier_work05' then
						FreezeEntityPosition(obj, true)
					end
				end)

			end, function(data2, menu2)
				menu2.close()
				menu.open()
			end)
		end

	end, function(data, menu)
		menu.close()
	end)
end

RegisterNetEvent('esx_jobpolice:playAnim')
AddEventHandler('esx_jobpolice:playAnim', function(dict, anim)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(5)
	end
	TaskPlayAnim(PlayerPedId(), dict, anim, 8.0, -8.0, -1, 49, 0, false, false, false)
end)

function OpenBodySearchMenu(player)
	ESX.UI.Menu.CloseAll()
	ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)

		local elements = {}

		for i=1, #data.accounts, 1 do

			if data.accounts[i].name == 'black_money' and data.accounts[i].money > 0 then

				table.insert(elements, {
					label    = _U('confiscate_dirty', ESX.Round(data.accounts[i].money)),
					value    = 'black_money',
					itemType = 'item_account',
					amount   = data.accounts[i].money
				})

				break
			end

		end

		table.insert(elements, {label = _U('inventory_label'), value = nil})

		for i=1, #data.inventory, 1 do
			if data.inventory[i].count > 0 then
				table.insert(elements, {
					label    = _U('confiscate_inv', data.inventory[i].count, data.inventory[i].label),
					value    = data.inventory[i].name,
					itemType = 'item_standard',
					amount   = data.inventory[i].count
				})
			end
		end


		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'body_search',
		{
			title    = _U('search'),
			align    = 'center',
			elements = {label = _U('inventory_label'), value = nil},
		},
		function(data, menu)

			local itemType = data.current.itemType
			local itemName = data.current.value
			local amount   = data.current.amount

			if data.current.value ~= nil then
				TriggerServerEvent('esx_policejob:confiscatePlayerItem', GetPlayerServerId(player), itemType, itemName, amount)
				OpenBodySearchMenu(player)
			end

		end, function(data, menu)
			menu.close()
		end)

	end, GetPlayerServerId(player))

end


function LookupVehicle()
	ESX.UI.Menu.Open(
	'dialog', GetCurrentResourceName(), 'lookup_vehicle',
	{
		title = _U('search_database_title'),
	}, function (data, menu)
		local length = string.len(data.value)
		if data.value == nil or length < 8 or length > 13 then
			ESX.ShowNotification(_U('search_database_error_invalid'))
		else
			ESX.TriggerServerCallback('esx_jobpolice:getVehicleFromPlate', function(owner, found)
				if found then
					ESX.ShowNotification(_U('search_database_found', owner))
				else
					ESX.ShowNotification(_U('search_database_error_not_found'))
				end
			end, data.value)
			menu.close()
		end
	end, function (data, menu)
		menu.close()
	end
	)
end

function ShowPlayerLicense(player)
	local elements = {}
	ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)
		if data.licenses ~= nil then
			for i=1, #data.licenses, 1 do
				if data.licenses[i].label ~= nil and data.licenses[i].type ~= nil then
					table.insert(elements, {label = data.licenses[i].label, value = data.licenses[i].type})
				end
			end
		end
    
    local targetName = data.firstname .. ' ' .. data.lastname
		ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'manage_license',
		{
			title    = _U('license_revoke'),
			align    = 'center',
			elements = elements,
		},
		function(data, menu)
			ESX.ShowNotification(_U('licence_you_revoked', data.current.label, targetName))
			TriggerServerEvent('esx_jobpolice:message', GetPlayerServerId(player), _U('license_revoked', data.current.label))
			
			TriggerServerEvent('esx_license:removeLicense', GetPlayerServerId(player), data.current.value)
			
			ESX.SetTimeout(300, function()
				ShowPlayerLicense(player)
			end)
		end,
		function(data, menu)
			menu.close()
		end
		)

	end, GetPlayerServerId(player))
end
function DajLicencje(player)

		TriggerServerEvent('esx_jobpolice:DajLicencje')


end

function OpenVehicleInfosMenu(vehicleData)

  ESX.TriggerServerCallback('esx_jobpolice:getVehicleInfos', function(infos)

    local elements = {}

    table.insert(elements, {label = _U('plate', infos.plate), value = nil})

    if infos.owner == nil then
      table.insert(elements, {label = _U('owner_unknown'), value = nil})
    else
      table.insert(elements, {label = _U('owner', infos.owner), value = nil})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'vehicle_infos',
      {
        title    = _U('vehicle_info'),
        align    = 'center',
        elements = elements,
      },
      nil,
      function(data, menu)
        menu.close()
      end
    )

  end, vehicleData.plate)

end

function OpenGetWeaponMenu()

  ESX.TriggerServerCallback('esx_jobpolice:getArmoryWeapons', function(weapons)

    local elements = {}

    for i=1, #weapons, 1 do
      if weapons[i].count > 0 then
        table.insert(elements, {label = 'x' .. weapons[i].count .. ' ' .. ESX.GetWeaponLabel(weapons[i].name), value = weapons[i].name})
      end
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'armory_get_weapon',
      {
        title    = _U('get_weapon_menu'),
        align    = 'center',
        elements = elements,
      },
      function(data, menu)

        menu.close()

        ESX.TriggerServerCallback('esx_jobpolice:removeArmoryWeapon', function()
          OpenGetWeaponMenu()
        end, data.current.value)

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function OpenPutWeaponMenu()

  local elements   = {}
  local playerPed  = PlayerPedId()
  local weaponList = ESX.GetWeaponList()

  for i=1, #weaponList, 1 do

    local weaponHash = GetHashKey(weaponList[i].name)

    if HasPedGotWeapon(playerPed,  weaponHash,  false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
      table.insert(elements, {label = weaponList[i].label, value = weaponList[i].name})
    end

  end

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'armory_put_weapon',
    {
      title    = _U('put_weapon_menu'),
      align    = 'center',
      elements = elements,
    },
    function(data, menu)

      menu.close()
	words = {'PISTOL', 'COMBATPISTOL', 'SNSPISTOL', 'VINTAGEPISTOL', 'ASSULTRIFLE', 'STUNGUN', 'FLASHLIGHT', 'NIGHTSTICK'}
	items = {'pistol', 'combatpistol', 'snspistol', 'vintagepistol', 'assaultrifle', 'stungun', 'flashlight', 'nightstick'}
	size = 0
	for _ in pairs(words) do size = size + 1 end
		for i = size, 1, -1 do 
			if string.match(data.current.value, 'WEAPON_'..words[i]) then
   				TriggerServerEvent('esx_jobpolice:UsunBron', items[i]) 
			end
		end
        OpenPutWeaponMenu()


    end,
    function(data, menu)
      menu.close()
    end
  )

end



Citizen.CreateThread(function()
  while true do
    Citizen.Wait(5)
      while ininstance do
    Citizen.Wait(5)
    DisableControlAction(0,24,true) -- disable attack
        DisableControlAction(0,25,true) -- disable aim
        DisableControlAction(0,47,true) -- disable weapon
        DisableControlAction(0,58,true) -- disable weapon
        DisableControlAction(0,263,true) -- disable melee
        DisableControlAction(0,264,true) -- disable melee
        DisableControlAction(0,257,true) -- disable melee
        DisableControlAction(0,140,true) -- disable melee
        DisableControlAction(0,141,true) -- disable melee
        DisableControlAction(0,142,true) -- disable melee
      DisableControlAction(0,143,true) -- disable melee
    end
    end
  end)



function OpenGetStocksMenu()

  ESX.TriggerServerCallback('esx_jobpolice:getStockItems', function(items)


    local elements = {}

    for i=1, #items, 1 do
      if items[i].count > 0 then
      table.insert(elements, {label = 'x' .. items[i].count .. ' ' .. items[i].label, value = items[i].name})
    end
  end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = _U('police_stock'),
        align = 'center',
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('quantity_invalid'))
            else
              menu2.close()
              menu.close()
              OpenGetStocksMenu()

              TriggerServerEvent('esx_jobpolice:getStockItem', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function OpenPutStocksMenu()

  ESX.TriggerServerCallback('esx_jobpolice:getPlayerInventory', function(inventory)

    local elements = {}

    for i=1, #inventory.items, 1 do

      local item = inventory.items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end

    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = _U('inventory'),
        align = 'center',
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('quantity_invalid'))
            else
              menu2.close()
              menu.close()
              OpenPutStocksMenu()

              TriggerServerEvent('esx_jobpolice:putStockItems', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	
	Citizen.Wait(5000)
	TriggerServerEvent('esx_jobpolice:forceBlip')
end)

AddEventHandler('esx_jobpolice:hasEnteredMarker', function(station, part, partNum)

  if part == 'Cloakroom' then
    CurrentAction     = 'menu_cloakroom'
    CurrentActionMsg  = _U('open_cloackroom')
    CurrentActionData = {}
  end

  if part == 'Info' then
    CurrentAction     = 'menu_info'
    CurrentActionMsg  = 'Naciśnij ~INPUT_CONTEXT~ aby zobaczyć tablicę informacyjną'
    CurrentActionData = {}
  end

  if part == 'Armory' then
    CurrentAction     = 'menu_armory'
    CurrentActionMsg  = _U('open_armory')
    CurrentActionData = {station = station}
  end

  if part == 'VehicleSpawner' then
    CurrentAction     = 'menu_vehicle_spawner'
    CurrentActionMsg  = _U('vehicle_spawner')
    CurrentActionData = {station = station, partNum = partNum}
  end

  if part == 'VehicleDeleter' then

    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)

    if IsPedInAnyVehicle(playerPed,  false) then

      local vehicle = GetVehiclePedIsIn(playerPed, false)

      if DoesEntityExist(vehicle) then
        CurrentAction     = 'delete_vehicle'
        CurrentActionMsg  = _U('store_vehicle')
        CurrentActionData = {vehicle = vehicle}
      end

    end

  end

  if part == 'BossActions' then
    CurrentAction     = 'menu_boss_actions'
    CurrentActionMsg  = _U('open_bossmenu')
    CurrentActionData = {}
  end

end)

AddEventHandler('esx_jobpolice:hasExitedMarker', function(station, part, partNum)
  ESX.UI.Menu.CloseAll()
  CurrentAction = nil
end)

RegisterNetEvent('esx_jobpolice:handcuff')
AddEventHandler('esx_jobpolice:handcuff', function()
  local playerPed = PlayerPedId()
local closestPlayer = ESX.Game.GetClosestPlayer()
	IsHandcuffed = not IsHandcuffed
	sdkjahjsdhsja = true
  ESX.ShowNotification('~o~Zakuty/Rozkuty przez ~b~' .. GetPlayerServerId(closestPlayer))
	local playerPed = PlayerPedId()
	CreateThread(function()
    if IsHandcuffed then
			RequestAnimDict('mp_arresting')
			while not HasAnimDictLoaded('mp_arresting') do
				Citizen.Wait(1)
			end

			TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8.0, -1, 49, 0.0, 0, 0, 0)

			ESX.UI.Menu.CloseAll()

			SetCurrentPedWeapon(playerPed, `WEAPON_UNARMED`, true) 
			DisablePlayerFiring(playerPed, true)
			SetEnableHandcuffs(playerPed, true)

			SetPedCanPlayGestureAnims(playerPed, false)
			if Config.EnableHandcuffTimer then
				StartHandcuffTimer()
			end		
    else
			ClearPedTasksImmediately(playerPed)
			if Config.EnableHandcuffTimer and HandcuffTimer then
				ESX.ClearTimeout(HandcuffTimer)
			end

			SetEnableHandcuffs(playerPed, false)
			DisablePlayerFiring(playerPed, false)
			SetPedCanPlayGestureAnims(playerPed, true)

		end
	end)
end)

RegisterNetEvent('esx_jobpolice:unrestrain')
AddEventHandler('esx_jobpolice:unrestrain', function()
  local playerPed = PlayerPedId()
    
  Citizen.CreateThread(function()
    if IsHandcuffed then

      IsHandcuffed = false

      local x,y,z = table.unpack(GetEntityCoords(playerPed))
      ClearPedSecondaryTask(playerPed)
      if Config.EnableHandcuffTimer and HandcuffTimer then
        ESX.ClearTimeout(HandcuffTimer)
      end
		  SetEnableHandcuffs(playerPed, false)
		  DisablePlayerFiring(playerPed, false)
		  SetPedCanPlayGestureAnims(playerPed, true)
		  FreezeEntityPosition(playerPed, false)
		  DisplayRadar(true)

		end
  end)
  
end)

RegisterNetEvent('esx_jobpolice:animacja')
AddEventHandler('esx_jobpolice:animacja', function()
  RequestAnimDict('mp_arresting')
  while not HasAnimDictLoaded('mp_arresting') do
      Citizen.Wait(5)
  end
  TaskPlayAnim(GetPlayerPed(-1), 'mp_arresting', 'a_uncuff', 1.0, -3.0, 1500, 0, 0, false, false, false)
end)

RegisterNetEvent('esx_jobpolice:drag')
AddEventHandler('esx_jobpolice:drag', function(cop)
	IsDragged = not IsDragged
	CopPed = tonumber(cop)
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		if IsHandcuffed then
			if IsDragged then
				local ped = GetPlayerPed(GetPlayerFromServerId(CopPed))
				local myped = PlayerPedId()
				AttachEntityToEntity(myped, ped, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
			else
				DetachEntity(PlayerPedId(), true, false)
			end
		else
			Citizen.Wait(500)
		end
	end
end)

RegisterNetEvent('esx_jobpolice:putInVehicle')
AddEventHandler('esx_jobpolice:putInVehicle', function()
  if IsHandcuffed then
    local playerPed = PlayerPedId()

	local vehicle = nil
	if IsPedInAnyVehicle(playerPed, false) then
		vehicle = GetVehiclePedIsIn(playerPed, false)
	else
		vehicle = ESX.Game.GetVehicleInDirection()
		if not vehicle then
			local coords = GetEntityCoords(playerPed, false)
			if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
			  vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
			end
		end
	end

	if vehicle and vehicle ~= 0 then
	    local maxSeats = math.min(4, GetVehicleMaxNumberOfPassengers(vehicle))
		if maxSeats >= 0 then
			local freeSeat
			for i = (maxSeats - 2), 0, -1 do
			  if IsVehicleSeatFree(vehicle, i) then
				freeSeat = i
				break
			  end
			end

			if freeSeat ~= nil then
			  TaskWarpPedIntoVehicle(playerPed, vehicle, freeSeat)
			  IsDragged = false
			end
		end
    end
  end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		if IsHandcuffed then
			if IsFirstHandcuffTick then
				IsFirstHandcuffTick = false
				ESX.UI.Menu.CloseAll()
			end

			DisableControlAction(2, 24, true)
			DisableControlAction(2, 257, true)
			DisableControlAction(2, 25, true)
			DisableControlAction(2, 263, true)
			DisableControlAction(2, Keys['R'], true)
			DisableControlAction(2, Keys['TOP'], true)
			DisableControlAction(2, Keys['SPACE'], true)
			DisableControlAction(2, Keys['Q'], true)
			DisableControlAction(2, Keys['X'], true)
			DisableControlAction(2, Keys['Y'], true)
			DisableControlAction(2, Keys['PAGEDOWN'], true)
			DisableControlAction(2, Keys['B'], true)
			DisableControlAction(2, Keys['TAB'], true)
			DisableControlAction(2, Keys['F1'], true)
			DisableControlAction(2, Keys['F2'], true)
			DisableControlAction(2, Keys['F3'], true)
			DisableControlAction(2, Keys['F6'], true)
			DisableControlAction(2, Keys['V'], true)
			DisableControlAction(2, Keys['P'], true)
			DisableControlAction(2, 59, true)
			DisableControlAction(2, Keys['LEFTCTRL'], true)
			DisableControlAction(0, 47, true)
			DisableControlAction(0, 264, true)
			DisableControlAction(0, 257, true)
			DisableControlAction(0, 140, true)
			DisableControlAction(0, 141, true)
			DisableControlAction(0, 142, true)
			DisableControlAction(0, 143, true)

			local playerPed = PlayerPedId()
			if IsPedInAnyPoliceVehicle(playerPed) then
				DisableControlAction(0, 75, true)
				DisableControlAction(27, 75, true)
			end

			RequestAnimDict('mp_arresting')
            while not HasAnimDictLoaded('mp_arresting') do
                Citizen.Wait(5)
            end

            if not IsEntityPlayingAnim(playerPed, 'mp_arresting', 'idle', 3) then
				TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, 1.0, -1, 49, 1.0, 0, 0, 0)
            end
		else
			IsFirstHandcuffTick = true
			Citizen.Wait(500)
		end
	end
end)

Citizen.CreateThread(function()
  while true do

    Wait(5)

      local playerPed = PlayerPedId()
      local coords    = GetEntityCoords(playerPed)

      for k,v in pairs(Config.PoliceStations) do

        for i=1, #v.Info, 1 do
          if GetDistanceBetweenCoords(coords,  v.Info[i].x,  v.Info[i].y,  v.Info[i].z,  true) < Config.DrawDistance then
            DrawMarker(Config.MarkerType, v.Info[i].x, v.Info[i].y, v.Info[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
          end
        end

        if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

          for i=1, #v.Cloakrooms, 1 do
            if GetDistanceBetweenCoords(coords,  v.Cloakrooms[i].x,  v.Cloakrooms[i].y,  v.Cloakrooms[i].z,  true) < Config.DrawDistance then
              DrawMarker(Config.MarkerType, v.Cloakrooms[i].x, v.Cloakrooms[i].y, v.Cloakrooms[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
            end
          end

          for i=1, #v.Armories, 1 do
            if GetDistanceBetweenCoords(coords,  v.Armories[i].x,  v.Armories[i].y,  v.Armories[i].z,  true) < Config.DrawDistance then
              DrawMarker(Config.MarkerType, v.Armories[i].x, v.Armories[i].y, v.Armories[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
            end
          end

          for i=1, #v.Vehicles, 1 do
            if GetDistanceBetweenCoords(coords,  v.Vehicles[i].Spawner.x,  v.Vehicles[i].Spawner.y,  v.Vehicles[i].Spawner.z,  true) < Config.DrawDistance then
              DrawMarker(Config.MarkerType, v.Vehicles[i].Spawner.x, v.Vehicles[i].Spawner.y, v.Vehicles[i].Spawner.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.0, 0, 163, 10, 100, false, true, 2, false, false, false, false)
            end
          end

          for i=1, #v.VehicleDeleters, 1 do
            if IsPedInAnyVehicle(playerPed,  false) then
              if GetDistanceBetweenCoords(coords,  v.VehicleDeleters[i].x,  v.VehicleDeleters[i].y,  v.VehicleDeleters[i].z,  true) < Config.DrawDistance then
                DrawMarker(Config.MarkerType, v.VehicleDeleters[i].x, v.VehicleDeleters[i].y, v.VehicleDeleters[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.5, 211, 14, 4, 100, false, true, 2, false, false, false, false)
              end
            end
          end

        if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.name == 'police' and PlayerData.job.grade_name == 'boss' then

          for i=1, #v.BossActions, 1 do
            if not v.BossActions[i].disabled and GetDistanceBetweenCoords(coords,  v.BossActions[i].x,  v.BossActions[i].y,  v.BossActions[i].z,  true) < Config.DrawDistance then
              DrawMarker(22, v.BossActions[i].x, v.BossActions[i].y, v.BossActions[i].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.0, 45, 196, 247, 100, 1, false, true, 2, false, false, false, false)
            end
          end

        end

      end

    end

  end
end)

Citizen.CreateThread(function()

  while true do

    Wait(5)

      local playerPed      = PlayerPedId()
      local coords         = GetEntityCoords(playerPed)
      local isInMarker     = false
      local currentStation = nil
      local currentPart    = nil
      local currentPartNum = nil

      for k,v in pairs(Config.PoliceStations) do

        for i=1, #v.Info, 1 do
          if GetDistanceBetweenCoords(coords,  v.Info[i].x,  v.Info[i].y,  v.Info[i].z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'Info'
            currentPartNum = i
          end
        end

        if PlayerData.job ~= nil and PlayerData.job.name == 'police' then

        for i=1, #v.Cloakrooms, 1 do
          if GetDistanceBetweenCoords(coords,  v.Cloakrooms[i].x,  v.Cloakrooms[i].y,  v.Cloakrooms[i].z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'Cloakroom'
            currentPartNum = i
          end
        end

        for i=1, #v.Armories, 1 do
          if GetDistanceBetweenCoords(coords,  v.Armories[i].x,  v.Armories[i].y,  v.Armories[i].z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'Armory'
            currentPartNum = i
          end
        end

        for i=1, #v.Vehicles, 1 do

          if GetDistanceBetweenCoords(coords,  v.Vehicles[i].Spawner.x,  v.Vehicles[i].Spawner.y,  v.Vehicles[i].Spawner.z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'VehicleSpawner'
            currentPartNum = i
          end

          if GetDistanceBetweenCoords(coords,  v.Vehicles[i].SpawnPoint.x,  v.Vehicles[i].SpawnPoint.y,  v.Vehicles[i].SpawnPoint.z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'VehicleSpawnPoint'
            currentPartNum = i
          end

        end

        for i=1, #v.VehicleDeleters, 1 do
          if GetDistanceBetweenCoords(coords,  v.VehicleDeleters[i].x,  v.VehicleDeleters[i].y,  v.VehicleDeleters[i].z,  true) < Config.MarkerSize.x then
            isInMarker     = true
            currentStation = k
            currentPart    = 'VehicleDeleter'
            currentPartNum = i
          end
        end

        if(GetDistanceBetweenCoords(coords, MiejsceSkin.x, MiejsceSkin.y, MiejsceSkin.z, true) < 1.0) then
          isInMarker  = true
        end

        if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.name == 'police' and PlayerData.job.grade_name == 'boss' then

          for i=1, #v.BossActions, 1 do
            if GetDistanceBetweenCoords(coords,  v.BossActions[i].x,  v.BossActions[i].y,  v.BossActions[i].z,  true) < Config.MarkerSize.x then
              isInMarker     = true
              currentStation = k
              currentPart    = 'BossActions'
              currentPartNum = i
            end
          end

        end

      end

      local hasExited = false

      if isInMarker and not HasAlreadyEnteredMarker or (isInMarker and (LastStation ~= currentStation or LastPart ~= currentPart or LastPartNum ~= currentPartNum) ) then

        if
          (LastStation ~= nil and LastPart ~= nil and LastPartNum ~= nil) and
          (LastStation ~= currentStation or LastPart ~= currentPart or LastPartNum ~= currentPartNum)
        then
          TriggerEvent('esx_jobpolice:hasExitedMarker', LastStation, LastPart, LastPartNum)
          hasExited = true
        end

        HasAlreadyEnteredMarker = true
        LastStation             = currentStation
        LastPart                = currentPart
        LastPartNum             = currentPartNum

        TriggerEvent('esx_jobpolice:hasEnteredMarker', currentStation, currentPart, currentPartNum)
      end

      if not hasExited and not isInMarker and HasAlreadyEnteredMarker then

        HasAlreadyEnteredMarker = false

        TriggerEvent('esx_jobpolice:hasExitedMarker', LastStation, LastPart, LastPartNum)
        isindressingmenu = false
      end

    end

  end
end)

Citizen.CreateThread(function()
  while true do
    if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
      local playerPed = PlayerPedId()
	  if not IsPedInAnyVehicle(playerPed, false) then
        local coords = GetEntityCoords(playerPed)

        local found = false
	    for _, prop in ipairs({
          'prop_roadcone02a',
          'prop_barrier_work05',
          'p_ld_stinger_s'
        }) do
          local object = GetClosestObjectOfType(coords.x,  coords.y,  coords.z,  2.0,  GetHashKey(prop), false, false, false)
          if DoesEntityExist(object) then
            CurrentAction     = 'remove_entity'
            CurrentActionMsg  = _U('remove_prop')
            CurrentActionData = {entity = object}
		    found = true
		    break
          end
        end

	    if not found and CurrentAction == 'remove_entity' then
          CurrentAction = nil
        end

	    Citizen.Wait(150)
      else
        Citizen.Wait(1500)
	  end
    else
      Citizen.Wait(1500)
    end
  end
end)

Citizen.CreateThread(function()
	local object
	while true do
		Citizen.Wait(250)
		local coords = GetEntityCoords(PlayerPedId())

		local pass = false
		if not object or object == 0 then
			pass = true
		elseif not DoesEntityExist(object) or #(coords - GetEntityCoords(object)) > 30.0 then
			pass = true
		end

		if pass then
			object = GetClosestObjectOfType(coords.x, coords.y, coords.z, 30.0, 'p_ld_stinger_s', false, false, false)
		end

		if object and object ~= 0 then
			for _, vehicle in ipairs(ESX.Game.GetVehicles()) do
				local position = GetEntityCoords(vehicle)
				if #(position - coords) <= 30.0 then
					local closest = GetClosestObjectOfType(position.x, position.y, position.z, 1.5, 'p_ld_stinger_s', false, false, false)
					if closest and closest ~= 0 then
						for i = 0, 7 do
							if not IsVehicleTyreBurst(vehicle, i, true) then
								SetVehicleTyreBurst(vehicle, i, true, 1000)
							end
						end
					end
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
  local timer = GetGameTimer()
	while true do

		Citizen.Wait(5)

		if CurrentAction ~= nil then
			SetTextComponentFormat('STRING')
			AddTextComponentString(CurrentActionMsg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)
    
      if IsControlJustReleased(0, Keys['E']) then
        if CurrentAction == 'menu_info' then
          local count = exports['esx_scoreboard']:counter('police')
          ESX.ShowNotification('~b~Ilość funkcjonariuszy na służbie: ~w~' .. count)
        elseif PlayerData.job ~= nil and (PlayerData.job.name == 'police' or PlayerData.job.name == 'offpolice') then
          if CurrentAction == 'menu_cloakroom' then
            OpenCloakroomMenu()
          elseif (PlayerData.job.name == 'police' or (PlayerData.job.name == 'offpolice' and PlayerData.job.grade_name == 'boss')) and CurrentAction == 'menu_boss_actions' then
            ESX.UI.Menu.CloseAll()
            bossmenubotak()
          elseif CurrentAction == 'menu_vehicle_spawner' then
            OpenVehicleSpawnerMenu(CurrentActionData.station, CurrentActionData.partNum)
            elseif CurrentAction == 'delete_vehicle' then
              ESX.Game.DeleteVehicle(CurrentActionData.vehicle)
          elseif PlayerData.job.name == 'police' then
            if CurrentAction == 'menu_armory' then
              OpenArmoryMenu(CurrentActionData.station)
            elseif CurrentAction == 'remove_entity' then
              ESX.Game.DeleteObject(CurrentActionData.entity)
            end
          end
        end
        
        CurrentAction = nil
      end
    end
		
	if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'police' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') then
		OpenPoliceActionsMenu()
	end
    end
end)

AddEventHandler('playerSpawned', function(spawn)
	isDead = false
	TriggerEvent('esx_jobpolice:unrestrain')
	
	if not hasAlreadyJoined then
		TriggerServerEvent('esx_jobpolice:spawned')
	end
	hasAlreadyJoined = true
end)

AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('esx_jobpolice:unrestrain')
	end
end)

function ImpoundVehicle(vehicle)
	ESX.Game.DeleteVehicle(vehicle)
	ESX.ShowNotification(_U('impound_successful'))
  CurrentTask.Task = false
  CurrentTask.Busy = false
end

RegisterNetEvent('esx_jobpolice:kajdanki')
AddEventHandler('esx_jobpolice:kajdanki', function()
  menu()
end)

RegisterNetEvent('esx_jobpolice:przeszukaj')
AddEventHandler('esx_jobpolice:przeszukaj', function()
  local pos = GetEntityCoords(GetPlayerPed(-1))
  local rped2 = GetClosestPed(pos['x'], pos['y'], pos['z'], 20.05, 1, 0, 0, 0, -1)
  local closestPlayer = ESX.Game.GetClosestPlayer()
  if IsEntityPlayingAnim(GetPlayerPed(closestPlayer), "mp_arresting", "idle", 3) or IsEntityDead(GetPlayerPed(closestPlayer)) then
    OpenBodySearchMenu(closestPlayer)
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if IsEntityPlayingAnim(closestPlayerPed, "mp_arresting", "idle", 3 ) then
      TriggerEvent('esx_jobpolice:playAnim', 'anim@gangops@facility@servers@bodysearch@', 'player_search')
    end
  end
end)

RegisterNetEvent('esx_jobpolice:takeVehicle')
AddEventHandler('esx_jobpolice:takeVehicle', function()
    local vehicle   = ESX.Game.GetVehicleInDirection()
    if DoesEntityExist(vehicle) then
        local vehicleData = ESX.Game.GetVehicleProperties(vehicle)
        ImpoundVehicle(vehicle)
        TriggerServerEvent('esx_jobpolice:takeVehicle', vehicleData.plate)
    else
        ESX.ShowNotification("Brak pojazdów w pobliżu")
    end
end)

RegisterNetEvent('esx_jobpolice:OutVehicle')
AddEventHandler('esx_jobpolice:OutVehicle', function()
  if IsHandcuffed then
    local playerPed = PlayerPedId()
    if IsPedSittingInAnyVehicle(playerPed) then
      local vehicle = GetVehiclePedIsIn(playerPed, false)
      TaskLeaveVehicle(playerPed, vehicle, 16)
      RequestAnimDict('mp_arresting')
      while not HasAnimDictLoaded('mp_arresting') do
        Citizen.Wait(5)
      end
      TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8.0, -1, 49, 0.0, 0, 0, 0)
	  end
  end
end)

RegisterNetEvent('esx_jobpolice:putouttrunk')
AddEventHandler('esx_jobpolice:putouttrunk', function()
		local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed, true)
	vehicleTrunk = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
  if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
	PlayerIsInTrunk = not PlayerIsInTrunk

	SetVehicleDoorOpen(vehicleTrunk, 5, false, false)
Wait(400)
		SetVehicleDoorShut(vehicleTrunk, 5, false)
if not PlayerIsInTrunk then
	DetachEntity(playerPed, 0, true)
	SetEntityVisible(playerPed, true)
DisplayRadar(true)
end
end
end)

Citizen.CreateThread(function()
  while true do
  Citizen.Wait(5)

           if PlayerIsInTrunk then

           local playerPed = PlayerPedId()
            local boneName = GetEntityBoneIndexByName(vehicleTrunk, 'boot')
       if currentView ~= 4 then
           SetFollowPedCamViewMode(4)
           Citizen.Trace(GetFollowPedCamViewMode())
       end
DisplayRadar(false)
 DisableControlAction(0, 322, true)
 DisableControlAction(0, 177, true)
 DisableControlAction(0, 200, true)
 DisableControlAction(0, 202, true)
 DisableControlAction(0, Keys['P'], true)
 DisableControlAction(0, 1, true)
 DisableControlAction(0, 2, true)
 DisableControlAction(0, 24, true)
 DisableControlAction(0, 257, true)
 DisableControlAction(0, 25, true)
 DisableControlAction(0, 263, true)
 DisableControlAction(0, Keys['W'], true)
 DisableControlAction(0, Keys['A'], true)
 DisableControlAction(0, 31, true)
 DisableControlAction(0, 30, true)

 DisableControlAction(0, Keys['R'], true)
 DisableControlAction(0, Keys['SPACE'], true)
 DisableControlAction(0, Keys['Q'], true)
 DisableControlAction(0, Keys['TAB'], true)
 DisableControlAction(0, Keys['F'], true)

 DisableControlAction(0, Keys['F1'], true)
 DisableControlAction(0, Keys['F2'], false)
 DisableControlAction(0, Keys['F3'], true)
 DisableControlAction(0, Keys['F6'], true)

 DisableControlAction(0, Keys['V'], true)
 DisableControlAction(0, Keys['C'], true)
 DisableControlAction(0, Keys['X'], true)
 DisableControlAction(2, Keys['P'], true)

 DisableControlAction(0, 59, true)
 DisableControlAction(0, 71, true)
 DisableControlAction(0, 72, true)

 DisableControlAction(2, Keys['LEFTCTRL'], true)

 DisableControlAction(0, 47, true)
 DisableControlAction(0, 264, true)
 DisableControlAction(0, 257, true)
 DisableControlAction(0, 140, true)
 DisableControlAction(0, 141, true)
 DisableControlAction(0, 142, true)
 DisableControlAction(0, 143, true)
 DisableControlAction(0, 75, true)
 DisableControlAction(27, 75, true)

            AttachEntityToEntity(playerPed, vehicleTrunk, boneName, 0.1, 0, -0.75, 0, 0, 0, 0, true, false, true , 0, false)
SetEntityVisible(playerPed, false)
end
end
end)


function SearchPhone(player)
	local elements = {}
  local cards = {}
  local gracz = GetPlayerServerId(player)
	ESX.TriggerServerCallback('kartasimsteel', function(cards)
		for _,v in pairs(cards) do
			local cardNummer = v.number
    	local lejbel = 'SIM #' .. cardNummer
			table.insert(elements, {label = lejbel , value = v})
		end

		ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'search_telefon',
		{
			title    = 'Telefon',
			align    = 'center',
			elements = elements,
		},
		function(data, menu)
      TriggerServerEvent('sandy:zajebnumber', gracz, data.current.value.number)
      menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)	
	end, gracz)
end


function menu()

	if ininstance then 
	  ESX.ShowNotification('~r~Nie możesz używać kajdanek w mieszkaniu')
	  return
	end
	  ESX.UI.Menu.CloseAll()
	  isSearchingPlayer = false
	  ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'police_actions',
	{
	  title = 'Kajdanki',
	  align = 'center',
	  elements = {
		  {label = 'Skuj / Rozkuj',		value = 'handcuff'},
	  {label = 'Przeszukaj',			value = 'body_search'},
		  {label = 'Chwyc / Puść',			value = 'drag'},
		  {label = 'Wloz do pojazdu',	value = 'put_in_vehicle'},
	  {label = 'Wyjmij z pojazdu',	value = 'out_the_vehicle'},
	  {label = 'Karty SIM',  value = 'sim'},
	  {label = "Zdejmuj ubranie", value = 'ubranie'}
	  }
	}, function(data, menu)
		isSearchingPlayer = true
		  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		  if closestPlayer ~= -1 and closestDistance <= 2.0 then
			local closestPed = GetPlayerPed(closestPlayer)
			local action = data.current.value
			if data.current.value == "ubranie" then
			  if IsPedCuffed(closestPed) then
  
			  TriggerServerEvent('kajdanki:ubbranie',GetPlayerServerId(closestPlayer) )
			  end
			elseif data.current.value == 'body_search' then
			  if (IsPedCuffed(closestPed) or IsPlayerDead(closestPlayer)) then
				procent(15, function()
							menu.close()
							isSearchingPlayer = false
				OpenBodySearchMenu(closestPlayer)
				isSearchingPlayer = true
				end)
		  end
			  elseif data.current.value == 'handcuff' then
				if not IsPedSprinting(PlayerPedId()) and not IsPedWalking(PlayerPedId()) then
					TriggerServerEvent('esx_jobpolice:handcuff', GetPlayerServerId(closestPlayer))
				else
				  ESX.ShowNotification('~r~Nie możesz zakuwać w ruchu!')
				end
			  elseif action == 'sim' then
				if IsPedCuffed(closestPed) then
				  TriggerServerEvent('esx_jobpolice:message', GetPlayerServerId(closestPlayer), 'Twój telefon jest PRZESZUKIWANY!')
				  SearchPhone(closestPlayer)
				else
				  ESX.ShowNotification('~r~Najpierw zakuj obywatela')
				end
			  elseif data.current.value == 'drag' then
						if IsPedCuffed(closestPed) then
				  TriggerServerEvent('esx_jobpolice:drag', GetPlayerServerId(closestPlayer))
				else
				  ESX.ShowNotification("~r~Najpierw musisz zakuć obywatela.")
						end
			  elseif data.current.value == 'put_in_vehicle' then
				TriggerServerEvent('esx_jobpolice:putInVehicle', GetPlayerServerId(closestPlayer))
			  elseif data.current.value == 'out_the_vehicle' then
				TriggerServerEvent('esx_jobpolice:OutVehicle', GetPlayerServerId(closestPlayer))
			  end
		  else
			  ESX.ShowNotification('Brak graczy w ~r~pobliżu')
		  end
	  end, function(data, menu)
		  menu.close()
		  isSearchingPlayer = false
	  end)
  end

  

function ShowAboveRadarMessage(message)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(0,1)
end

function openPolice()
  if PlayerData.job ~= nil and PlayerData.job.name == 'police' and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'police_actions') and (GetGameTimer() - GUI.Time) > 150 then
    OpenPoliceActionsMenu()
    GUI.Time = GetGameTimer()
  end
end

function getJob()
  if PlayerData.job ~= nil then
	return PlayerData.job.name
  end
end

function StartHandcuffTimer()
	if Config.EnableHandcuffTimer and HandcuffTimer then
		ESX.ClearTimeout(HandcuffTimer)
	end

	HandcuffTimer = ESX.SetTimeout(Config.HandcuffTimer, function()
		ESX.ShowNotification(_U('unrestrained_timer'))
		TriggerEvent('esx_jobpolice:unrestrain')
    TriggerServerEvent('3dme:shareDisplayDo', "Obywatelowi Poluzowały Sie Kajdanki", _source)
	end)
end

function bossmenubotak()
    ESX.UI.Menu.CloseAll()

      ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'extras_actions_actions',
      {
        title    = 'Menu Dodatkow',
        align    = 'center',
        elements = {
          {label = 'Akcje Szefa', value = 'boss'},
          {label = 'Odznaki', value = 'badge'},
        }

      }, function(data, menu)
        if data.current.value == 'boss' then
             TriggerEvent('esx_societymordo:openBossMenu', 'police', function(data, menu)
              menu.close()
              CurrentAction     = 'menu_boss_actions'
              CurrentActionMsg  = _U('open_bossmenu')
              CurrentActionData = {}
            end)
        elseif data.current.value == 'badge' then
          menuodznaka()
          menu.close()
        end

      end, function(data, menu)
        menu.close()
      end)
end

function menuodznaka()

  ESX.TriggerServerCallback('esx_jobpolice:sandyshowodznakas', function(dane)

    local elements = {
      head = {'Funkcjonariusz', 'Numer Odznaki', 'Akcje'},
      rows = {}
    }

    for i=1, #dane, 1 do
      local imieinazwisko = (dane[i].firstname .. ' ' .. dane[i].lastname)

      table.insert(elements.rows, {
        data = dane[i],
        cols = {
          imieinazwisko,
          dane[i].numerodznaki,
          '{{' .. 'Nadaj' .. '|nadaj}} {{' .. 'Usun' .. '|usun}}'
        }
      })
    end

    ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'odznaka_list', elements, function(data, menu)
      local policjant = data.data

      if data.value == 'nadaj' then
      ESX.UI.Menu.Open(
            'dialog', GetCurrentResourceName(), 'set_numerodznaki',
            {
              title = 'Nadaj Numer Odznaki',
            },
            function(data2, menu)

              local quantity = data2.value

              if quantity == nil then
                ESX.ShowNotification('~r~Nieprawidlowy Numer Odznaki')
              else
                menu.close()
                local policjantimie = (policjant.firstname .. ' ' .. policjant.lastname)
                TriggerServerEvent('esx_jobpolice:sandysetodznaka', policjant.identifier, policjantimie, quantity)
              end
            end,
            function(data2,menu)
              menu.close()
            end
          )
      menu.close()
      elseif data.value == 'usun' then
        local policjantimie = (policjant.firstname .. ' ' .. policjant.lastname)
                TriggerServerEvent('esx_jobpolice:sandyremoveodznaka', policjant.identifier, policjantimie)
            menu.close()
      end
    end, function(data, menu)
      menu.close()
    end)
  end)

end

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(5)
      local closestPlayer = ESX.Game.GetClosestPlayer()
      local closestPed = GetPlayerPed(closestPlayer)
      local HaveHandcuffed = false
      if IsPedCuffed(closestPed) then
          HaveHandcuffed = true
      else
          HaveHandcuffed = false
      end
      
      if isSearchingPlayer and not HaveHandcuffed then
          ESX.UI.Menu.CloseAll()
          isSearchingPlayer = false
      end
  end
end)

RegisterNetEvent('esx_jobpolice:DisplayPlate')
AddEventHandler('esx_jobpolice:DisplayPlate', function(id, playerName, job, nrodznaki)
	senderplayer = GetPlayerFromServerId(id)
	distance = Vdist2(GetEntityCoords(GetPlayerPed(PlayerId())), GetEntityCoords(GetPlayerPed(senderplayer)))
	vehicle = GetVehiclePedIsIn(GetPlayerPed(senderplayer), false)
  
	if distance == 0 and PlayerId() ~= senderplayer and vehicle == GetVehiclePedIsIn(PlayerPedId(), false) and NetworkGetPlayerCoords(senderplayer) == vector3(0.0, 0.0, 0.0) then
	  return
  end
  
  if senderplayer == PlayerId() then
    TriggerEvent("pNotify:SendNotification", {
      text = "<font style='font-size: 14px'><div style='min-width: 270px; min-height: 350px; background-image: url(https://i.imgur.com/Ob42zsG.png); background-size: contain; background-position: center;  background-repeat: no-repeat;'><div style='position: relative; top:120px; color:#fff; text-shadow: 0px 0px 5px rgba(0, 0, 0, 1); line-height: 5px; font-family: Calibri Light;'><CENTER><font style='font-size: 20px; font-family: Impact, Charcoal; margin-left: 2px;'>" ..playerName.."</font><B><p style='font-size: 14px;font-family: Arial, Helvetica; margin-left: 2px;'><br>".. job .. "</font><p style='font-size: 14px;font-family: Arial, Helvetica; margin-left: 2px;'>Numer Odznaki: ".. nrodznaki .."</div>",
      type = "aqua",
      queue = "global",
      timeout = 10000,
      layout = "centerLeft"
    }) 
  elseif distance < 4 then
    TriggerEvent("pNotify:SendNotification", {
      text = "<font style='font-size: 14px'><div style='min-width: 270px; min-height: 350px; background-image: url(https://i.imgur.com/Ob42zsG.png); background-size: contain; background-position: center;  background-repeat: no-repeat;'><div style='position: relative; top:120px; color:#fff; text-shadow: 0px 0px 5px rgba(0, 0, 0, 1); line-height: 5px; font-family: Calibri Light;'><CENTER><font style='font-size: 20px; font-family: Impact, Charcoal; margin-left: 2px;'>" ..playerName.."</font><B><p style='font-size: 14px;font-family: Arial, Helvetica; margin-left: 2px;'><br>".. job .. "</font><p style='font-size: 14px;font-family: Arial, Helvetica; margin-left: 2px;'>Numer Odznaki: ".. nrodznaki .."</div>",
      type = "aqua",
      queue = "global",
      timeout = 10000,
      layout = "centerLeft"
    })
  end
end)

local plateModel = "prop_fib_badge"
local animDict = "paper_1_rcm_alt1-9"
local animName = "player_one_dual-9"
local plate_net = nil

RegisterNetEvent("esx_jobpolice:plateanim")
AddEventHandler("esx_jobpolice:plateanim", function()

  RequestModel(GetHashKey(plateModel))
  while not HasModelLoaded(GetHashKey(plateModel)) do
    Citizen.Wait(250)
  end

  RequestAnimDict(animDict)
  while not HasAnimDictLoaded(animDict) do
    Citizen.Wait(250)
  end

  local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
  local platespawned = CreateObject(GetHashKey(plateModel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
  Citizen.Wait(1100)
  TaskPlayAnim(GetPlayerPed(PlayerId()), animDict, animName, 1.0, 1.0, -1, 50, 0, 0, 0, 0)
  AttachEntityToEntity(platespawned, GetPlayerPed(PlayerId()), GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422), 0.115, -0.011, -0.045, 90.0, 90.0, 60.0, true, true, false, false, 2, true)
  Citizen.Wait(3150)
  ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
  DeleteObject(platespawned)
end)

--radar

local tempInfo = "~y~Radar gotowy do działania! Naciśnij [Num8] aby zamrozić"
  local veh,a, b, c, d, e, f, g, h, i, j, fmodel, fvspeed, fplate, bmodel, bvspeed, bplate
  local radar =
  {
    shown = false,
    freeze = false,
    info = tempInfo,
    info2 = tempInfo,
    frontPlate = "",
    frontModel = "",
    backPlate = "",
    backModel = "",
    minSpeed = 5.0,
    maxSpeed = 75.0,
  }
  
  function DrawAdvancedText(x, y, w, h, sc, text, r, g, b, a, font, jus)
      SetTextFont(font)
      SetTextProportional(0)
      SetTextScale(sc, sc)
      N_0x4e096588b13ffeca(jus)
      SetTextColour(r, g, b, a)
      SetTextDropShadow(0, 0, 0, 0,255)
      SetTextEdge(1, 0, 0, 0, 255)
      SetTextDropShadow()
      SetTextOutline()
      SetTextEntry("STRING")
      AddTextComponentString(text)
      DrawText(x - 0.1 + w, y - 0.02 + h)
  end
  
  Citizen.CreateThread(function()
    while true do
      if radar.shown then
        local pPed = GetPlayerPed(-1)
        veh = GetVehiclePedIsIn(pPed, false)
      end
      Citizen.Wait(5000)
    end
  end)
  
  Citizen.CreateThread(function()
    while true do
      if radar.shown then
        local coordA = GetOffsetFromEntityInWorldCoords(veh, 0.0, 1.0, 1.0)
        local coordB = GetOffsetFromEntityInWorldCoords(veh, 0.0, 105.0, 0.0)
        local frontcar = StartShapeTestCapsule(coordA, coordB, 3.0, 10, veh, 7)
        a, b, c, d, e = GetShapeTestResult(frontcar)
        if IsEntityAVehicle(e) then
          fmodel = GetDisplayNameFromVehicleModel(GetEntityModel(e))
          fvspeed = GetEntitySpeed(e)*3.6
          fplate = GetVehicleNumberPlateText(e)
        end
        local bcoordB = GetOffsetFromEntityInWorldCoords(veh, 0.0, -105.0, 0.0)
        local rearcar = StartShapeTestCapsule(coordA, bcoordB, 3.0, 10, veh, 7)
        f, g, h, i, j  = GetShapeTestResult(rearcar)
        if IsEntityAVehicle(j) then
          bmodel = GetDisplayNameFromVehicleModel(GetEntityModel(j))
          bvspeed = GetEntitySpeed(j)*3.6
          bplate = GetVehicleNumberPlateText(j)
        end
      end
      Citizen.Wait(500)
    end
  end)
  
  Citizen.CreateThread( function()
    while true do
      Citizen.Wait(5)
      if IsControlJustPressed(1, 128) and IsPedInAnyPoliceVehicle(GetPlayerPed(-1)) then
        if radar.shown then
          radar.shown = false
        elseif not radar.shown then
          radar.shown = true
        end
              Citizen.Wait(200)
      end
      if IsControlJustPressed(1, 127) and IsPedInAnyPoliceVehicle(GetPlayerPed(-1)) then
        if radar.freeze then 
          radar.freeze = false
        else 
          radar.freeze = true
        end
      end
      if radar.freeze then
        DrawAdvancedText(0.591, 0.833, 0.005, 0.0028, 0.40, "~y~Zatrzymano radar", 0, 191, 255, 255, 6, 0)
      end
      if radar.shown then
        if radar.freeze == false then
          if IsEntityAVehicle(e) then
            radar.frontPlate = fplate
            radar.frontModel = fmodel
            radar.info = string.format("~y~Rejestracja: ~w~%s  ~y~Pojazd: ~w~%s  ~y~Prędkość: ~w~%s km/h", fplate, fmodel, math.ceil(fvspeed))
          end
          if IsEntityAVehicle(j) then
            radar.backPlate = bplate
            radar.backModel = bmodel
            radar.info2 = string.format("~y~Rejestracja: ~w~%s  ~y~Pojazd: ~w~%s  ~y~Prędkość: ~w~%s km/h", bplate, bmodel, math.ceil(bvspeed))				
          end
        end
        if IsControlJustPressed(1, 124) then
          TriggerServerEvent('radar:checkVehicle', radar.frontPlate, radar.frontModel)
        end
        if IsControlJustPressed(1, 125) then
          TriggerServerEvent('radar:checkVehicle', radar.backPlate, radar.backModel)
        end	
        DrawAdvancedText(0.602, 0.903, 0.005, 0.0028, 0.4, "RADAR - Front ([Num4] aby sprawdzić bazę)", 0, 153, 0, 255, 6, 0)
        DrawAdvancedText(0.602, 0.953, 0.005, 0.0028, 0.4, "RADAR - Tył ([Num6] aby sprawdzić bazę)", 0, 153, 0, 255, 6, 0)
        DrawAdvancedText(0.602, 0.928, 0.005, 0.0028, 0.4, radar.info, 255, 255, 255, 255, 6, 0)
        DrawAdvancedText(0.602, 0.979, 0.005, 0.0028, 0.4, radar.info2, 255, 255, 255, 255, 6, 0)
      end
      if(not IsPedInAnyVehicle(GetPlayerPed(-1))) then
        radar.shown = false
        radar.freeze = false
      end
    end
  end)

local chlop = {}
chlop.tshirt_1 = 15
chlop.torso_1 = 15
chlop.shoes_1 = 34
chlop.pants_1 = 61
chlop.arms = 15
chlop.mask_1 = 0
chlop.helmet_1 = -1

local baba = {}
baba.tshirt_1 = 15
baba.torso_1 = 18
baba.shoes_1 = 35
baba.pants_1 = 15
baba.arms = 15
baba.mask_1 = 0
baba.helmet_1 = -1

RegisterNetEvent('kajdanki:usunubranie')
AddEventHandler('kajdanki:usunubranie', function()
	ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobskin)
		if skin.sex == 0 then
			TriggerEvent('skinchanger:loadClothes', skin, chlop)
		else
			TriggerEvent('skinchanger:loadClothes', skin, baba)
		end
	end)
end)

