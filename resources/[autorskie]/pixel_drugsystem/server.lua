ESX = nil
PlayersData = {}
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('pixel_drugsystemV2:RequestAction')
AddEventHandler('pixel_drugsystemV2:RequestAction', function(currentZone)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.UseCoordsFromServer then
        if Zones[currentZone] == nil then
            DropPlayer(source, 'Well, not this time bro ;D')
        end
        ItemLimit = Zones[currentZone].ItemLimit
        ItemToAdd = Zones[currentZone].ItemToAdd
        ItemToRemove = Zones[currentZone].ItemToRemove
    else
        if Config.Zones[currentZone] == nil then
            DropPlayer(source, 'Well, not this time bro ;D')
        end
        ItemLimit = Config.Zones[currentZone].ItemLimit
        ItemToAdd = Config.Zones[currentZone].ItemToAdd
        ItemToRemove = Config.Zones[currentZone].ItemToRemove
    end
    if ItemLimit <= xPlayer.getInventoryItem(ItemToAdd.name).count then
        xPlayer.showNotification(Config.Text["ErrorItemLimit"])
        return
    end
    if ItemToRemove ~= nil then
        if xPlayer.getInventoryItem(ItemToRemove.name).count >= ItemToRemove.count then
            xPlayer.removeInventoryItem(ItemToRemove.name, ItemToRemove.count)
        else
            xPlayer.showNotification(Config.Text["ErrorNoItem"])
            return
        end
    end
    TriggerClientEvent('pixel_drugsystemV2:StartAction', source)
    xPlayer.addInventoryItem(ItemToAdd.name, ItemToAdd.count)
end)

RegisterServerEvent('pixel_drugsystemV2:EndAction')
AddEventHandler('pixel_drugsystemV2:EndAction', function(currentZone)
   print("dafuq")
end)

Zones = {
    ["weed1"] = {
        ["ItemToAdd"] = {
            ["name"] = "Mefedron",
            ["count"] = 1,
        },
        ["ItemToRemove"] = nil,
        ["ItemLimit"] = 50,
        ["Coords"] = {x = -579.8, y = -1602.13, z = 224.15},
        ["Heading"] = 224.15,
        ["TaskTime"] = 10,
        ["Animation"] = {
            ["Dict"] = "anim@amb@business@coc@coc_unpack_cut_left@",
            ["Name"] = "coke_cut_v4_coccutter"
        }
    },
    
    ["weed2"] = {
        ["ItemToAdd"] = {
            ["name"] = "PMefedron",
            ["count"] = 1
        },
        ["ItemToRemove"] = {
            ["name"] = "Mefedron",
            ["count"] = 3
        },
        ["ItemLimit"] = 50,
        ["Coords"] = {x = 1113.28, y = -645.13, z = 57.65},
        ["Heading"] = 160.29,
        ["TaskTime"] = 10,
        ["Animation"] = {
            ["Dict"] = "anim@amb@business@coc@coc_unpack_cut_left@",
            ["Name"] = "coke_cut_v4_coccutter"
        }
    },

    ["coke1"] = {
        ["ItemToAdd"] = {
            ["name"] = "Kokaina",
            ["count"] = 1,
        },
        ["ItemToRemove"] = nil,
        ["ItemLimit"] = 50,
        ["Coords"] = {x = 2433.5, y = 4968.71, z = 42.35},
        ["Heading"] = 93.2,
        ["TaskTime"] = 10,
        ["Animation"] = {
            ["Dict"] = "anim@amb@business@coc@coc_unpack_cut_left@",
            ["Name"] = "coke_cut_v4_coccutter"
        }
    },

    ["coke2"] = {
        ["ItemToAdd"] = {
            ["name"] = "PKokaina",
            ["count"] = 1
        },
        ["ItemToRemove"] = {
            ["name"] = "Kokaina",
            ["count"] = 3
        },
        ["ItemLimit"] = 50,
        ["Coords"] = {x = 186.42, y = -1273.04, z = 29.2},
        ["Heading"] = 158.0,
        ["TaskTime"] = 10,
        ["Animation"] = {
            ["Dict"] = "anim@amb@business@coc@coc_unpack_cut_left@",
            ["Name"] = "coke_cut_v4_coccutter"
        }
    },

    ["Marihuana1"] = {
        ["ItemToAdd"] = {
            ["name"] = "Marihuana",
            ["count"] = 1
        },
        ["ItemToRemove"] = nil,
        ["ItemLimit"] = 50,
        ["Coords"] = {x = 2232.97, y = 5575.13, z = 53.85},
        ["Heading"] = 275.22,
        ["TaskTime"] = 10,
        ["Animation"] = {
            ["Dict"] = "anim@amb@business@coc@coc_unpack_cut_left@",
            ["Name"] = "coke_cut_v4_coccutter"
        }
    },
    ["Marihuana2"] = {
        ["ItemToAdd"] = {
            ["name"] = "PMarihuana",
            ["count"] = 1
        },
        ["ItemToRemove"] = {
            ["name"] = "Marihuana",
            ["count"] = 3
        },
        ["ItemLimit"] = 50,
        ["Coords"] = {x = 2251.47, y = 5155.63, z = 57.89},
        ["Heading"] = 158.0,
        ["TaskTime"] = 10,
        ["Animation"] = {
            ["Dict"] = "anim@amb@business@coc@coc_unpack_cut_left@",
            ["Name"] = "coke_cut_v4_coccutter"
        }
    }
}

RegisterServerEvent('pixel_drugsystemV2:RequestZones')
AddEventHandler('pixel_drugsystemV2:RequestZones', function()
    local identifier = GetPlayerIdentifier(source, 0)
    if PlayersData[identifier] == nil then
        if Config.UseCoordsFromServer then
            PlayersData[identifier] = true
            TriggerClientEvent('pixel_drugsystemV2:GetZones', source, Zones)
        end
    else
        DropPlayer(source, "Well, not this time bro ;D")
    end
end)

AddEventHandler('playerDropped', function(reas)
    local identifier = GetPlayerIdentifier(source, 0)
    PlayersData[identifier] = nil
end)
