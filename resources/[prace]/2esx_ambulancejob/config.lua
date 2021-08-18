Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 255, g = 0, b = 0 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.ReviveReward               = 150  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = false -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders
Config.Locale                     = 'pl'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 10 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 20 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

Config.Blip = {
	Pos     = { x = 314.15, y = -591.72, z = 43.28 },
	Sprite  = 61,
	Display = 4,
	Scale   = 1.2,
	Colour  = 2,
}

Config.HelicopterSpawner = {
	SpawnPoint = { x = 338.49, y = -587.69, z = 74.16 },
	Heading    = 0.0
}

Config.HelicopterSpawner1 = {
	SpawnPoint = { x = -252.18, y = 6319.01, z = 39.66 },
	Heading    = 0.0
}


-- https://wiki.fivem.net/wiki/Vehicles
Config.AuthorizedVehicles = {
  
      	{
		model = 'ambulance',
		label = 'Karetka'
	},
	{
		model = 'dodgeEMS',
		label = 'DodgeCharger2018'
	},
	{
		model = 'DodgeRam2016_ems',
		label = 'DodgeRam2016'
	},
	{
		model = 'ems_tahoe',
		label = 'Tahoe'
	},
	{
		model = 'ems_explorer',
		label = 'Expolorer'
	},
        {
		model = 'r1custom',
		label = 'MotocyklEMS (nie jedz tym)'
	},
        {
		model = 'fordmustang2019_ems',
		label = 'FordMustang'
	},
        {
		model = 'uh1nasa',
		label = 'Helikopioter'
	},

}

Config.Zones = {

	AmbulanceActions1 = { -- Cloakroom
		Pos	= { x = -252.8, y = 6336.05, z = 32.43 },
		Type = 31
	},

	VehicleSpawner1 = {
		Pos	= { x = -231.9, y = 6320.61, z = 31.48 },
		Type = 36
	},

	VehicleSpawnPoint1 = {
		Pos	= { x = -253.22, y = 6347.13, z = 32.43 },
		Type = -1
	},

	VehicleDeleter1 = {
		Pos	= { x = -252.54, y = 6341.16, z = 32.43 },
		Type = 24
	},



	HospitalInteriorEntering1 = { -- Main entrance
		Pos	= { x = 294.2, y = -1448.60, z = -120.0 },
		Type = 1
	},

	HospitalInteriorInside1 = {
		Pos	= { x = 272.8, y = -1358.8, z = -23.5 },
		Type = -1
	},

	HospitalInteriorOutside1 = {
		Pos	= { x = 295.8, y = -1446.5, z = -28.9 },
		Type = -1
	},

	HospitalInteriorExit1 = {
		Pos	= { x = 275.7, y = -1361.5, z = -23.5 },
		Type = 1
	},

	HospitalInteriorEntering2 = { -- Lift go to the roof
		Pos	= { x = 247.1, y = -1371.4, z = -23.5 },
		Type = 1
	},

	HospitalInteriorInside2 = { -- Roof outlet
		Pos	= { x = 333.1,	y = -1434.9, z = -45.5 },
		Type = -1
	},

	HospitalInteriorOutside2 = { -- Lift back from roof
		Pos	= { x = 249.1,	y = -1369.6, z = -23.5 },
		Type = -1
	},

	HospitalInteriorExit2 = { -- Roof entrance
		Pos	= { x = 335.5, y = -1432.0, z = -45.5 },
		Type = 1
	},

	AmbulanceActions = { -- Cloakroom
		Pos	= { x = 301.65, y = -598.86, z = 43.28 },
		Type = 31
	},


	Pharmacy = {
		Pos	= { x = 306.75, y = -601.81, z = 42.38 },
		Type = 27
	},

	ParkingDoorGoOutInside = {
		Pos	= { x = 234.56, y = -1373.77, z = -20.97 },
		Type = 1
	},

	ParkingDoorGoOutOutside = {
		Pos	= { x = 320.98, y = -1478.62, z = -28.81 },
		Type = -1
	},

	ParkingDoorGoInInside = {
		Pos	= { x = 238.64, y = -1368.48, z = -23.53 },
		Type = -1
	},

	ParkingDoorGoInOutside = {
		Pos	= { x = 317.97, y = -1476.13, z = -28.97 },
		Type = 1
	},

	StairsGoTopTop = {
		Pos	= { x = 251.91, y = -1363.3, z = -38.53 },
		Type = -1
	},

	StairsGoTopBottom = {
		Pos	= { x = 237.45, y = -1373.89, z = -26.30 },
		Type = -1
	},

	StairsGoBottomTop = {
		Pos	= { x = 256.58, y = -1357.7, z = -37.30 },
		Type = -1
	},

	StairsGoBottomBottom = {
		Pos	= { x = 235.45, y = -1372.89, z = -26.30 },
		Type = -1
	}

}