Config = {}

-- Which translation you wish to use ?
Config.Locale = "en"

-- Key settings
Config.keyToOpenTicketMenu = "E"
Config.keyToOpenComputer = "E"

-- Marker for buying ticket
Config.Arcade = {
    {
        NPC = {
            position = vector3(335.77, -915.19, 28.26),
            heading = 205.11,
            model = "ig_claypain",
        },
        blip = {
            position = vector3(335.9, -916.69, 28.25),
            blipId = 521,
            scale = 0.8,
            color = 0,
            name = "Salon Gier",
            shortRange = true,
            enable = true,
        },
        marker = {
            markerPosition = vector3(335.9, -916.69, 28.75),
            markerType = 23,
            options = {
                scale = { x = 1.0, y = 1.0, z = 1.0 },
                color = { r = 255, g = 255, b = 255, a = 125 },
            }
        },
    },
}

-- ticket price, and time in arcade.
Config.ticketPrice = {
    [_U("bronz")] = {
        price = 500,
        time = 20, -- in minutes
    },
    [_U("silver")] = {
        price = 1000,
        time = 30, -- in minutes
    },
    [_U("gold")] = {
        price = 1500,
        time = 40, -- in minutes
    },
}

-- is arcade payed ?
Config.enableGameHouse = true
-- do not change unless you know what you're doing
Config.GPUList = {
    [1] = "ETX2080",
    [2] = "ETX1050",
    [3] = "ETX660",
}

-- do not change unless you know what you're doing
Config.CPUList = {
    [1] = "U9_9900",
    [2] = "U7_8700",
    [3] = "U3_6300",
    [4] = "BENTIUM",
}

Config.MyList = {
    {
        name = "name",
        link = "bleh",
    },
}

-- game list for retro machine
Config.RetroMachine = {
    {
        name = "Pacman",
        link = "http://xogos.robinko.eu/PACMAN/",
    },
    {
        name = "Tetris",
        link = "http://xogos.robinko.eu/TETRIS/",
    },
    {
        name = "Super Mario",
        link = "https://centoshelp.org/mario/",
    },
    {
        name = "Ping Pong",
        link = "http://xogos.robinko.eu/PONG/",
    },
    {
        name = "Donkey Kong",
        link = "https://freekong.org",
    },
    {
        name = "DOOM",
        link = string.format("nui://rcore_arcade/html/msdos.html?url=%s&params=%s", "https://www.retrogames.cz/dos/zip/Doom.zip", "./DOOM.EXE"),
    },
    {
        name = "Duke Nukem 3D",
        link = string.format("nui://rcore_arcade/html/msdos.html?url=%s&params=%s", "https://www.retrogames.cz/dos/zip/duke3d.zip", "./DUKE3D.EXE"),
    },
    {
        name = "Wolfenstein 3D",
        link = string.format("nui://rcore_arcade/html/msdos.html?url=%s&params=%s", "https://www.retrogames.cz/dos/zip/Wolfenstein3D.zip", "./WOLF3D.EXE"),
    },
}

-- game list for gaming machine
Config.GamingMachine = {
    {
        name = "Slide a Lama",
        link = "http://lama.robinko.eu/fullscreen.html",
    },
    {
        name = "Uno",
        link = "https://duowfriends.eu/",
    },
    {
        name = "Ants",
        link = "http://ants.robinko.eu/fullscreen.html",
    },
    {
        name = "FlappyParrot",
        link = "http://xogos.robinko.eu/FlappyParrot/",
    },
    {
        name = "Zoopaloola",
        link = "http://zoopaloola.robinko.eu/Embed/fullscreen.html"
    },
    {
        name = "Snake",
        link = "https://snake.io"
    }
}

-- game list for super computer
Config.SuperMachine = {}

for i = 1, #Config.RetroMachine do
    table.insert(Config.SuperMachine, Config.RetroMachine[i])
end

for i = 1, #Config.GamingMachine do
    table.insert(Config.SuperMachine, Config.GamingMachine[i])
end

-- computer list in world
Config.computerList = {
    -- Retro machines
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(328.36, -927.86, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(328.31, -927.09, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(328.3, -926.29, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(328.26, -925.41, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(323.75, -919.91, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(323.74, -916.61, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(323.72, -915.67, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(323.72, -914.77, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(324.96, -912.94, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(325.89, -913.03, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.RetroMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 31,
        position = vector3(326.73, -912.94, 29.25),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 255, g = 255, b = 255, a = 125 },
            rotate = true,
        },
    },

    -- Gaming computers
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(328.5, -903.7, 29.75),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(330.38, -903.89, 29.75),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(332.05, -903.7, 29.75),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(337.46, -902.61, 29.75),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(339.2, -902.61, 29.75),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(340.93, -902.6, 29.72),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(342.6, -902.62, 29.72),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(325.26, -903.88, 29.75),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    {
        -- if false player dont need a ticket to play on this computer.
        isInGamingHouse = true,
        computerType = Config.GamingMachine,
        computerGPU = Config.GPUList[2],
        computerCPU = Config.CPUList[2],
        markerType = 42,
        position = vector3(327.03, -903.84, 29.75),
        markerOptions = {
            scale = { x = 0.5, y = 0.5, z = 0.5 },
            color = { r = 125, g = 125, b = 255, a = 125 },
            rotate = true,
        },
    },
    -- Super machines
}
