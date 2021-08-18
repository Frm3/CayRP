Config = {

--BLIPS FOR JOB CENTERS
BlipCenterSprite = 498,
BlipCenterColor = 3,
BlipCenterText = 'Urząd Pracy',

MarkerSprite = 27,
MarkerColor = {66, 135, 245},
MarkerSize = 1.1,

LocationsJobCenters = { 
	{coords = vector3(-551.18, -192.27, 38.33), blip = true}
},

--Boss menu locations
BossMenuLocations = {
	{coords = vector3(334.77, -593.48, 43.28), job = "ambulance", label = "MEDYK"},
	{coords = vector3(463.23, -985.35, 30.73), job = "police", label = "POLICE"},
	{coords = vector3(-215, -1318.79, 30.89), job = "mechanic", label = "MECHANIC"},
	{coords = vector3(-30.10, -1652.86, 29.49), job = "carshowroom", label = "Car Dealer"},

},



--Boss menu users by grade name and their permissions
BossMenuUsers = {

	['boss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['recruit'] = {canWithdraw = false, canDeposit = true, canHire = false, canRank = false, canFire = false, canBonus = false}

},


DefaultJobsInJobCenter = { -- Jobs that can be added by going to the job center. For icons use https://fontawesome.com/
	{job = 'taxi', label = "Taxi", icon = "fas fa-taxi", description = ""},
	{job = 'janush', label = "Janush Trans", icon = "fas fa-truck", description = ""},
	{job = 'kurier', label = "Kurier", icon = "fas fa-truck-loading", description = ""},
	{job = 'sadownik', label = "Sadownik", icon = "fas fa-tree", description = ""},
	{job = 'unemployed', label = "Bezrobotny", icon = "fas fa-user-times", description = ""}

},


Text = {

	['open_jobcenter_ui_hologram'] = '[~b~E~w~] Otwórz Centrum Pracy',
	['promoted'] = 'Zostałeś awansowany/a',
	['promoted_other'] = 'Zostałeś awansowany/a w innej pracy!',
	['fired'] = 'Zostałeś zwolniony',
	['fired_other'] = 'Zostałeś zwolniony',
	['hired'] = 'Zostałeś zatrudniony',
	['bossmenu_hologram'] = '[~b~E~w~] Otwórz menu szefa',
	['action_success'] = 'Akcja powiodła się',
	['action_unsuccessful'] = 'Akcja nie powiodła się',
	['cant_access_bossmenu'] = 'Nie możesz uzyskać dostępu do menu szefa',
	['insufficent_balance'] = 'Niewystarczająca ilość środków',
	['bonus_given'] = 'Bonus został przyznany!',
	['bonus_recieved'] = 'Otrzymałeś bonus! +$'

}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		TriggerEvent("FeedM:showNotification", msg)
		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('error', msg)

end

