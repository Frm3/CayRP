fx_version 'bodacious'
game 'gta5'

description 'RCore pool'

version '1.0.0'

client_scripts {
    'config.lua',
    'client/run.lua',
}

server_scripts { 
    'config.lua',
    'server/run.lua',
}

ui_page('client/html/sound.html')

files {
    'client/html/sound.html',
    
    'client/html/*.ogg',
}
