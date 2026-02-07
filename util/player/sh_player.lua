--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/util/player/sh_player.lua
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

zmlab2 = zmlab2 or {}
zmlab2.Player = zmlab2.Player or {}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

function zmlab2.Player.IsMethCook(ply)
    if BaseWars then return true end
	if zmlab2.config.Jobs == nil then return true end
	if table.Count(zmlab2.config.Jobs) <= 0 then return true end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

	if zmlab2.config.Jobs[zclib.Player.GetJob(ply)] then
		return true
	else
		return false
	end
end

function zmlab2.Player.IsMethSeller(ply)
    if BaseWars then return true end
	if zmlab2.config.SellJobs == nil then return true end
	if table.Count(zmlab2.config.SellJobs) <= 0 then return true end

	if zmlab2.config.SellJobs[zclib.Player.GetJob(ply)] then
		return true
	else
		return false
	end
end

// Returns the dropoff point if the player has one assigned
function zmlab2.Player.GetDropoff(ply)
	return ply.zmlab2_Dropoff
end

// Does the player has meth?
function zmlab2.Player.HasMeth(ply)
	if (ply.zmlab2_MethList and #ply.zmlab2_MethList > 0) then
		return true
	else
		return false
	end
end

function zmlab2.Player.OnMeth(ply)
	if ply.zmlab2_MethDuration and ply.zmlab2_MethStart and (ply.zmlab2_MethDuration + ply.zmlab2_MethStart) > CurTime() then
		return true
	else
		return false
	end
end

// Checks if the player is allowed to interact with the entity
function zmlab2.Player.CanInteract(ply, ent)
    if zmlab2.Player.IsMethCook(ply) == false then
        zclib.Notify(ply, zmlab2.language["Interaction_Fail_Job"], 1)

        return false
    end

    if zmlab2.config.SharedEquipment == true then
        return true
    else
        // Is the entity a public entity?
        if ent.IsPublic == true then return true end

		if FPP and FPP.plyCanTouchEnt(ply, ent, "Physgun") then
			return true
		end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

        if zclib.Player.IsOwner(ply, ent) then
            return true
        else
            zclib.Notify(ply, zmlab2.language["YouDontOwnThis"], 1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

            return false
        end
    end
end
