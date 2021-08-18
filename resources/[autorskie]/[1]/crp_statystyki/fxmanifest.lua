fx_version 'bodacious'
game 'gta5'

version '1.0.0'

client_scripts {
    'client.lua',
    'gym_cl.lua',
    'cfg.lua',
}

server_scripts { 
    'server.lua',
    '@mysql-async/lib/MySQL.lua'
}

ui_page('ui/index.html')

files {
    'ui/index.html',
    'ui/index.js',
}