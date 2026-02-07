--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/inventory/configuration/items/zmlab2_item_crate.lua
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

local ITEM = XeninInventory:CreateItemV2()
ITEM:SetMaxStack(1)
ITEM:SetModel("models/zerochain/props_methlab/zmlab2_crate.mdl")
ITEM:SetDescription(function(self, tbl)

	local MethType = tbl.data.MethType
	local desc = ""
	if zmlab2.config.MethTypes[MethType] and zmlab2.config.MethTypes[MethType].desc then
		desc = zmlab2.config.MethTypes[MethType].desc
	end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

	return {
		"Quality: " .. tbl.data.MethQuality .. "%",
		"Info: " .. desc,
	}
end)

ITEM:AddDrop(function(self, ply, ent, tbl, tr)
	local data = tbl.data

	ent:SetMethType(data.MethType)
	ent:SetMethAmount(data.MethAmount)
	ent:SetMethQuality(data.MethQuality)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

	zclib.Player.SetOwner(ent, ply)
end)

function ITEM:GetData(ent)
	return {
		MethType = ent:GetMethType(),
		MethAmount = ent:GetMethAmount(),
		MethQuality = ent:GetMethQuality(),
	}
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

function ITEM:GetVisualAmount(item)
	return item.data.MethAmount
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

function ITEM:GetDisplayName(item)
	return self:GetName(item)
end

function ITEM:GetName(item)
	local name = "Unkown"

	local ent = isentity(item)
	local MethType = ent and item:GetMethType() or item.data.MethType
	//local MethAmount = ent and item:GetMethAmount() or item.data.MethAmount
	//local MethQuality = ent and item:GetMethQuality() or item.data.MethQuality

	if zmlab2.config.MethTypes[MethType] and zmlab2.config.MethTypes[MethType].name then
		name = zmlab2.config.MethTypes[MethType].name//.. " " .. (MethQuality or 0) .. "%"
	end

	return name
end

function ITEM:GetCameraModifiers(tbl)
	return {
		FOV = 40,
		X = 0,
		Y = -22,
		Z = 25,
		Angles = Angle(0, -190, 0),
		Pos = Vector(0, 0, -1)
	}
end

function ITEM:GetClientsideModel(tbl, mdlPanel)
	local MethMat = zmlab2.Meth.GetMaterial(tbl.data.MethType,tbl.data.MethQuality)
	if MethMat then
		mdlPanel.Entity:SetSubMaterial(0, "!" .. MethMat)
	end

	local cur_amount = tbl.data.MethAmount
	if cur_amount <= 0 then
		mdlPanel.Entity:SetBodygroup(0, 5)
	else
		local bg = math.Clamp(5 - math.Round((5 / zmlab2.config.Crate.Capacity) * cur_amount), 1, 5)
		mdlPanel.Entity:SetBodygroup(0, bg)
	end
end

ITEM:Register("zmlab2_item_crate")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
