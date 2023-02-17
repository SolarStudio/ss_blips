-- Created by SolarStudio
	local blips = {
		-- The Prison
		 {title="Regierung", colour=0, id=419, x=-537.44, y=-216.96, z=37.64}, -- -537.4486, -216.9673, 37.6497, 111.6699
		 {title="LCN", colour=0, id=429, x=-1515.40, y=876.65, z=181.31},
		 {title="Marktplatz", colour=2, id=237, x=2539.59, y=4813.57, z=33.80}, -- 2539.5957, 4813.5796, 33.8046, 16.7621
		}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


