Config 					= {}

Config.Locale 			= 'en'
Config.DrawDistance 	= 10


local second = 1000
local minute = 60 * second
local hour = 60 * minute

Config.Zones = {
	
	['LaundryMat'] = {	
		Pos = { 
			{x = 1122.5 , y = -3194.98 , z = -41.30},
		},
		
		Jobs = {
			'any'
		},
		TaxRate = 0.80, -- set taxrate per spot. Default is 0.5 or 50% of the dirty you will get back in clean
		enableTimer = false, -- Enable ONLY IF you want a timer on the money washing. Keep in mind the Player does not have to stay at the wash for it to actually wash the money.
		timer = 5 * second, -- Actual Timer for the spot. The * amount will determine if its hours, second, or minutes. which are found above. DEFAULT: 5 * second
		Size = {x = 1.5, y = 1.5, z = 1.5},
		Color = {r = 120, g = 120, b = 0},
		Type = 27,
	
	}
}
