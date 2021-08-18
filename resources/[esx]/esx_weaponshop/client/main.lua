ESX = nil
local HasAlreadyEnteredMarker = false
local LastZone = nil
local CurrentAction = nil
local CurrentActionMsg = ''
local CurrentActionData = {}
local ShopOpen = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	ESX.TriggerServerCallback('esx_weaponshop:getShop', function(shopItems)
		for k,v in pairs(shopItems) do
			Config.Zones[k].Items = v
		end
	end)
end)

RegisterNetEvent('esx_weaponshop:sendShop')
AddEventHandler('esx_weaponshop:sendShop', function(shopItems)
	for k,v in pairs(shopItems) do
		Config.Zones[k].Items = v
	end
end)

function OpenBuyLicenseMenu(zone)
	ESX.UI.Menu.CloseAll()

	ESX.ShowNotification('Nie masz licencji na bron', false, true, 130)
	
end

function OpenShopMenu(zone)
	local elements = {}
	ShopOpen = true

	for i=1, #Config.Zones[zone].Items, 1 do
		local item = Config.Zones[zone].Items[i]

		if string.find(item.item, "ammo") then
		table.insert(elements, {
			label = ('%s (48) - <span style="color: green;">%s</span>'):format(item.name, _U('shop_menu_item', ESX.Math.GroupDigits(item.price))),
			price = item.price,
			weaponName = item.item
		})
		else
		table.insert(elements, {
			label = ('%s - <span style="color: green;">%s</span>'):format(item.name, _U('shop_menu_item', ESX.Math.GroupDigits(item.price))),
			price = item.price,
			weaponName = item.item
		})
		end
	end

	ESX.UI.Menu.CloseAll()
	PlaySoundFrontend(-1, 'BACK', 'HUD_AMMO_SHOP_SOUNDSET', false)

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop', {
		title = _U('shop_menu_title'),
		align = 'top-left',
		elements = elements
	}, function(data, menu)
		ESX.TriggerServerCallback('esx_weaponshop:buyWeapon', function(bought)
			if bought then
				DisplayBoughtScaleform(data.current.weaponName, data.current.price)
			else
				PlaySoundFrontend(-1, 'ERROR', 'HUD_AMMO_SHOP_SOUNDSET', false)
			end
		end, data.current.weaponName, zone)
	end, function(data, menu)
		PlaySoundFrontend(-1, 'BACK', 'HUD_AMMO_SHOP_SOUNDSET', false)
		ShopOpen = false
		menu.close()

		CurrentAction     = 'shop_menu'
		CurrentActionMsg  = _U('shop_menu_prompt')
		CurrentActionData = { zone = zone }
	end, function(data, menu)
		PlaySoundFrontend(-1, 'NAV', 'HUD_AMMO_SHOP_SOUNDSET', false)
	end)
end

function DisplayBoughtScaleform(weaponName, price)
	local scaleform = ESX.Scaleform.Utils.RequestScaleformMovie('MP_BIG_MESSAGE_FREEMODE')
	local sec = 4

	BeginScaleformMovieMethod(scaleform, 'SHOW_WEAPON_PURCHASED')

	PushScaleformMovieMethodParameterString(_U('weapon_bought', ESX.Math.GroupDigits(price)))
	PushScaleformMovieMethodParameterString(ESX.GetWeaponLabel(weaponName))
	PushScaleformMovieMethodParameterInt(GetHashKey(weaponName))
	PushScaleformMovieMethodParameterString('')
	PushScaleformMovieMethodParameterInt(100)

	EndScaleformMovieMethod()

	PlaySoundFrontend(-1, 'WEAPON_PURCHASE', 'HUD_AMMO_SHOP_SOUNDSET', false)

	Citizen.CreateThread(function()
		while sec > 0 do
			Citizen.Wait(0)
			sec = sec - 0.01
	
			DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
		end
	end)
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		if ShopOpen then
			ESX.UI.Menu.CloseAll()
		end
	end
end)


RegisterNetEvent('esx_weaponshop:openMenuMyNewFrend')
AddEventHandler('esx_weaponshop:openMenuMyNewFrend', function()

ESX.TriggerServerCallback('esx_license:checkLicense', function(hasWeaponLicense)
	if hasWeaponLicense then
		OpenShopMenu('GunShop')
	else
		OpenBuyLicenseMenu()
	end
end, GetPlayerServerId(PlayerId()), 'weapon')

end)

