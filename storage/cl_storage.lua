--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/storage/cl_storage.lua
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
zmlab2.Storage = zmlab2.Storage or {}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

function zmlab2.Storage.DrawUI(Storage)
    if zclib.util.InDistance(LocalPlayer():GetPos(),Storage:GetPos(), 1000) and zclib.Convar.Get("zmlab2_cl_drawui") == 1 then
        cam.Start3D2D(Storage:LocalToWorld(Vector(0, 13.5, 40)), Storage:LocalToWorldAngles(Angle(0, 180, 90)), 0.1)
            local txtSize = zclib.util.GetTextSize(zmlab2.language["Storage"], zclib.GetFont("zmlab2_font02"))
            local barSize = txtSize * 1.1
            draw.RoundedBox(0, -barSize / 2, -48, barSize, 48, zclib.colors["black_a200"])
            local nextTime = math.Clamp(Storage:GetNextPurchase() - CurTime(), 0, zmlab2.config.Storage.BuyInterval)

            if nextTime > 0 then
                draw.RoundedBox(0, -barSize / 2, -48, (barSize / zmlab2.config.Storage.BuyInterval) * nextTime, 48, zmlab2.colors["orange01"])
            end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

            zclib.util.DrawOutlinedBox(-barSize / 2, -48, barSize, 48, 2, color_white)
            draw.SimpleText(zmlab2.language["Storage"], zclib.GetFont("zmlab2_font02"), 0, -23, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        cam.End3D2D()
    end
end

function zmlab2.Storage.Initialize(Storage) end
function zmlab2.Storage.OnRemove(Storage) end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2
