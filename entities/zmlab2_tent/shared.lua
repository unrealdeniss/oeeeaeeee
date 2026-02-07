--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/entities/zmlab2_tent/shared.lua
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
ENT.Model = "models/zerochain/props_methlab/zmlab2_tentkit.mdl"
ENT.AutomaticFrameAdvance = true
ENT.Spawnable = true
ENT.AdminSpawnable = false
ENT.PrintName = "Tent"
ENT.Category = "Zeros Methlab 2"
ENT.RenderGroup = RENDERGROUP_OPAQUE

function ENT:SetupDataTables()

    self:NetworkVar("Int", 1, "BuildState")
    self:NetworkVar("Int", 2, "BuildCompletion")

    self:NetworkVar("Int", 3, "TentID")

    self:NetworkVar("Int", 4, "ColorID")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

    self:NetworkVar("Bool", 1, "IsPublic")

    self:NetworkVar("Int", 5, "LastExtinguish")


    if (SERVER) then
        self:SetTentID(-1)
        self:SetColorID(1)
		// 124734521
        // Unfolded
        self:SetBuildState(-1)
        self:SetBuildCompletion(-1)

        self:SetIsPublic(false)

        self:SetLastExtinguish(0)
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

function ENT:OnControllPanel(ply)
    if self:GetAttachment(1) == nil then return false end
    local trace = ply:GetEyeTrace()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b

    if trace.HitPos:Distance(self:GetAttachment(1).Pos) < 5 then
        return true
    else
        return false
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

function ENT:OnLightButton(ply)
    if self:GetAttachment(1) == nil then return false end
    local attach = self:GetAttachment(1)
    local trace = ply:GetEyeTrace()
    if zclib.util.InDistance(attach.Pos - attach.Ang:Forward() * 5, trace.HitPos, 2) then
        return true
    else
        return false
    end
end

function ENT:OnExtinquisher(ply)
    if self:GetAttachment(1) == nil then return false end
    local attach = self:GetAttachment(1)
    local trace = ply:GetEyeTrace()
    if zclib.util.InDistance(attach.Pos, trace.HitPos, 2) then
        return true
    else
        return false
    end
end

function ENT:OnFoldButton(ply)
    if self:GetAttachment(1) == nil then return false end
    local attach = self:GetAttachment(1)
    local trace = ply:GetEyeTrace()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

    //debugoverlay.Sphere(attach.Pos - attach.Ang:Forward() * 5,2,0.1,Color( 255, 255, 255 ),true)

    if zclib.util.InDistance(attach.Pos + attach.Ang:Forward() * 5, trace.HitPos, 2) then
        return true
    else
        return false
    end
end

function ENT:CanProperty(ply)
    return zclib.Player.IsAdmin(ply)
end

function ENT:CanTool(ply, tab, str)
    return str == "colour" or zclib.Player.IsAdmin(ply)
end

function ENT:CanDrive(ply)
    return zclib.Player.IsAdmin(ply)
end
