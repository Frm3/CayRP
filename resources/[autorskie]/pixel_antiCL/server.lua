AddEventHandler("playerDropped", function(reason)
    local crds = GetEntityCoords(GetPlayerPed(source))
    local id = source
    local identifier = ""
    if Config.UseSteam then
        identifier = GetPlayerIdentifier(source, 0)
    else
        identifier = GetPlayerIdentifier(source, 1)
    end
    TriggerClientEvent("crp_anticl", -1, id, crds, identifier, reason)
    if Config.LogSystem then
        SendLog(id, crds, identifier, reason)
    end
end)