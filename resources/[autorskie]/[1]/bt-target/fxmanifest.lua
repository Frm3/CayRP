fx_version 'adamant'

game 'gta5'

dependencies {
    "PolyZone"
}

ui_page 'html/index.html'

client_scripts {
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
	'config.lua',
	'client/main.lua',
	'plugins/**/**_c.lua'
}

server_scripts {
	'plugins/**/**_s.lua'
}

files {
	'html/index.html',
	'html/css/style.css',
	'html/js/script.js',
}
