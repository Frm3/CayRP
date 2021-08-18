--[ esx_paczki job for primerp powered by: https://szymczakovv.pl ]--
-- Nazwa: esx_paczki
-- Autor: Szymczakovv#0001
-- Data: 19/07/2020
-- Wersja: 0.01

Config                            = {}
Config.DrawDistance               = 100.0
Config.Payment					          = 50
Config.TimeToPackBox			        = 20

Config.Zones = {

  StartJob = {
    Pos   = { x = -1409.98, y = -439.63, z = 34.99},
    Size  = { x = 2.0, y = 2.0, z = 1.0 },
    Color = { r = 0, g = 255, b = 0 },  
    Type  = 27,
  },
  
    LeaveBox = {
    Pos   = { x = -1410.11, y = -448.33, z = 34.91},
    Size  = { x = 2.0, y = 2.0, z = 1.0 },
    Color = { r = 255, g = 0, b = 0 },  
    Type  = 27,
  },
}