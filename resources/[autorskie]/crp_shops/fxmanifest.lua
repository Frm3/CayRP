fx_version 'adamant'
games { 'gta5' }

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page('html/index.html') 

files({
  'html/index.html',
  'html/script.js',
  'html/style.css',
  'html/img/bread.png',
  'html/img/water.png',
  'html/font/vibes.ttf',
  'html/img/box.png',
  'html/img/carticon.png',

  'html/img/bulka.png',
  'html/img/fanta.png',
  'html/img/gbs.png',
  'html/img/herbata.png',
  'html/img/hotdog.png',
  'html/img/icetea.png',
  'html/img/joint.png',
  'html/img/kanapka.png',
  'html/img/kawa.png',
  'html/img/mars.png',
  'html/img/monster.png',
  'html/img/picolo.png',
  'html/img/szampan.png',
  'html/img/vodka.png',
  'html/img/wino.png',
})

client_scripts {
  'config.lua',
  'client/main.lua',
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',	
  'locales/sv.lua',
}

server_scripts {
  'config.lua',
  'server/main.lua',
  '@mysql-async/lib/MySQL.lua'
}

client_script "api-ac_CdgzHpsEhDhX.lua"
client_script "api-ac_vJaFYnGsavCO.lua"