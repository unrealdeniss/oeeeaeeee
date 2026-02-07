--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/tent/cl_door.lua
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
zmlab2.TentDoor = zmlab2.TentDoor or {}

function zmlab2.TentDoor.Initialize(TentDoor)
    TentDoor.SmoothAnim = 0
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

function zmlab2.TentDoor.Draw(TentDoor)

    if TentDoor:GetIsPublic() == false and zclib.util.InDistance(TentDoor:GetPos(), LocalPlayer():GetPos(), 1000) and TentDoor.SmoothAnim < 1 then
        zmlab2.TentDoor.DrawIndicator(TentDoor, Vector(-2, 0, 30), Angle(0, -90, 90), TentDoor:GetIsLocked())
        zmlab2.TentDoor.DrawIndicator(TentDoor, Vector(2, 0, 30), Angle(0, 90, 90), TentDoor:GetIsLocked())
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

function zmlab2.TentDoor.DrawIndicator(TentDoor, pos, ang, state)
    cam.Start3D2D(TentDoor:LocalToWorld(pos), TentDoor:LocalToWorldAngles(ang), 0.1)

        local NextInteraction = TentDoor:GetNextInteraction()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

        if NextInteraction > CurTime() then

            local wipe = math.Clamp((1 / 10) * (NextInteraction - CurTime()), 0, 1)

            surface.SetDrawColor(zclib.colors["black_a100"])
            surface.SetMaterial(zclib.Materials.Get("icon_locked"))
            surface.DrawTexturedRectRotated(0, 0, 200, 200, 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

            surface.SetDrawColor(color_white)
            surface.SetMaterial(zclib.Materials.Get("icon_locked"))
        	// Draws right half of the texture
        	// Note that we also change the width of the rectangle to avoid stetcing of the texture
        	// This is for demonstration purposes, you can do whatever it is you need
        	surface.DrawTexturedRectUV( -100, -100, 200, 200 * wipe, 0, 0, 1,wipe )
        else

            if TentDoor:OnLockButton(LocalPlayer()) then
                surface.SetDrawColor(zmlab2.colors["orange01"])
                surface.SetMaterial(zclib.Materials.Get("icon_locked_outline"))
                surface.DrawTexturedRectRotated(0, 0, 200, 200, 0)
            end

            if state then
                surface.SetDrawColor(color_white)
                surface.SetMaterial(zclib.Materials.Get("icon_locked"))
                surface.DrawTexturedRectRotated(0, 0, 200, 200, 0)
            else
                surface.SetDrawColor(zclib.colors["black_a100"])
                surface.SetMaterial(zclib.Materials.Get("icon_locked"))
                surface.DrawTexturedRectRotated(0, 0, 200, 200, 0)
            end
        end

    cam.End3D2D()
end

function zmlab2.TentDoor.Think(TentDoor)
    if TentDoor:GetIsLocked() then
        TentDoor.SmoothAnim = Lerp(15 * FrameTime(), TentDoor.SmoothAnim, 0)
    else
        if zclib.util.InDistance(TentDoor:GetPos(), LocalPlayer():GetPos(), 75) then
            TentDoor.SmoothAnim = Lerp(5 * FrameTime(), TentDoor.SmoothAnim, 1)
        else
            TentDoor.SmoothAnim = Lerp(5 * FrameTime(), TentDoor.SmoothAnim, 0)
        end
    end

    TentDoor:SetPoseParameter("zmlab2_doormover", TentDoor.SmoothAnim)
    TentDoor:InvalidateBoneCache()
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2
