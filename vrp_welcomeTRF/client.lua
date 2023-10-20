-------------------------------------------
---- Welcome Message script | treflaa -----
--------- discord : treflaa#6969 ----------
-------------------------------------------


local aratawelcome = true

if aratawelcome then

    RegisterNetEvent('TRF:WelcomeMessage')
    AddEventHandler('TRF:WelcomeMessage', function(user_id)

    Citizen.CreateThread(function() 
        while aratawelcome do     
            Citizen.Wait(1)	
            local coords = GetEntityCoords(GetPlayerPed(-1))
			DrawText3D(coords.x, coords.y, coords.z + 0.200, "~w~Bine ai venit pe ~p~Krown Romania-RP ~w~!", 2, 0.4, 0.3)
			DrawText3D(coords.x, coords.y, coords.z, "~w~Discord-ul serverului este: ~p~discord.io/krown ~w~!", 2, 0.4, 0.3)
                        DrawText3D(coords.x, coords.y, coords.z - 0.200, "~w~ID-ul tau este: ~p~"..user_id.." ~w~!", 2, 0.4, 0.3)
        end
    end)

    Citizen.CreateThread(function()
        if aratawelcome then
          Citizen.Wait(10000)
          aratawelcome = false
        end
    end)

    function DrawText3D(x,y,z, text, scl) 
        local onScreen,_x,_y=World3dToScreen2d(x,y,z)
        local px,py,pz=table.unpack(GetGameplayCamCoords())
        local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
        local scale = (1/dist)*scl
        local fov = (1/GetGameplayCamFov())*100
        local scale = scale*fov
        if onScreen then
            SetTextScale(0.0*scale, 0.5*scale)
            SetTextFont(7)
            SetTextProportional(1)
            SetTextColour(255, 255, 255, 255)
            SetTextDropshadow(0, 0, 0, 0, 255)
            SetTextEdge(2, 0, 0, 0, 150)
            SetTextDropShadow()
            SetTextOutline()
            SetTextEntry("STRING")
            SetTextCentre(1)
            AddTextComponentString(text)
            DrawText(_x,_y)
            end
        end
    end)
end
