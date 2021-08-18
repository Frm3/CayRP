Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 150  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = false -- enable anti-combat logging?
Config.LoadIpl                    = false
Config.Locale = 'pl'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 10 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 20 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 20000

Config.RespawnPoint = { coords = vector3(316.62, -1376.82, 31.92), heading = 52.24}

Config.Hospitals = {

	PillBoxHospital = {

		Blip = {
			coords = vector3(301.65, -598.86, 43.28),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(301.75, -599.23, 42.28)
		},

		Pharmacies = {
			vector3(306.75, -601.81, 42.38)
		},

		Vehicles = {},

		Helicopters = {},

		FastTravels = {},

		FastTravelsPrompt = {}
	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	doctor = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}

	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	boss = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	emts = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	emtaparamedics = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	corporal = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	seniorparamedic = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	lieutenant = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	captain = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	major = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
	},

	assistantdirector = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}

	},

	director = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 100},
		{ model = 'dodgeems', label = 'dodgeems', price = 100}
		
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 150000 }
	},

	chief_doctor = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 150000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 300000 }
	},

	boss = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	emts = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	emtaparamedics = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	corporal = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	seniorparamedic = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	lieutenant = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }
	
	},

	captain = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	major = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	assistantdirector = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	},

	director = {
		{ model = 'polmav', label = 'Nagasaki Buzzard', price = 10000 },
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 250000 }

	}
}
