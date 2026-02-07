--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/filter/cl_filter.lua
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

if not CLIENT then return end
zmlab2 = zmlab2 or {}
zmlab2.Filter = zmlab2.Filter or {}


function zmlab2.Filter.Initialize(Filter)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

end

function zmlab2.Filter.Draw(Filter)
    zclib.util.LoopedSound(Filter, "zmlab2_machine_mixing", Filter:GetProcessState() == 2)

    if Filter:GetProcessState() == 2 and (Filter.NextEffect == nil or (Filter.NextEffect and CurTime() > Filter.NextEffect)) then
        zclib.Effect.ParticleEffect("zmlab2_filter_exhaust", Filter:LocalToWorld(Vector(25,0,46)), Filter:GetAngles(), Filter)
        Filter.NextEffect = CurTime() + 1
    end

    if zclib.util.InDistance(LocalPlayer():GetPos(),Filter:GetPos(), 1000) then
        if zclib.Convar.Get("zmlab2_cl_drawui") == 1 then zmlab2.Filter.DrawUI(Filter) end

        // Vibrates certain bones of the machine
        zclib.VibrationSystem.Run(Filter,Filter:GetProcessState() == 2,0.5)
    end
end

function zmlab2.Filter.OnRemove(Filter)
    Filter:StopSound("zmlab2_machine_mixing")
end

function zmlab2.Filter.DrawUI_Liquid(Filter)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

    local _state = Filter:GetProcessState()

    local amount = 1000
    if _state == 0 or _state >= 5 then amount = 0 end

    local dat = zmlab2.config.MethTypes[Filter:GetMethType()]
    local color = zmlab2.colors["mixer_liquid05"]
    if dat and dat.color then
        color = zclib.util.LerpColor((1 / 100) * Filter:GetMethQuality(), zmlab2.colors["mixer_liquid01"], dat.color)
    end

    if Filter.SmoothBar == nil then Filter.SmoothBar = 0 end
    Filter.SmoothBar = Lerp(0.5 * FrameTime(),Filter.SmoothBar,amount)

    local turbulence = 0
    if _state > 1 then turbulence = 0.5 end

    cam.Start3D2D(Filter:LocalToWorld(Vector(-15, 10.2, 25)), Filter:LocalToWorldAngles(Angle(0, 0, -90)), 0.1)
        zmlab2.Interface.DrawLiquid(Filter, -50, -20, 40, 260, (1 / 1000) * Filter.SmoothBar, color, turbulence)
    cam.End3D2D()
end

local ScreenData = {
    pos = Vector(3.2, 12.1, 29.6),
    ang = Angle(0, 180, 90),
    x = 0,
    y = 0,
    w = 200,
    h = 220,
    pages = {
        [0] = function(Filter)
            zmlab2.Interface.DrawPipe(200,200,zmlab2.colors["mixer_liquid01"])
        end,
        [1] = function(Filter)
            zmlab2.Interface.DrawButton(0, 0, 180, 80, zmlab2.language["Start"], Filter:OnStart(LocalPlayer()))
        end,
        [2] = function(Filter)
            zmlab2.Interface.DrawProgress(zmlab2.Meth.GetFilterTime(Filter:GetMethType()),Filter:GetProgress(),-30)
            draw.SimpleText(Filter:GetMethQuality() .. "%", zclib.GetFont("zmlab2_font02"), 0, 45, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end,
        [4] = function(Filter)
            zmlab2.Interface.DrawButton(0, 0, 180, 80, zmlab2.language["Move Liquid"], Filter:OnStart(LocalPlayer()))
        end,
        [6] = function(Filter)
            surface.SetDrawColor(color_white )
            surface.SetMaterial(zclib.Materials.Get("icon_sponge"))
            surface.DrawTexturedRectRotated(0, 0, 140, 140, 0 )
        end
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

function zmlab2.Filter.DrawUI(Filter)

    local _state = Filter:GetProcessState()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

    // Draw liquid
    zmlab2.Filter.DrawUI_Liquid(Filter)

    // Draws the current status
    zmlab2.Interface.Draw(Filter,ScreenData)

    // A little animated pointer
    zmlab2.Interface.DrawScalar(Filter,Vector(-18, 1, 63.2),Angle(0, 0, -90),_state > 1 and _state < 6)
end
