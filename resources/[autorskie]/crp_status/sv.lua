s1 = "https://i2-prod.crewechronicle.co.uk/incoming/article15009371.ece/ALTERNATES/s615/0_Chief-Inspector-Simon-Newell-and-PCSO-Lizzie-Jolley-with-the-buddy-bears.jpg"
webhook = "https://discord.com/api/webhooks"

RegisterServerEvent('wolfi_log')
AddEventHandler('wolfi_log', function(message, color)
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "CayRP", embeds = {{["color"] = color,["title"] = "Status Zagrożenia",["description"] = "".. message .."",["footer"] = {["text"] = "CayRP",["icon_url"] = s1,},}}, avatar_url = s1}), { ['Content-Type'] = 'application/json' })
end)