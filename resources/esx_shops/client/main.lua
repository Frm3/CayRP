ESX                           = nil
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local PlayerData              = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()

	ESX.TriggerServerCallback('esx_shops:requestDBItems', function(ShopItems)
		for k,v in pairs(ShopItems) do
			Config.Zones[k].Items = v
		end
	end)
end)

function OpenShopMenu(zone)
	PlayerData = ESX.GetPlayerData()

	local elements = {}
	for i=1, #Config.Zones[zone].Items, 1 do
		local item = Config.Zones[zone].Items[i]

		table.insert(elements, {
			label      = item.label .. ' - <span style="color: green;">$' .. item.price .. '</span>',
			label_real = item.label,
			item       = item.item,
			price      = item.price,

			-- menu properties
			value      = 1,
			type       = 'slider',
			min        = 1,
			max        = 25
		})
	end

	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop', {
		title    = _U('shop'),
		align    = 'bottom-right',
		elements = elements
	}, function(data, menu)
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
			title    = _U('shop_confirm', data.current.value, data.current.label_real, data.current.price * data.current.value),
			align    = 'bottom-right',
			elements = {
				{label = _U('no'),  value = 'no'},
				{label = _U('yes'), value = 'yes'}
			}
		}, function(data2, menu2)
			if data2.current.value == 'yes' then
				TriggerServerEvent('esx_shops:buyItem', data.current.item, data.current.value, zone)
			end

			menu2.close()
		end, function(data2, menu2)
			menu2.close()
		end)
	end, function(data, menu)
		menu.close()
		CurrentAction     = 'shop_menu'
		CurrentActionMsg  = _U('press_menu')
		CurrentActionData = {zone = zone}
	end)
end

RegisterNetEvent('esx_shops:ShopWasHere')
AddEventHandler('esx_shops:ShopWasHere', function()

	OpenShopMenu('Shop')

end)
RegisterNetEvent('esx_shops:DarkShop')
AddEventHandler('esx_shops:DarkShop', function()

	OpenShopMenu('DarkShop')

end)

RegisterNetEvent('esx_shops:Techniczny')
AddEventHandler('esx_shops:Techniczny', function()

	OpenShopMenu('Techniczny')

end)
