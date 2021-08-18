description 'h4rv3y-admin created by MaxWhi#0770'

author 'MaxWhi#0770'
description 'h4rv3y-armoury made for NightWatchRP V1'
version '1.2.0'

client_scripts {
    "client.lua"
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "server.lua"
}

shared_scripts {
    "config.lua"
}

fx_version 'adamant'
games {'gta5'}