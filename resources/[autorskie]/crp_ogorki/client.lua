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


local szansanaznalezienie = 100 -- szansa na znalezienie bursztynu (by wojtek.cfg XD) (japa wojtek)


-- NIE DOTYKAĆ
local hcap				  = false 


ESX = nil
local ustaw = false
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)
--
RegisterNetEvent('freezeplayer')
AddEventHandler('freezeplayer', function(freeze)
	FreezeEntityPosition(PlayerPedId(), freeze)
end)
--
RegisterNetEvent('elowojtekk')
AddEventHandler('elowojtekk', function()
	Citizen.CreateThread(function()
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
		local procent = 0
		local stan = math.random(2,10)
		local player = PlayerPedId()
		ustaw = true
		ClearPedTasks(ped)
		TriggerEvent('freezeplayer', true)
        TaskStartScenarioInPlace(GetPlayerPed(-1), "world_human_gardener_plant", 0, true)
		while procent <= 1000 do
			ESX.Game.Utils.DrawText3D(coords, "Szukanie ~g~ogórków: ~w~" .. tonumber(procent * 0.1) ..'%', 0.4)
			Wait(0)
			procent = procent + 1
		end
		local wylosowano = math.random(100,100)
		if szansanaznalezienie then
		TriggerServerEvent('szukbb', stan)
		else
		TriggerEvent('esx:showNotification', '~r~Nie znalazłeś żadnych ogórków')
		end
		ClearPedTasks(ped)
		TriggerEvent('freezeplayer', false)
		ustaw = false
	end)
end)
--
Citizen.CreateThread(function()
	while true do
		Wait(0)
    local coords = GetEntityCoords(PlayerPedId())
			if GetDistanceBetweenCoords(coords, 285.37, 6609.83, 30.25, true) < 30 and ustaw == false then
				DrawText3DTest(285.37, 6609.83, 30.25, '~g~Zbieranie ogórków', 0.3)
			end

			if GetDistanceBetweenCoords(coords, 1786.04, 4590.79, 37.68, true) < 30 and ustaw == false then
				DrawText3DTest(1786.04, 4590.79, 37.68, '~g~Sprzedawanie ogórków', 0.3)
			end

			if GetDistanceBetweenCoords(coords, 150.86, 6647.97, 31.6, true) < 30 and ustaw == false then
				DrawText3DTest(150.86, 6647.97, 31.6, '~g~Pakowanie ogórków', 0.3)
			end

			if GetDistanceBetweenCoords(coords, 241.99, 6597.61, 29.62, true) < 30 and ustaw == false then
				DrawText3DTest(241.99, 6597.61, 29.62, '~g~Mycie ogórków', 0.3)
			end
			
  end
end)
--
RegisterNetEvent('crp_ogorki:opluk')
AddEventHandler('crp_ogorki:opluk', function()
	if hcap == false then
		hcap = true
	DoScreenFadeOut(800)
	Citizen.Wait(1000)
	StopScreenEffect('DeathFailOut')
	DoScreenFadeIn(800)
	TriggerServerEvent('crp_ogorki:oplukserver', source)
	Wait(500)
	if hcap == true then
		hcap = false
	end
	end
end)
--

