local Keys = {
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

local GUI                     = {}
GUI.Time                      = 0
local Instance                = {}
local InstanceInvite          = nil
local InstancedPlayers        = {}
local RegisteredInstanceTypes = {}
local InsideInstance          = false

ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

function CreateInstance(type, data, canHost, trigger)
  TriggerServerEvent('instance:create', type, data, canHost, trigger)
end

function CloseInstance()
  Instance = {}
  TriggerServerEvent('instance:close')
  InsideInstance = false
end

function EnterInstance(instance, canHost, trigger)
  InsideInstance = true
  TriggerServerEvent('instance:enter', instance.host, canHost)
  if RegisteredInstanceTypes[instance.type].enter then
    RegisteredInstanceTypes[instance.type].enter(instance, trigger)
  end
end

function LeaveInstance(trigger)
  if Instance.host then
    ESX.ShowNotification(_U('left_instance'))
    if RegisteredInstanceTypes[Instance.type].exit then
      RegisteredInstanceTypes[Instance.type].exit(Instance, trigger)
    end

    TriggerServerEvent('instance:leave', Instance.host)
  end

  InsideInstance = false
end

function InviteToInstance(type, player, data)
  TriggerServerEvent('instance:invite', Instance.host, type, player, data)
end

function RegisterInstanceType(type, enter, exit)
  RegisteredInstanceTypes[type] = {
    enter = enter,
    exit  = exit
  }
end

AddEventHandler('instance:channel', function(cb)
  cb(Instance.host)
end)

AddEventHandler('instance:get', function(cb)
  cb(Instance)
end)

AddEventHandler('instance:create', function(type, data)
  CreateInstance(type, data, true, true)
end)

AddEventHandler('instance:findOrCreate', function(type, data, canHost, trigger)
  ESX.TriggerServerCallback('instance:find', function(instance)
    if instance then
      EnterInstance(instance, true, trigger)
    else
      CreateInstance(type, data, canHost, trigger)
    end
  end, data)
end)

AddEventHandler('instance:close', function()
  CloseInstance()
end)

AddEventHandler('instance:enter', function(instance, trigger)
  EnterInstance(instance, false, trigger)
end)

AddEventHandler('instance:leave', function(trigger)
  LeaveInstance(trigger)
end)

AddEventHandler('instance:invite', function(type, player, data)
  InviteToInstance(type, player, data)
end)

AddEventHandler('instance:registerType', function(name, enter, exit)
  RegisterInstanceType(name, enter, exit)
end)

RegisterNetEvent('instance:onInstancedPlayersData')
AddEventHandler('instance:onInstancedPlayersData', function(instancedPlayers)
  InstancedPlayers = instancedPlayers
end)

RegisterNetEvent('instance:onCreate')
AddEventHandler('instance:onCreate', function(instance, trigger)
  Instance = {}
end)

RegisterNetEvent('instance:onEnter')
AddEventHandler('instance:onEnter', function(instance)
  Instance = instance
end)

RegisterNetEvent('instance:onLeave')
AddEventHandler('instance:onLeave', function(instance)
  Instance = {}
end)

RegisterNetEvent('instance:onClose')
AddEventHandler('instance:onClose', function(instance)
  Instance = {}
end)

RegisterNetEvent('instance:onRehost')
AddEventHandler('instance:onRehost', function(instance)
  Instance = instance
end)

RegisterNetEvent('instance:onPlayerEntered')
AddEventHandler('instance:onPlayerEntered', function(instance, player)
  Instance = instance
  ESX.ShowNotification(_U('entered_into', player))
end)

RegisterNetEvent('instance:onPlayerLeft')
AddEventHandler('instance:onPlayerLeft', function(instance, player)
  Instance = instance
  ESX.ShowNotification(_U('left_out', player))
end)

RegisterNetEvent('instance:onInvite')
AddEventHandler('instance:onInvite', function(instance, type, data)
  InstanceInvite = {
    type = type,
    host = instance,
    data = data
  }

  Citizen.CreateThread(function()
    Citizen.Wait(15000)
    if InstanceInvite then
      ESX.ShowNotification(_U('invite_expired'))
      InstanceInvite = nil
    end
  end)
end)

RegisterInstanceType('default')

-- Input invites
Citizen.CreateThread(function()
  while true do
    if InstanceInvite ~= nil then
      Citizen.Wait(0)
      SetTextComponentFormat('STRING')
      AddTextComponentString(_U('press_to_enter'))
      DisplayHelpTextFromStringLabel(0, 0, 1, -1)
    else
      Citizen.Wait(500)
    end
  end
end)

-- Controls
Citizen.CreateThread(function()
  while true do
    if InstanceInvite ~= nil then
      Citizen.Wait(0)
      if IsControlPressed(0, Keys['E']) and (GetGameTimer() - GUI.Time) > 150 then
        EnterInstance(InstanceInvite, false, true)
        ESX.ShowNotification(_U('entered_instance'))
        InstanceInvite = nil
        GUI.Time = GetGameTimer()
      end
    else
      Citizen.Wait(500)
    end
  end
end)

-- Instance players
local cache = {}
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(200)

    local tmp = {}
    for _, player in ipairs(InstancedPlayers) do
      tmp[GetPlayerFromServerId(player)] = player
    end

    if Instance.host then
	  tmp[GetPlayerFromServerId(Instance.host)] = nil
      for _, player in ipairs(Instance.players) do
        tmp[GetPlayerFromServerId(player)] = nil
      end
	end

	local pid, id = PlayerPedId(), PlayerId()
    for _, player in ipairs(GetActivePlayers()) do
      if player ~= id then
	    local sid = tmp[player]
        if not sid then
		  local cid = GetPlayerServerId(player)
		  if cid and cache[cid] then
		    cache[cid] = false

            local ped = GetPlayerPed(player)
		    if ped ~= 0 then
     		  SetEntityVisible(ped, true, 0)
			  SetEntityNoCollisionEntity(pid, ped, false)
            end
          end
        end
      end
	end
  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)

    local tmp = {}
    for _, player in ipairs(InstancedPlayers) do
      tmp[GetPlayerFromServerId(player)] = player
    end

    if Instance.host then
	  tmp[GetPlayerFromServerId(Instance.host)] = nil
      for _, player in ipairs(Instance.players) do
        tmp[GetPlayerFromServerId(player)] = nil
      end
	end

	local pid, id = PlayerPedId(), PlayerId()
    for _, player in ipairs(GetActivePlayers()) do
      if player ~= id then
	    local sid = tmp[player]
        if sid then-- and not cache[sid]
          local ped = GetPlayerPed(player)
          if ped ~= 0 then
            cache[sid] = true
            SetEntityVisible(ped, false, 0)
            SetEntityNoCollisionEntity(pid, ped, true)
		  end
	    end
      end
    end
  end
end)

Citizen.CreateThread(function()
  Citizen.Wait(3000)
  TriggerEvent('instance:loaded')
end)

-- Fix vehicles randomly spawning nearby the player inside an instance
Citizen.CreateThread(function()
    while true do
        if InsideInstance then
            Citizen.Wait(0)

            local pos = GetEntityCoords(PlayerPedId())
            RemoveVehiclesFromGeneratorsInArea(pos.x - 500.0, pos.y - 500.0, pos.z - 500.0, pos.x + 500.0, pos.y + 500.0, pos.z + 500.0)
        else
            Citizen.Wait(500)
        end
    end
end)