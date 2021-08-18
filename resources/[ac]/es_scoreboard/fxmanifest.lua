fx_version "bodacious"
games {"gta5"}

description 'ESX Scoreboard from ExileRP 3.0'

version '1.0.0'

server_script 'server/main.lua'

client_script 'client/main.lua'

ui_page 'html/scoreboard.html'

files {
	'html/scoreboard.html',
	'html/style.css',
	'html/listener.js',
	'html/logo.png'
}

exports {
    'BierFrakcje'
 }