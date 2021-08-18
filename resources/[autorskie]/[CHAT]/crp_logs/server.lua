AddEventHandler('crp_logs:noembed', function(name, message, avatar, webhook)
PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = name, content = message, avatar_url = avatar}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('crp_logs:embed', function(name, message, avatar, webhook, color)
  local connect = {
        {
            ["color"] = color,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = "<3 CayRP By Misiek <3",
            },
        }
    }
  PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = connect, avatar = avatar}), { ['Content-Type'] = 'application/json' })
end)


AddEventHandler('srp_logs:ban', function(webhook, color, dla, hex, od, wygasa, powod)
  sendToDiscord(webhook, color, dla, hex, od, wygasa, powod)
end)

function sendToDiscord(webhook, color, dla, hex, od, wygasa, powod)
    local embed = {
      {
        ["color"] = 65280,
        ["description"] = '**DLA:'..dla..'\nSTEAM HEX: '..hex..'\nOD: '..od..'\nWYGASA: '..wygasa..'\nPOWÓD: '..powod..'**',
      }
  }
  print(json.encode({username = name, embeds = embed}))
  PerformHttpRequest(webhook, function(err, text, headers) print(err) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end