Config = {}

----------------------------------------------------
-------- Intervalles en secondes -------------------
----------------------------------------------------

-- Temps d'attente Antispam / Waiting time for antispam
Config.AntiSpamTimer = math.random(1,5)

-- Vérification et attribution d'une place libre / Verification and allocation of a free place
Config.TimerCheckPlaces = 3

-- Mise à jour du message (emojis) et accès à la place libérée pour l'heureux élu / Update of the message (emojis) and access to the free place for the lucky one
Config.TimerRefreshClient = 1

-- Mise à jour du nombre de points / Number of points updating
Config.TimerUpdatePoints = 2

----------------------------------------------------
------------ Nombres de points ---------------------
----------------------------------------------------

-- Nombre de points gagnés pour ceux qui attendent / Number of points earned for those who are waiting
Config.AddPoints = 1

-- Nombre de points perdus pour ceux qui sont entrés dans le serveur / Number of points lost for those who entered the server
Config.RemovePoints = 1

-- Nombre de points gagnés pour ceux qui ont 3 emojis identiques (loterie) / Number of points earned for those who have 3 identical emojis (lottery)
Config.LoterieBonusPoints = 0

-- Accès prioritaires / Priority access
Config.Points = {
	{'steam:110000116a199f2', 5500}, --Pindi
	{'steam:11000011b29d297', 5500}, --Mapiot
	{'steam:110000115a5ea25', 5500}, -- Dominik
}


Config.NoSteam = "Aby otrzymać bilet na wyspę potrzebujesz STEAM"


Config.EnRoute = "Dołączanie..."

Config.PointsRP = " - priorytetowy bilet"


Config.Position = "Jesteś na pozycji "

Config.EmojiMsg = "Jeśli emotki nie ruszają się zrestartuj FiveM: "


Config.EmojiBoost = "" .. Config.LoterieBonusPoints .. " "


Config.PleaseWait_1 = "Proszę czekać "
Config.PleaseWait_2 = " sek."

Config.Accident = "BŁĄD"

Config.Error = " BŁĄD"



Config.EmojiList = {
	'💍', 
	'⚡️',
	'✨',
	'⭐️',
	'��',
	'👃',
	'👑',
	'💦',
	'🌎'
}
