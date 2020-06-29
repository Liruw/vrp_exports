--------------------------------------------------------------------------------------------------------
--- vRP Library & Connection
--------------------------------------------------------------------------------------------------------
local Tunnel =  module("vrp", "lib/Tunnel")
local Proxy =   module("vrp", "lib/Proxy")
local Tools =   module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
local Jenc = json.encode
local Jdec = json.decode
--- CONFIG
local showmsg = true
local load_server_exports = true
--------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()   
     
     if (not load_server_exports) then return end
     if showmsg then print("\n^4[vRP EXPORTS] ^0Registering Exports ..^0") end
     
--------------------------------------------------------------------------------------------------------
--- vRP -> Exports for server scripts.
--------------------------------------------------------------------------------------------------------
     
     -----------------------------------------------
     --- @vrp/base.lua
     -----------------------------------------------
          
     exports('vRPs_format', vRP.format)       
     
     exports('vRPs_prepare', vRP.prepare)
     
     exports('vRPs_query', function(name,params_json,mode)
          return Jenc(vRP.query(name,Jdec(params_json),mode))
     end)
     
     exports('vRPs_execute', function(name,params_json)
          return Jenc(vRP.execute(name,Jdec(params_json)))
     end)
     
     exports('vRPs_getUserIdByIdentifiers', vRP.getUserIdByIdentifiers)
     
     exports('vRPs_getPlayerEndpoint', vRP.getPlayerEndpoint)
     
     exports('vRPs_isBanned', vRP.isBanned)    
     
     exports('vRPs_setBanned', vRP.setBanned)
     
     exports('vRPs_isWhitelisted', vRP.isWhitelisted)
          
     exports('vRPs_setWhitelisted', vRP.setWhitelisted)
     
     exports('vRPs_setUData', vRP.setUData)
     
     exports('vRPs_getUData', vRP.getUData)    
     
     exports('vRPs_setSData', vRP.setSData)
     
     exports('vRPs_getSData', vRP.getSData)
     
     exports('vRPs_getUserDataTable', function(user_id)
          return Jenc(vRP.getUserDataTable(user_id))
     end)

     exports('vRPs_getUserTmpTable', function(user_id)
          return Jenc(vRP.getUserTmpTable(user_id))
     end) 

     exports('vRPs_getUserId', vRP.getUserId)

     exports('vRPs_getUsers', function()
          return Jenc(vRP.getUsers())
     end)   

     exports('vRPs_getUserSource', vRP.getUserSource)    

     exports('vRPs_kick', vRP.kick)

     exports('vRPs_dropPlayer', vRP.dropPlayer)

     exports('vRPs_getDayHours', vRP.getDayHours)

     exports('vRPs_getMinSecs', vRP.getMinSecs)
     
     -- Does it really work? 
     --exports('vRPs_registerDBDriver', vRP.registerDBDriver)




     -----------------------------------------------
     --- @vrp/modules/aptitude.lua
     -----------------------------------------------

     exports('vRPs_defAptitudeGroup', vRP.defAptitudeGroup)    

     exports('vRPs_defAptitude', vRP.defAptitude)

     exports('vRPs_getAptitudeDefinition', vRP.getAptitudeDefinition)

     exports('vRPs_getAptitudeGroupTitle', vRP.getAptitudeGroupTitle)

     exports('vRPs_getUserAptitudes', vRP.getUserAptitudes)

     exports('vRPs_varyExp', vRP.varyExp)

     exports('vRPs_getExp', vRP.getExp)

     exports('vRPs_expToLevel', vRP.expToLevel)




     -----------------------------------------------
     --- @vrp/modules/basic_skinshop.lua
     -----------------------------------------------

     exports('vRPs_openSkinshop',function(src,parts_json)
          vRP.openSkinshop(src,Jdec(parts_json))
     end)
     


     -----------------------------------------------
     --- @vrp/modules/business.lua
     -----------------------------------------------

     exports('vRPs_getUserBusiness',function(user_id)
          return Jenc(vRP.getUserBusiness(user_id))
     end)



     -----------------------------------------------
     --- @vrp/modules/cloackroom.lua
     -----------------------------------------------

     exports('vRPs_save_idle_custom',function(src,custom_json)
          return Jenc(vRP.save_idle_custom(src,Jdec(custom_json)))

     exports('vRPs_removeCloak', vRP.removeCloak)




     -----------------------------------------------
     --- @vrp/modules/group.lua
     -----------------------------------------------

     exports('vRPs_getGroupTitle', vRP.getGroupTitle)    

     exports('vRPs_getUserGroups', function(user_id)
          return Jenc(vRP.getUserGroups(user_id))
     end)

     exports('vRPs_addUserGroup', vRP.addUserGroup)

     exports('vRPs_getUsersByPermission', function(perm)
          return Jenc(vRP.getUsersByPermission(perm))
     end)

     exports('vRPs_removeUserGroup', vRP.removeUserGroup)

     exports('vRPs_hasGroup', vRP.hasGroup)
     
     exports('vRPs_hasPermission', vRP.hasPermission)
     
     exports('vRPs_hasPermissions', function(user_id,perms_json)
          return vRP.hasPermissions(user_id,Jdec(perms_json))
     end)

     -- Does it really work?
     --exports('vRPs_registerPermissionFunction', vRP.registerPermissionFunction) 
     



     -----------------------------------------------
     --- @vrp/modules/gui.lua
     -----------------------------------------------

     exports('vRPs_openMenu',function(src,menudef_json)
          vRP.openMenu(src,Jdec(menudef_json)) 
     end)   

     exports('vRPs_closeMenu', vRP.closeMenu)

     exports('vRPs_prompt', vRP.prompt)

     exports('vRPs_request', vRP.request)    

     exports('vRPs_registerMenuBuilder', vRP.registerMenuBuilder)

     exports('vRPs_buildMenu', function(name,data_json)
          return Jenc(vRP.buildMenu(name,Jdec(data_json)))
     end)

     exports('vRPs_openMainMenu', vRP.openMainMenu)
     



     -----------------------------------------------
     --- @vrp/modules/home.lua
     -----------------------------------------------

     exports('vRPs_getUserAddress', function(user_id)
          return Jenc(vRP.getUserAddress(user_id))
     end)

     exports('vRPs_getUserAddress2', function(user_id)
          return Jenc(vRP.getUserAddress2(user_id))
     end) 

     exports('vRPs_setUserAddress', vRP.setUserAddress)

     exports('vRPs_removeUserAddress',  vRP.removeUserAddress)

     exports('vRPs_getUserByAddress', vRP.getUserByAddress)

     exports('vRPs_findFreeNumber',  vRP.findFreeNumber)

     exports('vRPs_accessHome', vRP.accessHome)

     -- Does it really work?
     --exports('vRPs_defHomeComponent', vRP.defHomeComponent)
     



     -----------------------------------------------
     --- @vrp/modules/identity.lua
     -----------------------------------------------

     exports('vRPs_getUserIdentity', vRP.getUserIdentity)

     exports('vRPs_getUserByRegistration', vRP.getUserByRegistration)
     
     exports('vRPs_getUserByPhone', vRP.getUserByPhone)

     exports('vRPs_generateStringNumber', vRP.generateStringNumber)

     exports('vRPs_generateRegistrationNumber', vRP.generateRegistrationNumber)

     exports('vRPs_generatePhoneNumber', vRP.generatePhoneNumber)
               



     -----------------------------------------------
     --- @vrp/modules/inventory.lua
     -----------------------------------------------

     exports('vRPs_itemNameList', vRP.itemNameList)  

     exports('vRPs_itemIndexList',  vRP.itemIndexList)

     exports('vRPs_itemTypeList', vRP.itemTypeList)

     exports('vRPs_itemBodyList', vRP.itemBodyList)
          
     exports('vRPs_defInventoryItem', vRP.defInventoryItem)

     exports('vRPs_computeItemName', vRP.computeItemName) -- Limited to name only? No function?

     exports('vRPs_computeItemWeight', vRP.computeItemWeight) -- Limited to weight only? No function?

     exports('vRPs_parseItem', vRP.parseItem)

     exports('vRPs_getItemDefinition', vRP.getItemDefinition)

     exports('vRPs_getItemWeight', vRP.getItemWeight)

     exports('vRPs_computeItemsWeight', vRP.computeItemsWeight)

     exports('vRPs_giveInventoryItem', vRP.giveInventoryItem)

     exports('vRPs_vehicleChest', vRP.vehicleChest)

     exports('vRPs_tryGetInventoryItem', vRP.tryGetInventoryItem)   

     exports('vRPs_getInventoryItemAmount', vRP.getInventoryItemAmount)

     exports('vRPs_getInventory', vRP.getInventory)

     exports('vRPs_getInventoryWeight', vRP.getInventoryWeight) 

     exports('vRPs_getInventoryMaxWeight', vRP.getInventoryMaxWeight)

     exports('vRPs_vehicleGlobal', vRP.vehicleGlobal)

     exports('vRPs_vehicleName', vRP.vehicleName)

     exports('vRPs_vehiclePrice', vRP.vehiclePrice)

     exports('vRPs_vehicleType', vRP.vehicleType)

     -- Does it really work?
     --exports('vRPs_openChest', vRP.openChest) 

     --exports('vRPs_openChest2', vRP.openChest2)




     -----------------------------------------------
     --- @vrp/modules/map.lua
     -----------------------------------------------

     exports('vRPs_searchReturn', vRP.searchReturn)

     exports('vRPs_searchTimer', vRP.searchTimer)

     exports('vRPs_removeArea', vRP.removeArea)

     -- Does it really work?
     --exports('vRPs_setArea', vRP.setArea)




     -----------------------------------------------
     --- @vrp/modules/money.lua
     -----------------------------------------------

     exports('vRPs_getMoney', vRP.getMoney)

     exports('vRPs_setMoney', vRP.setMoney)

     exports('vRPs_tryPayment', vRP.tryPayment)

     exports('vRPs_giveMoney',  vRP.giveMoney)

     exports('vRPs_getBankMoney', vRP.getBankMoney)

     exports('vRPs_setBankMoney', vRP.setBankMoney)

     exports('vRPs_giveBankMoney', vRP.giveBankMoney)
          
     exports('vRPs_tryWithdraw', vRP.tryWithdraw)
     
     exports('vRPs_tryDeposit', vRP.tryDeposit)

     exports('vRPs_tryFullPayment', vRP.tryFullPayment)




     --------------------------------------------------------------------------------------------------------
     --- vRPclient -> Exports for server scripts. Basic Funtions Only
     --------------------------------------------------------------------------------------------------------
   
     
     -----------------------------------------------
     --- @vrp/client/base.lua
     -----------------------------------------------

     exports('vRPc_teleport', vRPclient.teleport)

     exports('vRPc_clearWeapons', vRPclient.clearWeapons)

     exports('vRPc_isInside', vRPclient.isInside)

     exports('vRPc_getNearestPlayers', function(src,radius) 
          return Jenc(vRPclient.getNearestPlayers(src,radius))
     end)

     exports('vRPc_getNearestPlayer', vRPclient.getNearestPlayer)

     exports('vRPc_playAnim', vRPclient.playAnim)

     exports('vRPc_stopAnim', vRPclient.stopAnim)




     -----------------------------------------------
     --- @vrp/client/basic_garage.lua
     -----------------------------------------------
     exports('vRPc_getNearestVehicles', function(src,radius) 
          return Jenc(vRPclient.getNearestVehicles(src,radius))
     end)

     exports('vRPc_getNearestVehicle', vRPclient.getNearestVehicle)

     exports('vRPc_ejectVehicle', vRPclient.ejectVehicle)

     exports('vRPc_isInVehicle', vRPclient.isInVehicle)

     exports('vRPc_vehList', function(src,radius) 
          local  veh,vehnet,vplate,name,lock,banned,trunk,vehdisplayneme,streetname,tuning = vRPclient.vehList(src,radius)
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

     exports('vRPc_getWeapons', function(src)
          return Jenc(vRPclient.getWeapons(src))
     end)
     
     exports('vRPc_replaceWeapons', function(src,weapons_json)
          return Jenc(vRPclient.replaceWeapons(src,Jdec(weapons_json)))
     end)

     exports('vRPc_giveWeapons', function(src,weapons_json,clear)
          vRPclient.giveWeapons(src,Jdec(weapons_json),clear)
     end)
     
     exports('vRPc_setArmour', vRPclient.setArmour)

     exports('vRPc_getArmour', vRPclient.getArmour)

     exports('vRPc_getCustomization', function(src)
          return Jenc(vRPclient.getCustomization(src))
     end)
     
     exports('vRPc_setCustomization',function(src,custom_json) 
          return vRPclient.setCustomization(src,Jdec(custom_json))
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