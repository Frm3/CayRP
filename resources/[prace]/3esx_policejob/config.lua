Config                            = {}


Config.DrawDistance			    = 10.0
Config.MarkerType			    = 27
Config.MarkerSize			    = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor			    = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true
Config.EnableNonFreemodePeds      = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true 

Config.EnableJobBlip              = true

Config.EnableHandcuffTimer        = true
Config.HandcuffTimer              = 10 * 60000

Config.MaxInService               = -1
Config.Locale = 'pl'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Pos     = { x = 444.45, y = -983.82, z = 31.72 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.5,
			Colour  = 63,
		},

		Info = {
			{ x = 459.44, y = -985.47, z = 0 }
		},
         

		Cloakrooms = {
			{ x = 463.19, y = -999.0, z = 29.85 },			--Mission Row
			{ x = 460.49, y = -998.9, z = 29.85 },
			{ x = 460.8, y = -996.38, z = 29.85 },
			{ x = 462.98, y = -996.43, z = 29.85 },
		},

		Armories = {
			{ x = 482.6, y = -995.77, z = 29.85 },	--Mission Row		
		},
		
		Vehicles = {},

		Helicopters = {
			{
				Spawner    = { x = -1096.0172, y = -831.7057, z = 36.9 },
				SpawnPoint = { x = -1096.0172, y = -831.7057, z = 36.9 },
				Heading    = 0.0,
			},
            {
				Spawner    = { x = 1867.44, y = 3646.84, z = 35.82 },
				SpawnPoint = { x = 1867.44, y = 3646.84, z = 35.82 },
                Heading    = 0.0,
			}

		},

		VehicleDeleters = {},
		BossActions = {},

	},

}

Config.VehicleGroups = {}
Config.AuthorizedVehicles = {}

Config.Uniforms = {
	recruit_wear = {
        male = {
            ['tshirt_1'] = 1,  ['tshirt_2'] = 0,
            ['torso_1'] = 11,   ['torso_2'] = 2,
            ['arms'] = 0,
            ['pants_1'] = 88,   ['pants_2'] = 5,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 7,  ['helmet_2'] = 1,
		},
		female = {
			['tshirt_1'] = 8,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['arms'] = 31,
			['pants_1'] = 61,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['bproof_1'] = 19,  ['bproof_2'] = 0,
		}
	},
	
	officer_wear = {
		male = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 11,   ['torso_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 88,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 7,  ['helmet_2'] = 1,
		},
		female = {
			['tshirt_1'] = 8,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['arms'] = 31,
			['pants_1'] = 61,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['bproof_1'] = 14,  ['bproof_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
		}
	},

	sergeant_wear = {
		male = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 214,   ['torso_2'] = 2,
			['pants_1'] = 88,   ['pants_2'] = 5,
			['arms'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 7,  ['helmet_2'] = 1,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
		},
	female = {
		['tshirt_1'] = 34,  ['tshirt_2'] = 0,
		['torso_1'] = 84,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 31,
		['pants_1'] = 54,   ['pants_2'] = 1,
		['shoes_1'] = 25,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 3,    ['chain_2'] = 0,
		['ears_1'] = 0,     ['ears_2'] = 0,
		}
	},

	lieutenant_wear = {
		male = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 11,   ['torso_2'] = 4,
			['pants_1'] = 88,   ['pants_2'] = 5,
			['arms'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 7,  ['helmet_2'] = 1,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
		},
		female = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 92,   ['torso_2'] = 0,
			['arms'] = 27,
			['pants_1'] = 61,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 7,  ['helmet_2'] = 4,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['bproof_1'] = 22,  ['bproof_2'] = 0
		},
	},

	kapitan_wear = {
		male = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 32,   ['torso_2'] = 0,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['arms'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 7,  ['helmet_2'] = 6,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['glasses_1'] = 5, ['glasses_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
		},
	},

	boss_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 132,   ['torso_2'] = 0,
			['arms'] = 12,
			['pants_1'] = 52,   ['pants_2'] = 2,
			['shoes_1'] = 21,   ['shoes_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
		},
		female = {
			['tshirt_1'] = 34,  ['tshirt_2'] = 0,
			['torso_1'] = 84,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 31,
			['pants_1'] = 54,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 3,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
		},
	},

	swat_wear = {
        male = {
            ['tshirt_1'] = 143,  ['tshirt_2'] = 0,
            ['torso_1'] = 151,   ['torso_2'] = 0,
            ['bproof_1'] =4 ,  ['bproof_2'] = 1,
            ['arms'] = 44,
            ['pants_1'] = 88,   ['pants_2'] = 0,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = 117,  ['helmet_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['mask_1'] = 55,  ['mask_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 35,  ['tshirt_2'] = 0,
            ['torso_1'] = 48,   ['torso_2'] = 0,
            ['decals_1'] = 8,   ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 34,   ['pants_2'] = 0,
            ['shoes_1'] = 27,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0
        }
    },

	gu_wear = {
		male = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 97,   ['torso_2'] = 0,
			['mask_1'] = 52,  ['mask_2'] = 10,
			['arms'] = 1,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 9,  ['helmet_2'] = 3,
			['chain_1'] = 1,    ['chain_2'] = 0,
           		['ears_1'] = 0,     ['ears_2'] = 0,
            		['mask_1'] = 17,  ['mask_2'] = 0,
            		['decals_1'] = 27,   ['decals_2'] = 1,
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 231,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['mask_1'] = 52,  ['mask_2'] = 10,
			['arms'] = 23,
			['pants_1'] = 90,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 116,  ['helmet_2'] = 2,
			['chain_1'] = 3,    ['chain_2'] = 0,
			['bags_1'] = 44,	['bags_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
			['bproof_1'] = 17,  ['bproof_2'] = 2,
		},
	},

	motocykl_wear = {
		male = {
			['tshirt_1'] = 13,  ['tshirt_2'] = 0,
			['torso_1'] = 131,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 1,
			['pants_1'] = 33,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 17,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0,
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
		}
    },
    
    dodatkowy_wear = {
		male = {
			['tshirt_1'] = 1,  ['tshirt_2'] = 0,
			['torso_1'] = 31,   ['torso_2'] = 0,
			['arms'] = 1,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 13,  ['helmet_2'] = 2,
			['chain_1'] = 128,    ['chain_2'] = 0,
            ['ears_1'] = 0,     ['ears_2'] = 0,
        }
    },
    
	bullet_wear = {
		male = {
			['bproof_1'] = 27,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 5,  ['bproof_2'] = 0
		}
    },
	gilet_wear = {
		male = {
			['bproof_1'] = 1,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 10,  ['bproof_2'] = 0
		}
	},
}