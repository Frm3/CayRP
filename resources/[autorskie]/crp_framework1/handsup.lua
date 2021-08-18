Citizen.CreateThread(function()
	local dict = "missminuteman_1ig_2"

	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
	local handsup = false

	while true do
		Citizen.Wait(10)
		if IsControlJustPressed(1, 243) and GetLastInputMethod(2) and IsPedOnFoot(PlayerPedId()) then
			if not handsup then
				TaskPlayAnim(PlayerPedId(), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
				handsup = true
			else
				handsup = false
				ClearPedTasks(PlayerPedId())
			end
		end
	end
end)