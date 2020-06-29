# vrp_exports
A simple exporter of the vRP (1.0) (vRPex) functions. This allows vRP functions to be called in other languages and scripts, without the need for Tunnel, Proxy or TriggerServerEvent / TriggerEvent

## Function calling
* Exports from the server can only be called by the server, those from the client, only by the client. At least, that was what worked in some tests.
* The functions of vRP that return tables in Lua, using this exports return in JSON format! In some tests the tables simply do not work, and devolution in String JSON format is necessary. It is possible to interpret by C # or Js with plug-ins.
 
  - If you know the correct way to work the Lua -> C # and Lua -> JS tables, without the need for JSON, feel free to send a commit. :)
  
Language | Call Function Examples
------------ | -------------
C# |![C# Example 1](https://i.imgur.com/A2QRsWy.png)
C# |![C# Example 2](https://i.imgur.com/AgIAybx.png)
Lua | ![Lua Example 1](https://i.imgur.com/TBYzM4r.png)
Lua | ![Lua Example 2](https://i.imgur.com/7F4HOPu.png)
Js | Comming Soon..


### Tasks
- [ ] Finalize JavaScript documentation (.js)
- [ ] Check all functions can be called correctly


#### vRP Compatibility 
* vRP 1.0 by ImagicTheCat [Here](https://github.com/ImagicTheCat/vRP/tree/1.0)
* vRPEX Creative [Here](https://github.com/contatosummerz/vrpex)
