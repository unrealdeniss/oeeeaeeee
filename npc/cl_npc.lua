--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/npc/cl_npc.lua
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
zmlab2.NPC = zmlab2.NPC or {}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

function zmlab2.NPC.Initialize(NPC)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

function zmlab2.NPC.Draw(NPC)
    NPC:DrawModel()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

    if zmlab2 and zclib and zclib.util and zclib.util.InDistance(NPC:GetPos(), LocalPlayer():GetPos(), 500) and zclib.Convar.Get("zmlab2_cl_drawui") == 1 then
        cam.Start3D2D(NPC:LocalToWorld(Vector(0, 0, 80)), Angle(0, LocalPlayer():EyeAngles().y - 90, 90), 0.1)
            draw.RoundedBox(0, -150, -30, 300, 60, zclib.colors["black_a100"])
            draw.SimpleText(zmlab2.config.NPC.Name, zclib.GetFont("zmlab2_font02"), 0, 0, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            zclib.util.DrawOutlinedBox(-150, -30, 300, 60, 4, color_white)
        cam.End3D2D()
    end
end
