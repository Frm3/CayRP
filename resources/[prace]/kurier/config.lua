--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------

Config                            = {}

Config.Czasprzebierania	  = 2 -- 2 sekundy - czas przebierania

Config.pojazd             = 'mule2' -- pojazd firmowy

-- Ustawienia wypłat -- 
Config.Wyplata1					  = 130 -- najmniejsza zapłata za nieuszkodzoną paczkę
Config.Wyplata2 				  = 340 -- największa zapłata za nieuszkodzoną paczkę

Config.Uszkodzone1        = 40  -- najniższa zapłata za uszkodzoną paczkę
Config.Uszkodzone2        = 200 -- najwyższa zapłata za uszkodzoną paczkę

-- Ustawienia blipa (ikonki na mapie) -- 

Config.rodzaj = 417 -- 417
Config.wielkosc = 1.0 -- 1.0
Config.kolor  = 5 -- 5
Config.opis = 'Praca kuriera: Przebieralnia'


Config.StrefaPrzebieralnia = {
   Przebieralnia = {
    Pos   = { x = 82.58, y = 80.96, z = 77.7 },
    Size  = { x = 2.0, y = 2.0, z = 1.0 },
    Color = { r = 100, g = 255, b = 0 },  
    Type  = 25,
  }
}

Config.Strf1 = { 
wypozyczpojazd = {
    Pos   = { x = 85.43, y = 94.67, z = 77.7 },
    Size  = { x = 2.0, y = 2.0, z = 2.0 },
    Color = { r = 0, g = 100, b = 255 },  
    Type  = 25,
	}
}

Config.Strf2 = {
  oddajpojazd = {
    Pos   = { x = 82.82, y = 87.59, z = 77.7 },
    Size  = { x = 5.0, y = 5.0, z = 3.0 },
    Color = { r = 255, g = 100, b = 0 },  
    Type  = 25,
  }
}

Config.Strf3 = { 
  magazyn = {
      Pos   = { x = -1233.56, y = -2393.93, z = 13.5 },
      Size  = { x = 6.0, y = 6.0, z = 6.0 },
      Color = { r = 0, g = 100, b = 255 },  
      Type  = 25,
    }
  }

Config.Uniforms = {

  job_wear = {
    male = {
      ['tshirt_1'] = 15, ['tshirt_2'] = 1,
      ['torso_1'] = 61, ['torso_2'] = 0,
      ['decals_1'] = 0, ['decals_2'] = 0,
      ['arms'] = 4,
      ['pants_1'] = 49, ['pants_2'] = 3,
      ['shoes_1'] = 25, ['shoes_2'] = 0,
      ['helmet_1'] = 2, ['helmet_2'] = 0,
      ['chain_1'] = 13, ['chain_2'] = 0,
      ['ears_1'] = -1, ['ears_2'] = 0
    },
    female = {
      ['tshirt_1'] = 34, ['tshirt_2'] = 0,
      ['torso_1'] = 79, ['torso_2'] = 3,
      ['decals_1'] = 0, ['decals_2'] = 0,
      ['arms'] = 69,
      ['pants_1'] = 25, ['pants_2'] = 6,
      ['shoes_1'] = 32, ['shoes_2'] = 1,
      ['helmet_1'] = -1, ['helmet_2'] = 0,
      ['chain_1'] = 0, ['chain_2'] = 0,
      ['ears_1'] = -1, ['ears_2'] = 0
    }
  },
}

--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------