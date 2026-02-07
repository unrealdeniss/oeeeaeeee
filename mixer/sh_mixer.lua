--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/mixer/sh_mixer.lua
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
zmlab2.Mixer = zmlab2.Mixer or {}

// Checks if the player is allowed to create this methtype
function zmlab2.Mixer.MethTypeCheck(ply,methtype)
    local MethData = zmlab2.config.MethTypes[methtype]
    if MethData == nil then return false end
    if MethData.rank and istable(MethData.rank) and table.Count(MethData.rank) > 0 and zclib.Player.RankCheck(ply,MethData.rank) == false then return false end
    if MethData.job and istable(MethData.job) and table.Count(MethData.job) > 0 and MethData.job[zclib.Player.GetJob(ply)] == nil then return false end
    if MethData.customcheck and MethData.customcheck(ply) == false then return false end

    return true
end

function zmlab2.Mixer.GetLiquidColor(Mixer)
    local col
    local state = Mixer:GetProcessState()
    local MethType = Mixer:GetMethType()
    /*
        < 2 = Yellow
        2 = Acid Yellow
        2 - 3 > Acid Yellow to meth color half way
        8 > 9 half color to final color
    */
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

    if state < 2 then
        col = zmlab2.colors["mixer_liquid01"]
    elseif state == 2 then

        col = zmlab2.colors["mixer_liquid02"]

    elseif state == 3 then
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

        local mix_start = Mixer:GetProcessStart()
        local time_fract = (1 / zmlab2.Meth.GetMixTime(MethType)) * (CurTime() - mix_start)

        local midColor = zclib.util.LerpColor(0.5, zmlab2.colors["mixer_liquid02"], zmlab2.Meth.GetColor(MethType))
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

        col = zclib.util.LerpColor(time_fract, zmlab2.colors["mixer_liquid02"], midColor)

    elseif state > 3 and state < 8 then

        col = zclib.util.LerpColor(0.5, zmlab2.colors["mixer_liquid02"], zmlab2.Meth.GetColor(MethType))

    else
        local midColor = zclib.util.LerpColor(0.5, zmlab2.colors["mixer_liquid02"], zmlab2.Meth.GetColor(MethType))
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

        local vent_start = Mixer:GetProcessStart()
        local time_fract = (1 / zmlab2.Meth.GetVentTime(MethType)) * (CurTime() - vent_start)
        col = zclib.util.LerpColor(time_fract, midColor, zmlab2.Meth.GetColor(MethType))

        local qual_fact = (1 / 100) * Mixer:GetMethQuality()
        local h, s, v = ColorToHSV(col)
        col = HSVToColor(h, s * qual_fact, v)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

        local fract = (1 / 4) * (state - 3)
        col = zclib.util.LerpColor(fract, midColor, col)
    end

    return col
end
