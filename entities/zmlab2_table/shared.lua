--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/entities/zmlab2_table/shared.lua
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
ENT.Model = "models/zerochain/props_methlab/zmlab2_table.mdl"
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "Table"
ENT.Category = "Zeros Methlab 2"
ENT.RenderGroup = RENDERGROUP_OPAQUE
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

function ENT:SetupDataTables()
    self:NetworkVar("Int", 1, "ProcessState")
    self:NetworkVar("Entity", 1, "Crate")
    self:NetworkVar("Entity", 2, "Tray")
    self:NetworkVar("Bool", 1, "IsAutobreaking")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b

    if (SERVER) then
        self:SetIsAutobreaking(false)
        self:SetProcessState(0)
        self:SetCrate(NULL)
        self:SetTray(NULL)
    end
end

function ENT:OnDrop_Crate(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)
    if lp.x > 5 and lp.x < 19 and lp.y < 13 and lp.y > 6 and lp.z > 35 and lp.z < 38 then
        return true
    else
        return false
    end
end

function ENT:OnDrop_Tray(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)
    if lp.x > -19 and lp.x < -6 and lp.y < 13 and lp.y > 6 and lp.z > 35 and lp.z < 38 then
        return true
    else
        return false
    end
end

function ENT:CanProperty(ply)
    return zclib.Player.IsAdmin(ply)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

function ENT:CanTool(ply, tab, str)
    return zclib.Player.IsAdmin(ply)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

function ENT:CanDrive(ply)
    return zclib.Player.IsAdmin(ply)
end
