local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

---------------------------------------------------------------------------
--- Get's Character Information
---------------------------------------------------------------------------
function getIdentity(id)
	local identifier = id
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height'],
			phone_number = identity['phone_number']
		}
	else
		return nil
	end
end
---------------------------------------------------------------------------
--- Take Item
---------------------------------------------------------------------------
RegisterServerEvent("h4rv3y-armoury:takeitem")
AddEventHandler("h4rv3y-armoury:takeitem", function(item, amm, cena, imie)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  
  if xPlayer and xPlayer.getMoney() > cena then
	xPlayer.addInventoryItem(item, amm)
	xPlayer.removeMoney(cena)
	TriggerEvent('h4vr3y-armoury:sendToDiscord', imie)
	xPlayer.showNotification("Wziąłeś 1x "..imie..". Zostało to udokumentowane")
  else
	xPlayer.showNotification('Nie masz kasy')
  end
end)
---------------------------------------------------------------------------
--- To Discord Webhook
---------------------------------------------------------------------------
RegisterServerEvent('h4vr3y-armoury:sendToDiscord')
AddEventHandler('h4vr3y-armoury:sendToDiscord', function(itemType)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local id = ESX.GetPlayerFromId(_source).getIdentifier()
  local name = getIdentity(id)
  fullname = name.firstname  .. ' ' .. name.lastname
  local DATE = os.date(" %H:%M %d.%m.%y")

  if xPlayer then
    local message = "```" ..fullname.. " ["..id.."] | wzioł "..itemType.." | Czas: "..DATE.."```"
    PerformHttpRequest(""..Config.DiscordWebook.."", function(err, text, headers) end, 'POST', json.encode({username = "Police Armory", content = message}), { ['Content-Type'] = 'application/json' })
  end
end)
