--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/entities/zmlab2_machine_mixer/shared.lua
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
ENT.Model = "models/zerochain/props_methlab/zmlab2_mixer.mdl"
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "Mixer"
ENT.Category = "Zeros Methlab 2"
ENT.RenderGroup = RENDERGROUP_OPAQUE

function ENT:SetupDataTables()
    self:NetworkVar("Int", 1, "ProcessState")
    /*
        0 = Needs Barrel
        1 = Needs Acid
        2 = Press the Start Mix Button
        3 = Add Aluminium
        4 = Press the Start Mix Button
        5 = Add Exhaust pipe
        6 = Moving Acid (Loading)
        7 = Needs to be cleaned
    */
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

    self:NetworkVar("Int", 2, "MethQuality")
    self:NetworkVar("Int", 3, "NeedAmount")

    self:NetworkVar("Int", 5, "ErrorStart")
    self:NetworkVar("Int", 6, "ProcessStart")

    self:NetworkVar("Int", 7, "MethType")

    if (SERVER) then
        self:SetProcessState(-1)

        self:SetMethQuality(0)
        self:SetNeedAmount(0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b

        self:SetErrorStart(-1)
        self:SetProcessStart(-1)

        self:SetMethType(1)
    end
end

function ENT:OnStart(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)
    if lp.x > -10 and lp.x < 0 and lp.y < 15 and lp.y > 10 and lp.z > 27 and lp.z < 31 then
        return true
    else
        return false
    end
end

function ENT:OnMethType(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)
    if lp.x > -10 and lp.x < 0 and lp.y < 15 and lp.y > 10 and lp.z > 32 and lp.z < 37 then
        return true
    else
        return false
    end
end

function ENT:OnErrorButton(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)
    if lp.x > -10 and lp.x < 0 and lp.y < 15 and lp.y > 10 and lp.z > 28 and lp.z < 33.6 then
        return true
    else
        return false
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

function ENT:OnCenterButton(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)

    if lp.x > -10 and lp.x < 0 and lp.y < 15 and lp.y > 10 and lp.z > 25 and lp.z < 38 then
        return true
    else
        return false
    end
end

                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10



// Tell us if you allow to receive liquid
function ENT:AllowConnection(From_ent)
    if From_ent:GetClass() == "zmlab2_machine_furnace" and From_ent:GetProcessState() == 4 and self:GetProcessState() == 1 then
        return true
    else
        return false
    end
end

// Returns the start position and direction for a hose
function ENT:GetHose_In()
    local attach = self:GetAttachment(1)
    if attach == nil then return self:GetPos(),self:GetAngles() end
    local ang = attach.Ang
    ang:RotateAroundAxis(ang:Right(),180)

    return attach.Pos,ang
end


// Returns the start position and direction for a hose
function ENT:GetHose_Out()
    local attach = self:GetAttachment(2)
    if attach == nil then return self:GetPos(),self:GetAngles() end
    return attach.Pos,attach.Ang
end



function ENT:CanProperty(ply)
    return zclib.Player.IsAdmin(ply)
end

function ENT:CanTool(ply, tab, str)
    return zclib.Player.IsAdmin(ply)
end

function ENT:CanDrive(ply)
    return zclib.Player.IsAdmin(ply)
end
