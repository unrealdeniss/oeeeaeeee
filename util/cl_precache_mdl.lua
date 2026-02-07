--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/util/cl_precache_mdl.lua
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

if SERVER then return end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

timer.Simple(2,function()
    for k,v in pairs(zmlab2.config.Equipment.List) do zclib.CacheModel(v.model) end
    for k,v in pairs(zmlab2.config.Tent) do zclib.CacheModel(v.model) end
    zclib.CacheModel("models/zerochain/props_methlab/zmlab2_pipe_vent.mdl")
    zclib.CacheModel("models/zerochain/props_methlab/zmlab2_crate.mdl")
    zclib.CacheModel("models/hunter/misc/sphere025x025.mdl")
end)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6
