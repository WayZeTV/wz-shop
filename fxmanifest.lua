fx_version 'adamant'
game 'gta5'

author 'WayZe#0001'
description 'Script Shop RageUI V2 par WayZe'
version '1.0'

---

client_scripts {
    -- Dépendances RageUI
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",

    'client/shop.lua'
}

server_scripts {
    'server/shop.lua'
}

shared_scripts {
    'config.lua'
}

dependencies {
	'es_extended'
}