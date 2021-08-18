fx_version 'adamant'
games { 'gta5' }

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Ambulance Job'

version '1.1.1'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/cs.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'locales/cs.lua',
	'config.lua',
	'client/main.lua',
	'client/job.lua'
}

dependency 'es_extended'

client_script "api-ac_CdgzHpsEhDhX.lua"
client_script "api-ac_vJaFYnGsavCO.lua"