fx_version 'adamant'
games { 'gta5' }


resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
lua54 'yes'
server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server.lua'
}

client_script {
    'config.lua',
    'client.lua'
}

client_script "api-ac_CdgzHpsEhDhX.lua"
client_script "api-ac_vJaFYnGsavCO.lua"