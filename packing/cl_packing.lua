--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/packing/cl_packing.lua
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
zmlab2.Table = zmlab2.Table or {}

function zmlab2.Table.Initialize(Table)
    Table.IsAutobreaking = false
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

local function DrawButton(x, y,w,h, txt, hover)
    draw.SimpleText(txt, zclib.GetFont("zmlab2_font02"), x, y, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    zclib.util.DrawOutlinedBox(x - w / 2, y - h / 2, w, h, 4, color_white)
    if hover then
        draw.RoundedBox(0, x - w / 2, y - h / 2, w, h, zmlab2.colors["white02"])
    end
end

function zmlab2.Table.Draw(Table)
    if zclib.util.InDistance(LocalPlayer():GetPos(), Table:GetPos(), 1000) and Table.IsAutobreaking == false and zclib.Convar.Get("zmlab2_cl_drawui") == 1 then
        cam.Start3D2D(Table:LocalToWorld(Vector(0, 0, 36.3)), Table:LocalToWorldAngles(Angle(0, 180, 0)), 0.05)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

            if IsValid(Table:GetCrate()) then
                DrawButton(-255, 210, 300, 80, zmlab2.language["Drop"], Table:OnDrop_Crate(LocalPlayer()))
            else
                local txtSize = zclib.util.GetTextSize(zmlab2.language["MissingCrate"], zclib.GetFont("zmlab2_font02"))
                local barSize = math.Clamp(txtSize * 1.1, 400, 700)
                zclib.util.DrawOutlinedBox((-barSize / 2) - 260, -140, barSize, 280, 8, zmlab2.colors["white02"])
                draw.SimpleText(zmlab2.language["MissingCrate"], zclib.GetFont("zmlab2_font02"), -260, 0, color_red, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end

            if IsValid(Table:GetTray()) then
                DrawButton(245, 210, 300, 80, zmlab2.language["Drop"], Table:OnDrop_Tray(LocalPlayer()))
            end
        cam.End3D2D()
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

function zmlab2.Table.Think(Table)

    zclib.util.LoopedSound(Table, "zmlab2_machine_icebreaker_loop", Table.IsAutobreaking == true)

    if zclib.util.InDistance(LocalPlayer():GetPos(),Table:GetPos(), 1000) then
        if Table:GetIsAutobreaking() ~= Table.IsAutobreaking then
            Table.IsAutobreaking = Table:GetIsAutobreaking()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

            if Table.IsAutobreaking then
                zclib.Animation.Play(Table,"run", 1)
            else
                zclib.Animation.Play(Table,"idle", 1)
            end
        end
    else
        Table.IsAutobreaking = nil
    end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

function zmlab2.Table.OnRemove(Table)
    Table:StopSound("zmlab2_machine_icebreaker_loop")
end
