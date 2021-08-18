Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

Config = {}	

Config.PoliceDatabaseName = 'police' -- police job name

Config.DiscordWebook = "https://discordapp.com/api/webhooks/859777304297340928/qv5ogYa8Hf2-gWtmTTJJNWJEXFoAr_IkLX4msJQYS3OBhEwI24bgJ7mvUix29tDzUH89"

Config.usingDiscInventory = false -- Set to fale if you are not using disc-inventoryhud

Config.ammoAmount = 0 -- For if you are not using disc-inventoryhud

Config.Armoury = {
	PoliceCarbine = {
		RankLocked = 0, -- The minimum rank to access the armoury type
		Name = "Latarka",
		Weapon = "flashlight",
		PerOne = 1,
		Cena = 2500,
		Pos = {
			{x = 480.49,  y = -995.23, z = 30.69}, -- Mission Row
		}
	},
	
	PoliceCarbineMk2 = {
		RankLocked = 0,
		Name = "Tejzer",
		Weapon = "stungun",
		PerOne = 1,
		Cena = 5000,
		Pos = {
			{x = 482.54,  y = -995.22, z = 30.69}, -- Mission Row
		}
    },

	PolicePistolMk2 = {
		RankLocked = 0,
		Name = "Pistolet",
		Weapon = "pistol",
		PerOne = 1,
		Cena = 20000,
		Pos = {
			{x = 486.48,  y = -995.2, z = 30.69}, -- Mission Row
		}
    },

	PoliceTaser = {
		RankLocked = 0,
		Name = "Pałka",
		Weapon = "nightstick",
		PerOne = 1,
		Cena = 500,
		Pos = {
			{x = 481.39,  y = -995.06, z = 30.69}, -- Mission Row
		}
	},
	PoliceAmmo = {
		RankLocked = 0,
		Name = "Amunicje Do Pistoletu",
		Weapon = "pistol_ammo",
		PerOne = 200,
		Cena = 10000,
		Pos = {
			{x = 487.68,  y = -998.32, z = 30.69}, -- Mission Row
		}
	}
}