--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/entities/zmlab2_item_autobreaker/shared.lua
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

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.Model = "models/zerochain/props_methlab/zmlab2_autobreaker.mdl"
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "Automatic IceBreaker"
ENT.Category = "Zeros Methlab 2"
ENT.RenderGroup = RENDERGROUP_OPAQUE

                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

function ENT:CanProperty(ply)
    return zclib.Player.IsAdmin(ply)
end

function ENT:CanTool(ply, tab, str)
    return zclib.Player.IsAdmin(ply)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b

function ENT:CanDrive(ply)
    return zclib.Player.IsAdmin(ply)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b