--
function DrawText3DTest(x,y,z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	if onScreen then
			SetTextScale(0.2, 0.2)
			SetTextFont(0)
			SetTextProportional(1)
			-- SetTextScale(0.0, 0.55)
			SetTextColour(255, 255, 255, 255)
			SetTextDropshadow(0, 0, 0, 0, 55)
			SetTextEdge(2, 0, 0, 0, 150)
			SetTextDropShadow()
			SetTextOutline()
			SetTextEntry("STRING")
			SetTextCentre(1)
			AddTextComponentString(text)
			DrawText(_x,_y)
	end
end
--
Citizen.CreateThread(function()
	local blip = AddBlipForCoord(285.37, 6609.83, 30.25)
	SetBlipSprite (blip, 387)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.9)
	SetBlipColour (blip, 25)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString('Szukanie Ogórków')
	EndTextCommandSetBlipName(blip)

	local blip2 = AddBlipForCoord(241.99, 6597.61, 29.62)
	SetBlipSprite (blip2, 387)
	SetBlipDisplay(blip2, 4)
	SetBlipScale  (blip2, 0.9)
	SetBlipColour (blip2, 25)
	SetBlipAsShortRange(blip2, true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString('Mycie Ogórków')
	EndTextCommandSetBlipName(blip2)

	local blip3 = AddBlipForCoord(1786.04, 4590.79, 37.68)
	SetBlipSprite (blip3, 387)
	SetBlipDisplay(blip3, 4)
	SetBlipScale  (blip3, 0.9)
	SetBlipColour (blip3, 25)
	SetBlipAsShortRange(blip3, true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString('Sprzedawanie Ogórków')
	EndTextCommandSetBlipName(blip3)

	local blip4 = AddBlipForCoord(150.86, 6647.97, 31.6)
	SetBlipSprite (blip4, 387)
	SetBlipDisplay(blip4, 4)
	SetBlipScale  (blip4, 0.9)
	SetBlipColour (blip4, 25)
	SetBlipAsShortRange(blip4, true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString('Pakowanie Ogórków')
	EndTextCommandSetBlipName(blip4)
end)



--
RegisterNetEvent('crp_ogorki:sprzedaj')
AddEventHandler('crp_ogorki:sprzedaj', function()
if hcap == false then
		hcap = true
	ClearPedTasks(PlayerPedId())
	TriggerEvent('freezeplayer', true)
	DoScreenFadeOut(800)
	Citizen.Wait(1000)
	StopScreenEffect('DeathFailOut')
	DoScreenFadeIn(800)
	TriggerServerEvent('crp_ogorki:sprzedajserver', source)
	TriggerEvent('freezeplayer', false)
	Wait(500)
	if hcap == true then
		hcap = false
	end
end
end)
--
RegisterNetEvent('crp_ogorki:oszlifclient')
AddEventHandler('crp_ogorki:oszlifclient', function()
if hcap == false then
		hcap = true
	ClearPedTasks(PlayerPedId())
	TriggerEvent('freezeplayer', true)
	DoScreenFadeOut(800)
	Citizen.Wait(1000)
	StopScreenEffect('DeathFailOut')
	DoScreenFadeIn(800)
	TriggerServerEvent('crp_ogorki:oszlifserver', source)
	TriggerEvent('freezeplayer', false)
	Wait(500)
	if hcap == true then
		hcap = false
	end
end
end)
--
Citizen.CreateThread(function()
	while true do
		Wait(0)
		local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
				if GetDistanceBetweenCoords(coords, 1786.04, 4590.79, 37.68, true) < 3 then
					ESX.ShowHelpNotification('Wciśnij ~INPUT_CONTEXT~ aby ~g~sprzedać ~w~zpakowanie ogórki')
					if IsControlJustReleased(0, Keys['E']) then
						TriggerEvent('crp_ogorki:sprzedaj')
					end
				end
				
				if GetDistanceBetweenCoords(coords, 150.86, 6647.97, 31.6, true) < 3 then
					ESX.ShowHelpNotification('Wciśnij ~INPUT_CONTEXT~ aby ~g~zpakować~w~ umyte ogórki')
					if IsControlJustReleased(0, Keys['E']) then
						TriggerEvent('crp_ogorki:oszlifclient')
					end
				end

				if (GetDistanceBetweenCoords(coords, 285.37, 6609.83, 30.25, true) < 3.0) and ustaw == false then
				ESX.ShowHelpNotification('Wciśnij ~INPUT_CONTEXT~ aby ~g~szukać ~w~ogórków')
					if IsControlJustReleased(0, Keys['E']) then
						TriggerEvent('elowojtekk')
					end
				end

				if (GetDistanceBetweenCoords(coords, 241.99, 6597.61, 29.62, true) < 3.0) and ustaw == false then
					ESX.ShowHelpNotification('Wciśnij ~INPUT_CONTEXT~ aby ~g~opłukać ~w~ogórki')
						if IsControlJustReleased(0, Keys['E']) then
							TriggerEvent('crp_ogorki:opluk')
						end
					end


  end
end)
