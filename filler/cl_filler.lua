--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/filler/cl_filler.lua
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
zmlab2.Filler = zmlab2.Filler or {}
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

function zmlab2.Filler.Initialize(Filler)
end

function zmlab2.Filler.Think(Filler)
	if zclib.util.InDistance(LocalPlayer():GetPos(), Filler:GetPos(), 1000) and Filler:GetProcessState() == 2 and (Filler.NextEffect == nil or Filler.NextEffect < CurTime()) then
		local attach = Filler:GetAttachment(2)

		if attach then
			zclib.Effect.ParticleEffect("zmlab2_methsludge_fill", attach.Pos + Filler:GetForward() * math.random(-5, 5), angle_zero, Filler)
		end

		Filler.NextEffect = CurTime() + 0.1
	end
end

function zmlab2.Filler.Draw(Filler)
	zclib.util.LoopedSound(Filler, "zmlab2_machine_pumping", Filler:GetProcessState() == 2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

	if zclib.util.InDistance(LocalPlayer():GetPos(), Filler:GetPos(), 1000) and zclib.Convar.Get("zmlab2_cl_drawui") == 1 then
		zmlab2.Filler.DrawUI(Filler)
	end
end

function zmlab2.Filler.OnRemove(Filler)
	Filler:StopSound("zmlab2_machine_pumping")
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

function zmlab2.Filler.DrawUI_Liquid(Filler)
	if Filler.SmoothBar == nil then
		Filler.SmoothBar = 0
	end

	Filler.SmoothBar = Lerp(0.5 * FrameTime(), Filler.SmoothBar, Filler:GetMethAmount())
	local dat = zmlab2.config.MethTypes[Filler:GetMethType()]
	local turbulence = 0

	if Filler:GetProcessState() == 2 then
		turbulence = 0.5
	end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

	cam.Start3D2D(Filler:LocalToWorld(Vector(17.8, 13.7, 18)), Filler:LocalToWorldAngles(Angle(0, 0, -90)), 0.1)
	zmlab2.Interface.DrawLiquid(Filler, -50, -20, 40, 260, (1 / dat.batch_size) * Filler.SmoothBar, dat.color, turbulence)
	cam.End3D2D()
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

local ScreenData = {
	pos = Vector(-4.85, 12, 29.55),
	ang = Angle(0, 180, 90),
	x = 0,
	y = 0,
	w = 200,
	h = 220,
	pages = {
		[0] = function(Filler)
			zmlab2.Interface.DrawPipe(200, 200, zmlab2.colors["mixer_liquid01"])
		end,
		[1] = function(Filler)
			zmlab2.Interface.DrawIngredient(0, 0, 200, 210, zclib.Materials.Get("icon_tray"), 1, zclib.GetFont("zmlab2_font03"))
		end,
		[3] = function(Filler)
			surface.SetDrawColor(color_white)
			surface.SetMaterial(zclib.Materials.Get("icon_sponge"))
			surface.DrawTexturedRectRotated(0, 0, 140, 140, 0)
		end
	}
}

function zmlab2.Filler.DrawUI(Filler)
	zmlab2.Filler.DrawUI_Liquid(Filler)
	zmlab2.Interface.Draw(Filler, ScreenData)
	zmlab2.Interface.DrawScalar(Filler, Vector(6, 1, 52), Angle(0, 0, -90), Filler:GetProcessState() == 2)
end
