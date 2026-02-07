--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/sh_storage_config.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

/*
    Addon id: a36a6eee-6041-4541-9849-360baff995a2
    Version: v1.4.8 (stable)
*/

zmlab2 = zmlab2 or {}
zmlab2.config = zmlab2.config or {}
zmlab2.config.Storage = zmlab2.config.Storage or {}

// Here are all the entities which can be bought from the storage
zmlab2.config.Storage.Shop = {
	[1] = {
		name = zmlab2.language["acid_title"],
		desc = zmlab2.language["acid_desc"],
		class = "zmlab2_item_acid",
		model = "models/zerochain/props_methlab/zmlab2_acid.mdl",
		price = 10,
		// Defines how many items of that class the player can spawn
		limit = 5,

		// Which rank is allowed to buy this?
		/*
		rank = {
			["vip"] = true,
		},
		*/
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

		// Which job is allowed to buy this?
		/*
		job = {
			[TEAM_ZMLAB2_COOK] = true
		},
		*/
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

		// You can use this to restrict this for any other reason
		/*
		customcheck = function(ply)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

		end,
		*/
	},
	[2] = {
		name = zmlab2.language["methylamine_title"],
		desc = zmlab2.language["methylamine_desc"],
		class = "zmlab2_item_methylamine",
		model = "models/zerochain/props_methlab/zmlab2_methylamine.mdl",
		price = 10,
		limit = 3
	},
	[3] = {
		name = zmlab2.language["aluminum_title"],
		desc = zmlab2.language["aluminum_desc"],
		class = "zmlab2_item_aluminium",
		model = "models/zerochain/props_methlab/zmlab2_aluminium.mdl",
		price = 10,
		limit = 10
	},
	[4] = {
		name = zmlab2.language["lox_title"],
		desc = zmlab2.language["lox_desc"],
		class = "zmlab2_item_lox",
		model = "models/zerochain/props_methlab/zmlab2_lox.mdl",
		price = 10,
		limit = 3
	},
	[5] = {
		name = zmlab2.language["crate_title"],
		desc = zmlab2.language["crate_desc"],
		class = "zmlab2_item_crate",
		model = "models/zerochain/props_methlab/zmlab2_crate.mdl",
		price = 10,
		limit = 5
	},
	[6] = {
		name = zmlab2.language["palette_title"],
		desc = zmlab2.language["palette_desc"],
		class = "zmlab2_item_palette",
		model = "models/zerochain/props_methlab/zmlab2_palette.mdl",
		price = 10,
		limit = 1
	},
	[7] = {
		name = zmlab2.language["crusher_title"],
		desc = zmlab2.language["crusher_desc"],
		class = "zmlab2_item_autobreaker",
		model = "models/zerochain/props_methlab/zmlab2_autobreaker.mdl",
		price = 10000,
		limit = 1,
		/*
		rank = {
			["vip"] = true,
		},
		*/
	}
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504
