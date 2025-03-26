fx_version 'cerulean'
game 'gta5'

description "Glove's Restart"
name "glove-restart"
developer 'Glove'
version '1.0'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua'
}


client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

shared_script 'config.lua'