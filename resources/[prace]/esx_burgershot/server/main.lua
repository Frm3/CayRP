ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'burgershot', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'burgershot', _U('burgershot_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'burgershot', 'burgershot', 'society_burgershot', 'society_burgershot', 'society_burgershot', {type = 'private'})



RegisterServerEvent('esx_burgershotjob:getStockItem')
AddEventHandler('esx_burgershotjob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_burgershot', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

RegisterServerEvent('esx_burgershotjob:Billing')--Not Working...
AddEventHandler('esx_burgershotjob:Billing', function(money, player)

  local xPlayer = ESX.GetPlayerFromId(source)
  local xTarget = ESX.GetPlayerFromId(player)
  local valor = money

    if xTarget.getMoney() >= valor then
      xTarget.removeMoney(valor)
      xPlayer.addMoney(valor)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, "O seu cliente nao tem esse dinheiro, valor: " ..valor)
	  TriggerClientEvent('esx:showNotification', xTarget.source, "Voce nao tem esse dinheiro, valor: " ..valor)
    end
end)--Not Working

ESX.RegisterServerCallback('esx_burgershotjob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_burgershot', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_burgershotjob:putStockItems')
AddEventHandler('esx_burgershotjob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_burgershot', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_burgershotjob:getFridgeStockItem')
AddEventHandler('esx_burgershotjob:getFridgeStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_burgershot_fridge', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_burgershotjob:getFridgeStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_burgershot_fridge', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_burgershotjob:putFridgeStockItems')
AddEventHandler('esx_burgershotjob:putFridgeStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_burgershot_fridge', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_burgershotjob:buyItem')
AddEventHandler('esx_burgershotjob:buyItem', function(itemName, price, itemLabel)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local limit = xPlayer.getInventoryItem(itemName).limit
    local qtty = xPlayer.getInventoryItem(itemName).count
    local societyAccount = nil

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_burgershot', function(account)
        societyAccount = account
      end)
    
    if societyAccount ~= nil and societyAccount.money >= price then
        if qtty < limit then
            societyAccount.removeMoney(price)
            xPlayer.addInventoryItem(itemName, 1)
            TriggerClientEvent('esx:showNotification', _source, _U('bought') .. itemLabel)
        else
            TriggerClientEvent('esx:showNotification', _source, _U('max_item'))
        end
    else
        TriggerClientEvent('esx:showNotification', _source, _U('not_enough'))
    end

end)


RegisterServerEvent('esx_burgershotjob:craftingCoktails')
AddEventHandler('esx_burgershotjob:craftingCoktails', function(Value)

    local _source = source
    local escolha = Value       
		if escolha == "shamburger" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('ccheese').count
            local bethQuantity      = xPlayer.getInventoryItem('fburger').count
            local gammaQuantity      = xPlayer.getInventoryItem('bread').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any chopped tomatoes")
            elseif bethQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any frozen beef patties")
            elseif gammaQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any bread")
            else
              TriggerClientEvent('esx:showNotification', _source, "Cooking a plain bun-burger")
              TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(20000)
                    TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)
                    TriggerClientEvent('esx:showNotification', _source, "You made a plain burger!")
                    xPlayer.removeInventoryItem('ccheese', 1)
                    xPlayer.removeInventoryItem('fburger', 1)
                    xPlayer.removeInventoryItem('bread', 1)
                    xPlayer.addInventoryItem('shamburger', 1)
            end
		elseif escolha == "hamburger" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('ccheese').count
            local bethQuantity      = xPlayer.getInventoryItem('ctomato').count
            local bethQuantity2      = xPlayer.getInventoryItem('clettuce').count
            local gammaQuantity      = xPlayer.getInventoryItem('fburger').count
            local gammaQuantity2      = xPlayer.getInventoryItem('bread').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any cheese")
            elseif bethQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any tomatoes")
            elseif bethQuantity2 < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any lettuce")
            elseif gammaQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any frozen burgers")
            elseif gammaQuantity2 < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any bread")
            else
              TriggerClientEvent('esx:showNotification', _source, "Cooking the burger")
              TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(25000)
              TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)   
                    TriggerClientEvent('esx:showNotification', _source, "You made a hamburger")
                    xPlayer.removeInventoryItem('ccheese', 1)
					          xPlayer.removeInventoryItem('ctomato', 2)
                    xPlayer.removeInventoryItem('clettuce', 1)
                    xPlayer.removeInventoryItem('fburger', 1)
                    xPlayer.removeInventoryItem('bread', 1)
                    xPlayer.addInventoryItem('hamburger', 1)
            end
		elseif escolha == "vhamburger" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('ctomato').count
            local bethQuantity      = xPlayer.getInventoryItem('clettuce').count
            local bethQuantity2      = xPlayer.getInventoryItem('fvburger').count
            local bethQuantity3      = xPlayer.getInventoryItem('vbread').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, "You need more tomatoes")
            elseif bethQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You need more lettuce")
            elseif bethQuantity2 < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You need more frozen veggie burgers")
            elseif bethQuantity2 < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You do not have any gluten-free bread")
            else
              TriggerClientEvent('esx:showNotification', _source, "Cooking a veggie burger")
              TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(25000)
                    TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)
                    TriggerClientEvent('esx:showNotification', _source, "You made a veggie burger~")
                    xPlayer.removeInventoryItem('ctomato', 2)
					          xPlayer.removeInventoryItem('clettuce', 1)
                    xPlayer.removeInventoryItem('fvburger', 1)
                    xPlayer.removeInventoryItem('vbread', 1)
                    xPlayer.addInventoryItem('vhamburger', 1)
            end
		elseif escolha == "nuggets4" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('nugget').count

            if alephQuantity < 4 then
                TriggerClientEvent('esx:showNotification', _source, "You need more chicken nuggets")
            else
              TriggerClientEvent('esx:showNotification', _source, "Cooking chicken nuggets")
              TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(20000)
                    TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)
                    TriggerClientEvent('esx:showNotification', _source, "You cooked four chicken nuggets")
                    xPlayer.removeInventoryItem('nugget', 4)
                    xPlayer.addInventoryItem('nuggets4', 1)
            end
    elseif escolha == "nuggets10" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('nugget').count

            if alephQuantity < 10 then
                TriggerClientEvent('esx:showNotification', _source, "You need more chicken nuggets")
            else
              TriggerClientEvent('esx:showNotification', _source, "Cooking chicken nuggets")
              TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(20000)
                    TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)
                    TriggerClientEvent('esx:showNotification', _source, "You made ten chicken nuggets")
                    xPlayer.removeInventoryItem('nugget', 10)
                    xPlayer.addInventoryItem('nuggets10', 1)
            end
    elseif escolha == "chips" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('potato').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, "You need more potatoes")
            else
              TriggerClientEvent('esx:showNotification', _source, "Cooking fries")
              TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(20000)
                    TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)
                    TriggerClientEvent('esx:showNotification', _source, "You made large fries")
                    xPlayer.removeInventoryItem('potato', 2)
                    xPlayer.addInventoryItem('chips', 1)
            end
  elseif escolha == "ctomato" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('tomato').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You need more tomatoes")
            else
              TriggerClientEvent('esx:showNotification', _source, "Chopping tomatoes")
              TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(15000)
                    TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)
                    TriggerClientEvent('esx:showNotification', _source, "You chopped up a tomato")
                    xPlayer.removeInventoryItem('tomato', 1)
                    xPlayer.addInventoryItem('ctomato', 4)
            end
  elseif escolha == "clettuce" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('lettuce').count

            if alephQuantity < 2 then
                TriggerClientEvent('esx:showNotification', _source, "You need more lettuce")
            else
              TriggerClientEvent('esx:showNotification', _source, "Chopping lettuce~")
              TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(15000)
                    TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)
                    TriggerClientEvent('esx:showNotification', _source, "You chopped up the lettuce")
                    xPlayer.removeInventoryItem('lettuce', 1)
                    xPlayer.addInventoryItem('clettuce', 4)
            end
  elseif escolha == "ccheese" then
            local xPlayer           = ESX.GetPlayerFromId(_source)

            local alephQuantity     = xPlayer.getInventoryItem('cheese').count

            if alephQuantity < 1 then
                TriggerClientEvent('esx:showNotification', _source, "You need more cheese")
            else
                TriggerClientEvent('esx:showNotification', _source, "Chopping cheese into slices")
                TriggerClientEvent('esx_burgershot:StartCookAnimation', _source)
                    Citizen.Wait(15000)
                    TriggerClientEvent('esx_burgershot:StopCookAnimation', _source)
                    TriggerClientEvent('esx:showNotification', _source, "You chopped up the cheese into five slices")
                    xPlayer.removeInventoryItem('cheese', 1)
                    xPlayer.addInventoryItem('ccheese', 5)
            end
		else
			TriggerClientEvent('esx:showNotification', _source, "Rip ~r~ERRO 404~w~")
		end
end)

RegisterServerEvent('esx_burgershotjob:shop')
AddEventHandler('esx_burgershotjob:shop', function(item, valor)

    local _source = source
    local xPlayer           = ESX.GetPlayerFromId(_source)
	local comida = item
	local preco = valor
	if xPlayer.getMoney() >= preco then
        xPlayer.removeMoney(preco)
        xPlayer.addInventoryItem(comida, 1)
	end
end)

ESX.RegisterServerCallback('esx_burgershotjob:getVaultWeapons', function(source, cb)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_burgershot', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    cb(weapons)

  end)

end)

ESX.RegisterServerCallback('esx_burgershotjob:addVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.removeWeapon(weaponName)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_burgershot', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = weapons[i].count + 1
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 1
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

ESX.RegisterServerCallback('esx_burgershotjob:removeVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.addWeapon(weaponName, 1000)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_burgershot', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 0
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

ESX.RegisterServerCallback('esx_burgershotjob:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)
