--------------------------------------------------------------------------------------------------------
--- vRP Library & Connection
--------------------------------------------------------------------------------------------------------
local Tunnel =  module("vrp", "lib/Tunnel")
local Proxy =   module("vrp", "lib/Proxy")
local Tools =   module("vrp", "lib/Tools")
vRPclient = Tunnel.getInterface("vRP")
--------------------------------------------------------------------------------------------------------
local Jenc = json.encode
local Jdec = json.decode
--- CONFIG
local showmsg = false
local load_client_exports = false
--------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()   
    
    if (not load_client_exports) then return end
    if showmsg then print("\n^4[vRP EXPORTS] ^0Registering Client Exports ..^0") end
    
    --------------------------------------------------------------------------------------------------------
    --- vRPclient -> Exports for server scripts. Basic Funtions Only
    --------------------------------------------------------------------------------------------------------

    -----------------------------------------------
    --- @vrp/client/base.lua
    -----------------------------------------------

    exports('vRPc_teleport', vRPclient.teleport)

    exports('vRPc_clearWeapons', vRPclient.clearWeapons)

    exports('vRPc_isInside', vRPclient.isInside)

    exports('vRPc_getNearestPlayers', function(radius) 
        return Jenc(vRPclient.getNearestPlayers(radius))
    end)

    exports('vRPc_getNearestPlayer', vRPclient.getNearestPlayer)

    exports('vRPc_playAnim', vRPclient.playAnim)

    exports('vRPc_stopAnim', vRPclient.stopAnim)




    -----------------------------------------------
    --- @vrp/client/basic_garage.lua
    -----------------------------------------------
    exports('vRPc_getNearestVehicles', function(radius) 
        return Jenc(vRPclient.getNearestVehicles(radius))
    end)

    exports('vRPc_getNearestVehicle', vRPclient.getNearestVehicle)

    exports('vRPc_ejectVehicle', vRPclient.ejectVehicle)

    exports('vRPc_isInVehicle', vRPclient.isInVehicle)

    exports('vRPc_vehList', function(radius) 
        local  veh,vehnet,vplate,name,lock,banned,trunk,vehdisplayneme,streetname,tuning = vRPclient.vehList(radius)
        return veh,vehnet,vplate,name,lock,banned,trunk,vehdisplayneme,streetname,Jenc(tuning)
    end)

    exports('vRPc_GetVehicleSeat', vRPclient.GetVehicleSeat)
    



    -----------------------------------------------
    --- @vrp/client/gui.lua
    -----------------------------------------------

    exports('vRPc_setDiv', vRPclient.setDiv)

    exports('vRPc_setDivContent', vRPclient.setDivContent)

    exports('vRPc_removeDiv', vRPclient.removeDiv)
    
    exports('vRPc_CarregarObjeto', vRPclient.CarregarObjeto)

    exports('vRPc_DeletarObjeto', vRPclient.DeletarObjeto)

    


    -----------------------------------------------
    --- @vrp/client/map.lua
    -----------------------------------------------
    
    exports('vRPc_getModelPlayer', vRPclient.getModelPlayer)

    exports('vRPc_addBlip', vRPclient.addBlip)
    
    exports('vRPc_removeBlip', vRPclient.removeBlip)

    exports('vRPc_setGPS', vRPclient.setGPS)

    exports('vRPc_getWaypoint', vRPclient.getWaypoint)

    


    -----------------------------------------------
    --- @vrp/client/player_state.lua
    -----------------------------------------------

    exports('vRPc_getWeapons', function()
        return Jenc(vRPclient.getWeapons())
    end)
    
    exports('vRPc_replaceWeapons', function(weapons_json)
        return Jenc(vRPclient.replaceWeapons(Jdec(weapons_json)))
    end)

    exports('vRPc_giveWeapons', function(weapons_json,clear)
        vRPclient.giveWeapons(Jdec(weapons_json),clear)
    end)
    
    exports('vRPc_setArmour', vRPclient.setArmour)

    exports('vRPc_getArmour', vRPclient.getArmour)

    exports('vRPc_getCustomization', function()
        return Jenc(vRPclient.getCustomization())
    end)
    
    exports('vRPc_setCustomization',function(custom_json) 
        return vRPclient.setCustomization(Jdec(custom_json))
    end)

    


    -----------------------------------------------
    --- @vrp/client/police.lua
    -----------------------------------------------

    exports('vRPc_toggleNoclip', vRPclient.toggleNoclip)

    exports('vRPc_setHandcuffed', vRPclient.setHandcuffed)

    exports('vRPc_isHandcuffed', vRPclient.isHandcuffed)

    exports('vRPc_setCapuz', vRPclient.setCapuz)

    exports('vRPc_isCapuz', vRPclient.isCapuz)

    exports('vRPc_setMalas', vRPclient.setMalas)
    
    exports('vRPc_isMalas', vRPclient.isMalas)

    exports('vRPc_putInNearestVehicleAsPassenger', vRPclient.putInNearestVehicleAsPassenger)




    -----------------------------------------------
    --- @vrp/client/survival.lua
    -----------------------------------------------

    exports('vRPc_getHealth', vRPclient.getHealth)

    exports('vRPc_setHealth', vRPclient.setHealth)
    
    exports('vRPc_isInComa', vRPclient.isInComa)
    
    exports('vRPc_killGod', vRPclient.killGod)

    


    if showmsg then print("^4[vRP EXPORTS] ^0Exports registered ^2successfully!^0") end
end)