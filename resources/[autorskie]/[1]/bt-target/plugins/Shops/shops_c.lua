--FiveM's list of Ped Models can be found here: https://docs.fivem.net/docs/game-references/ped-models/
--A list of all the animations can be found here: https://alexguirre.github.io/animations-list/

Config = {}
Config.Invincible = true --Do you want the peds to be invincible?
Config.Frozen = true --Do you want the peds to be unable to move? It's probably a yes, so leave true in there.
Config.Stoic = true --Do you want the peds to react to what is happening in their surroundings?
Config.Fade = true-- Do you want the peds to fade into/out of existence? It looks better than just *POP* its there.
Config.Distance = 15.0 --The distance you want peds to spawn at


--Does the system you use for grabbing coordinates require subracting from the z axis?
--If so, set this to true. You'll have to adjust the coordinates for defaults down - 1 if you set false.
Config.MinusOne = true

Config.PedList = {
	{
		model = "cs_hunter",
		coords = vector3(46.61, -1749.76, 29.63),
		heading = 50.87, 
		gender = "male", 
		id = 402,
		title = "Sklep Techniczny",
	},
	{
		model = "cs_hunter",
		coords = vector3(2747.34, 3473.01, 55.67),
		heading = 250.88,
		gender = "male", 
		id = 402,
		title = "Sklep Techniczny",
	},
	{
		model = "csb_g",
		coords = vector3(-330.94049072266,6085.6987304688,31.454765319824),
		heading = 200.0, 
		gender = "male", 
	},

	----------------------------------------
	---           AMMUNATION             ---
	----------------------------------------
	{
		model = "mp_m_weapexp_01",
		coords = vector3(-330.94049072266,6085.6987304688,31.454765319824), --GREAT OCEAN HWY
		heading = 200.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	{
		model = "mp_m_weapexp_01",
		coords = vector3(1692.8041992188,3762.0256347656,34.705307006836), --SANDY SHORES
		heading = 200.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	{
		model = "mp_m_weapexp_01",
		coords = vector3(-1118.6530761719,2700.1198730469,18.554126739502), --ROUTE 68
		heading = 200.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	{
		model = "mp_m_weapexp_01",
		coords = vector3(2566.9831542969,292.54681396484,108.73484802246), --PALOMINO FWY
		heading = 0.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	{
		model = "mp_m_weapexp_01",
		coords = vector3(253.47956848145,-51.635822296143,69.941047668457), --SPANISH AVE
		heading = 80.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	{
		model = "mp_m_weapexp_01",
		coords = vector3(-661.20977783203,-933.51782226562,21.829214096069), --PALOMINO AVE
		heading = 160.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	{
		model = "mp_m_weapexp_01",
		coords = vector3(841.49786376953,-1035.3450927734,28.194841384888), --ELGIN AVE
		heading = 340.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	{
		model = "mp_m_weapexp_01",
		coords = vector3(23.803026199341,-1105.8958740234,29.797002792358), --OLYMPIC FWY
		heading = 120.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	{
		model = "mp_m_weapexp_01",
		coords = vector3(809.4541015625,-2159.08203125,29.618989944458), --POPULAR ST
		heading = 0.0, 
		gender = "male", 
		id = 110,
		title = "Sklep Z Bronio",
	},
	
	----------------------------------------
	---          ROBS LIQUOR             ---
	----------------------------------------
	{
		model = "cs_nervousron",
		coords = vector3(1392.5979003906,3606.3920898438,34.980934143066), --SANDY SHORES
		heading = 200.0, 
		gender = "male", 
		id = 52,
		title = "Sklep",
	},
	
	{
		model = "cs_nervousron",
		coords = vector3(1165.7758789062,2710.8713378906,38.157657623291), --HARMONY
		heading = 200.0, 
		gender = "male", 
		id = 52,
		title = "Sklep",
	},
	
	{
		model = "cs_nervousron",
		coords = vector3(-2966.3356933594,391.17147827148,15.043302536011), --HARMONY
		heading = 100.0, 
		gender = "male", 
		id = 52,
		title = "Sklep",
	},
	
	{
		model = "cs_nervousron",
		coords = vector3(-1486.4750976562,-377.71398925781,40.163383483887), --PROSPERITY ST
		heading = 130.0, 
		gender = "male", 
		id = 52,
		title = "Sklep",
	},
	
	{
		model = "mp_m_execpa_01",
		coords = vector3(-1391.7106933594,-605.59777832031,30.31957244873), --BAHAMA MAMA'S MARATHON AVE
		heading = 130.0, 
		gender = "male", 
		id = 52,
		title = "Sklep",
	},
	
	{
		model = "cs_nervousron",
		coords = vector3(-1221.6925048828,-908.20947265625,12.326344490051), --SAN ANDREAS AVE
		heading = 20.0, 
		gender = "male", 
		id = 52,
		title = "Sklep",
	},
	
	{
		model = "cs_nervousron",
		coords = vector3(1134.2102050781,-982.88604736328,46.415798187256), --EL RANCHO BLVD
		heading = 300.0, 
		gender = "male",
		id = 52,
		title = "Sklep",
	},	
}

Citizen.CreateThread(function()

    for _, info in pairs(Config.PedList) do
if info.title ~= nill then
      info.blip = AddBlipForCoord(info.coords)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, 5)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
end
    end
end)

local genderNum = 0
local peds = {}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(500)
		for k = 1, #Config.PedList, 1 do
			v = Config.PedList[k]
			local playerCoords = GetEntityCoords(PlayerPedId())
			local dist = #(playerCoords - v.coords)

			if dist < Config.Distance and not peds[k] then
				local ped = nearPed(v.model, v.coords, v.heading, v.gender, v.animDict, v.animName, v.scenario)
				peds[k] = {ped = ped}
			end
			
			if dist >= Config.Distance and peds[k] then
				if Config.Fade then
					for i = 255, 0, -51 do
						Citizen.Wait(50)
						SetEntityAlpha(peds[k].ped, i, false)
					end
				end
				DeletePed(peds[k].ped)
				peds[k] = nil
			end
		end
	end
end)

function nearPed(model, coords, heading, gender, animDict, animName, scenario)
--AddEventHandler('nearPed', function(model, coords, heading, gender, animDict, animName)
	-- Request the models of the peds from the server, so they can be ready to spawn.
	RequestModel(GetHashKey(model))
	while not HasModelLoaded(GetHashKey(model)) do
		Citizen.Wait(1)
	end
	
	-- Convert plain language genders into what fivem uses for ped types.
	if gender == 'male' then
		genderNum = 4
	elseif gender == 'female' then 
		genderNum = 5
	else
		print("No gender provided! Check your configuration!")
	end	

	--Check if someones coordinate grabber thingy needs to subract 1 from Z or not.
	if Config.MinusOne then 
		local x, y, z = table.unpack(coords)
		ped = CreatePed(genderNum, GetHashKey(model), x, y, z - 1, heading, false, true)
		
	else
		ped = CreatePed(genderNum, GetHashKey(v.model), coords, heading, false, true)
	end
	
	SetEntityAlpha(ped, 0, false)
	
	if Config.Frozen then
		FreezeEntityPosition(ped, true) --Don't let the ped move.
	end
	
	if Config.Invincible then
		SetEntityInvincible(ped, true) --Don't let the ped die.
	end

	if Config.Stoic then
		SetBlockingOfNonTemporaryEvents(ped, true) --Don't let the ped react to his surroundings.
	end
	
	--Add an animation to the ped, if one exists.
	if animDict and animName then
		RequestAnimDict(animDict)
		while not HasAnimDictLoaded(animDict) do
			Citizen.Wait(1)
		end
		TaskPlayAnim(ped, animDict, animName, 8.0, 0, -1, 1, 0, 0, 0)
	end

	if scenario then
		TaskStartScenarioInPlace(ped, scenario, 0, true) -- begins peds animation
	end
	
	if Config.Fade then
		for i = 0, 255, 51 do
			Citizen.Wait(50)
			SetEntityAlpha(ped, i, false)
		end
	end

	return ped
end