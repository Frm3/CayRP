local scenes = {}
RegisterNetEvent('szymczakovv-opis2:fetch', function()
    local _source = source
    TriggerClientEvent('szymczakovv-opis2:send', _source, scenes)
end)

RegisterNetEvent('szymczakovv-opis2:add', function(coords, message, color, distance)
    table.insert(scenes, {
        message = message,
        color = color,
        distance = distance,
        coords = coords
    })
    TriggerClientEvent('szymczakovv-opis2:send', -1, scenes)
end)

RegisterNetEvent('szymczakovv-opis2:delete', function(key)
    table.remove(scenes, key)
    TriggerClientEvent('szymczakovv-opis2:send', -1, scenes)
end)