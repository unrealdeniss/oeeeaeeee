--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/entities/zmlab2_machine_furnace/shared.lua
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
ENT.Model = "models/zerochain/props_methlab/zmlab2_furnance.mdl"
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "Furnace"
ENT.Category = "Zeros Methlab 2"
ENT.RenderGroup = RENDERGROUP_OPAQUE

function ENT:SetupDataTables()
    self:NetworkVar("Int", 1, "AcidAmount")
    self:NetworkVar("Int", 2, "Temperatur")
    self:NetworkVar("Int", 3, "Heater")

    self:NetworkVar("Int", 4, "ProcessState")
    self:NetworkVar("Int", 5, "HeatingStart")

    /*
        0 = Needs more Acid
        1 = Press the Start Button
        2 = Is Heating Acid
        3 = Requieres heat change
        4 = Acid is ready and needs to be pumped to next machine
        5 = Moving Acid (Loading)
        6 = Needs to be cleaned
    */

    if (SERVER) then
        self:SetAcidAmount(0)
        self:SetTemperatur(0)
        self:SetHeater(0)
        self:SetProcessState(0)
        self:SetHeatingStart(0)
    end
end

function ENT:OnIncrease(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)

    if lp.x > -25 and lp.x < -22 and lp.y < 14 and lp.y > 10 and lp.z > 52 and lp.z < 55 then
        return true
    else
        return false
    end
end

function ENT:OnDecrease(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

    if lp.x > -12.7 and lp.x < -11 and lp.y < 14 and lp.y > 10 and lp.z > 52 and lp.z < 55 then
        return true
    else
        return false
    end
end

function ENT:OnStart(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)

    if lp.x > -23 and lp.x < -12 and lp.y < 14 and lp.y > 10 and lp.z > 51 and lp.z < 56.5 then
        return true
    else
        return false
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

function ENT:OnErrorButton(ply)
    local trace = ply:GetEyeTrace()
    local lp = self:WorldToLocal(trace.HitPos)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

    if lp.x > -23 and lp.x < -12 and lp.y < 14 and lp.y > 10 and lp.z > 51 and lp.z < 56.5 then
        return true
    else
        return false
    end
end


// Returns the start position and direction for a hose
function ENT:GetHose_Out()
    local attach = self:GetAttachment(1)
    if attach == nil then return self:GetPos(),self:GetAngles() end
    local ang = attach.Ang
    ang:RotateAroundAxis(ang:Up(),90)
    return attach.Pos - ang:Up() * 1,ang
end


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
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6
