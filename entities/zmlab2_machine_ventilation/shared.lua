--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/entities/zmlab2_machine_ventilation/shared.lua
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
ENT.Model = "models/zerochain/props_methlab/zmlab2_ventilation.mdl"
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "Ventilation"
ENT.Category = "Zeros Methlab 2"
ENT.RenderGroup = RENDERGROUP_OPAQUE
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

function ENT:SetupDataTables()

    self:NetworkVar("Int", 2, "ProcessState")
    /*
        0 = OFF
        1 = ON
    */

    self:NetworkVar("Entity", 1, "Output")

    //self:NetworkVar("Bool", 1, "IsVenting")
    self:NetworkVar("Int", 1, "LastPollutionMove")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2


    if (SERVER) then
        self:SetProcessState(0)
        self:SetOutput(NULL)
        //self:SetIsVenting(false)
        self:SetLastPollutionMove(-1)
    end
end

function ENT:GetIsVenting()
    return self:GetProcessState() == 1
end

function ENT:OnStart(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)

    if lp.x > -8.8 and lp.x < 0 and lp.y < 15 and lp.y > 10 and lp.z > 28.5 and lp.z < 33.5 then
        return true
    else
        return false
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

function ENT:CanProperty(ply)
    return zclib.Player.IsAdmin(ply)
end

function ENT:CanTool(ply, tab, str)
    return zclib.Player.IsAdmin(ply)
end

function ENT:CanDrive(ply)
    return zclib.Player.IsAdmin(ply)
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b
