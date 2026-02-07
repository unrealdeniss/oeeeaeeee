--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/sh_equipment_config.lua
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
zmlab2.config.Equipment = zmlab2.config.Equipment or {}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

// Here are all the entities which can be bought / build
zmlab2.config.Equipment.List = {
	[1] = {
		name = zmlab2.language["ventilation_title"],
		desc = zmlab2.language["ventilation_desc"],
		class = "zmlab2_machine_ventilation",
		model = "models/zerochain/props_methlab/zmlab2_ventilation.mdl",
		price = 1000,
		limit = 4,
	},
	[2] = {
		name = zmlab2.language["storage_title"],
		desc = zmlab2.language["storage_desc"],
		class = "zmlab2_storage",
		model = "models/zerochain/props_methlab/zmlab2_storage.mdl",
		price = 1000,
		limit = 2,
	},
	[3] = {
		name = zmlab2.language["furnace_title"],
		desc = zmlab2.language["furnace_desc"],
		class = "zmlab2_machine_furnace",
		model = "models/zerochain/props_methlab/zmlab2_furnance.mdl",
		price = 1000,
		limit = 3,
	},
	[4] = {
		name = zmlab2.language["mixer_title"],
		desc = zmlab2.language["mixer_desc"],
		class = "zmlab2_machine_mixer",
		model = "models/zerochain/props_methlab/zmlab2_mixer.mdl",
		price = 1000,
		limit = 3,
	},
	[5] = {
		name = zmlab2.language["filter_title"],
		desc = zmlab2.language["filter_desc"],
		class = "zmlab2_machine_filter",
		model = "models/zerochain/props_methlab/zmlab2_filter.mdl",
		price = 1000,
		limit = 3,
	},
	[6] = {
		name = zmlab2.language["filler_title"],
		desc = zmlab2.language["filler_desc"],
		class = "zmlab2_machine_filler",
		model = "models/zerochain/props_methlab/zmlab2_filler.mdl",
		price = 1000,
		limit = 3,
	},
	[7] = {
		name = zmlab2.language["frezzer_title"],
		desc = zmlab2.language["frezzer_desc"],
		class = "zmlab2_machine_frezzer",
		model = "models/zerochain/props_methlab/zmlab2_frezzer.mdl",
		price = 1000,
		limit = 3,
	},
	[8] = {
		name = zmlab2.language["packingtable_title"],
		desc = zmlab2.language["packingtable_desc"],
		class = "zmlab2_table",
		model = "models/zerochain/props_methlab/zmlab2_table.mdl",
		price = 1000,
		limit = 2,
	}
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10
