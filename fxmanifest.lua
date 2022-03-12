fx_version 'cerulean'

game 'gta5'
lua54 'yes'

dependencies {
    'PolyZone'
} 

author 'Mikeyxb#2012'
description 'Gang weapon crafting for QBCore'
version '1.0'


client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/cl_main.lua',
    'client/cl_eye.lua',
    'client/cl_interactions.lua',
}

shared_script {
    'shared/sh_config.lua'
}

server_scripts {
    
    'server/sv_main.lua',
    
    
}