-------------------------------------------
---- Welcome Message script | treflaa -----
--------- discord : treflaa#6969 ----------
-------------------------------------------

local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")


AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
	local user_id = vRP.getUserId({source})
	TriggerClientEvent('TRF:WelcomeMessage', source, user_id)
end)