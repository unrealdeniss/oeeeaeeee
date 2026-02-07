--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/entities/zmlab2_equipment/shared.lua
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
ENT.Model = "models/zerochain/props_methlab/zmlab2_chest.mdl"
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "Equipment"
ENT.Category = "Zeros Methlab 2"
ENT.RenderGroup = RENDERGROUP_OPAQUE

function ENT:OnBuild(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)

    if lp.x > -10 and lp.x < 10 and lp.y < 15 and lp.y > 13 and lp.z > 44 and lp.z < 51 then
        return true
    else
        return false
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

function ENT:OnMove(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)

    if lp.x > -10 and lp.x < 10 and lp.y < 15 and lp.y > 13 and lp.z > 37 and lp.z < 44 then
        return true
    else
        return false
    end
end

function ENT:OnRepair(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

    if lp.x > -10 and lp.x < 10 and lp.y < 15 and lp.y > 13 and lp.z > 30 and lp.z < 37 then
        return true
    else
        return false
    end
end

function ENT:OnRemoveButton(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)

    if lp.x > -10 and lp.x < 10 and lp.y < 15 and lp.y > 13 and lp.z > 23 and lp.z < 30 then
        return true
    else
        return false
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2


function ENT:CanProperty(ply)
    return zclib.Player.IsAdmin(ply)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

function ENT:CanTool(ply, tab, str)
    return zclib.Player.IsAdmin(ply)
end

function ENT:CanDrive(ply)
    return zclib.Player.IsAdmin(ply)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
