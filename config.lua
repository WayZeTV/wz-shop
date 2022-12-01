Config = {

    ESXConfiguration = {
		active = true, -- Laissez sur true si vous ne savez pas ce que vous faites ! (Mettez false si vous n'utilisez pas ESX)
		trigger = 'esx:getSharedObject' -- Pour modifier le trigger en fonction de votre base | EXEMPLE pour les bases Califs remplacez par ➤ ::{korioz#0110}::esx:getSharedObject
},

	FreezePlayer = {
        active = true -- true = freeze le joueur ||| false = joueur non freeze
}, 

	Blips = {
		position = { 
			vector3(-706.08, -914.44, 19.2), -- Modifier les positions des blips (Total : 20)
			vector3(1959.84, 3740.44, 32.36),
			vector3(373.875, 325.896, 102.566),
			vector3(2557.458, 382.282, 107.622),
			vector3(-3038.939, 585.954, 6.908),
			vector3(-3241.927, 1001.462, 11.830),
			vector3(547.431, 2671.710, 41.156),
			vector3(2678.916, 3280.671, 54.241),
			vector3(1729.216, 6414.131, 34.037),
			vector3(1135.808, -982.281, 45.415),
			vector3(-1222.915, -906.983, 11.326),
			vector3(-1487.553, -379.107, 39.163),
			vector3(-2968.243, 390.910, 14.043),
			vector3(1166.02, 2708.930, 37.157),
			vector3(1392.562, 3604.684, 33.980),
			vector3(26.14, -1347.37,  29.5),
			vector3(1163.373, -323.801, 68.205),
			vector3(-1820.523, 792.518, 137.118),
			vector3(1698.388,  4924.404, 41.063),
			vector3(-48.5543,  -1757.621, 29.42102)
		},

        id = 52, -- Modifier le type de blips (DOC : https://wiki.gtanet.work/index.php?title=Blips)
		colour = 2, -- Modifier la couleur du blips (DOC : https://wiki.gtanet.work/index.php?title=Blips)
		scale = 0.9, -- Modifier la taille du blips
        name = "Supérette" -- Changer le nom du blips
},

	Marker = {
		active = true, -- ou false pour désactiver
		type = 2, -- Changer le type du marker (DOC : https://docs.fivem.net/docs/game-references/markers/)
		size = {x = 0.4, y = 0.4, z = 0.4}, -- Modifier la taille du marker
		color = {r = 0, g = 200, b = 10}, -- sur le principe des couleurs RGB (Voir Google "RGB Picker")
		turned = true, -- true = le markeur tourne sur lui même ||| false = le marker ne tourne pas
		jumped = true, -- true = le markeur saute sur lui même ||| false = le marker ne saute pas 
		
		drawdistance = 5 -- Définissez ici la distance d'activation du marker (0.05ms quand il s'active )
},

    Boissons = {
        active = true, -- ou false pour désactiver
		name = "Boissons", -- Changer le nom de la catégorie
        items = {
            {name = "water", label = "Eau", price = 50},
            {name = "coffe", label = "Café", price = 65},
	    {name = "milk", label = "Lait", price = 75},
	    {name = "cocacola", label = "Coca cola", price = 90},
	    {name = "icetea", label = "Icetea", price = 100}
    }
},
 
    Nourritures = {
        active = true, -- ou false pour désactiver
		name = "Vivres", -- Changer le nom de la catégorie
        items = {
            {name = "bread", label = "Pain", price = 50},
	    {name = "cupcake", label = "CupCake", price = 60},
	    {name = "sandwich", label = "Sandwich", price = 75},
	    {name = "chocolate", label = "Chocolat", price = 100},
	    {name = "hamburger", label = "Hamburger", price = 125}
    }
},

    Divers = {
        active = true, -- ou false pour désactiver
		name = "Divers", -- Changer le nom de la catégorie
        items = {
            {name = "cigarett", label = "Cigarette", price = 25},
	    {name = "lighter", label = "Briquet", price = 50}
    }
},

	QuitterLaBoutique = {
		active = true -- true = activer le bouton "Quitter la boutique" | false = retirer le bouton
	}
}
