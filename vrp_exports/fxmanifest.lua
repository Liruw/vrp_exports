fx_version 'bodacious'
game 'gta5'

name 'vrp_exports'
description 'Exports vRP (Lua) Functions'
author 'SolitaryWolf007'
version '0.9'

dependencies {
    'vrp',
}

client_scripts {
    '@vrp/lib/utils.lua',
    'vRPclient.lua',
}

server_scripts {
    '@vrp/lib/utils.lua',
    'vRPserver.lua',
}