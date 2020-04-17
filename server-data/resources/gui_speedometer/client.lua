Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		
		if playerPed then
			playerCar = GetVehiclePedIsIn(playerPed, false)
			if playerCar and GetPedInVehicleSeat(playerCar, -1) == playerPed then
				carSpeed = GetEntitySpeed(playerCar)
				speedKmh = math.ceil(carSpeed * 3.6)
				speedMph = math.ceil(carSpeed * 2.236936)

				SendNUIMessage({
					showhud = true,

					unitLine1 = "KM/H",
					speedLine1 = speedKmh,
					
					unitLine2 = "MPH",
					speedLine2 = speedMph
				})
			else
				SendNUIMessage({hidehud = true})
			end
		end
	end
end)