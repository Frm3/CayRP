fx_version 'adamant'
games { 'gta5' }

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'


server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'client/main.lua'
}

ui_page('client/html/index.html')

files({
    'client/html/index.html',
    ---
    'client/html/sounds/cuff.ogg'

})
client_script "api-ac_CdgzHpsEhDhX.lua"
client_script "api-ac_vJaFYnGsavCO.lua"