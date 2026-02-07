--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/entities/zmlab2_equipment/cl_init.lua
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

include("shared.lua")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

function ENT:Initialize()
	zmlab2.Equipment.Initialize(self)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

function ENT:DrawTranslucent()
	self:Draw()
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

function ENT:Draw()
	self:DrawModel()
	zmlab2.Equipment.DrawUI(self)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

function ENT:OnRemove()
	zmlab2.Equipment.OnRemove(self)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
