--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/util/sh_effects.lua
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


zclib.NetEvent.AddDefinition("sell", {
	[1] = {
		type = "vector"
	},
}, function(received)
	zclib.Effect.ParticleEffect("zmlab2_purchase", received[1], angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "cash")
end)

zclib.NetEvent.AddDefinition("clean", {
	[1] = {
		type = "vector"
	},
}, function(received)
	zclib.Effect.ParticleEffect("zmlab2_cleaning", received[1], angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "cleaning_shrub")
	zclib.Sound.EmitFromPosition(received[1], "cleaning_splash")
end)

zclib.NetEvent.AddDefinition("extinguish", {
	[1] = {
		type = "vector"
	},
}, function(received)
	zclib.Effect.ParticleEffect("zmlab2_extinguish", received[1], angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "Extinguish")
end)

zclib.NetEvent.AddDefinition("methylamin_fill", {
	[1] = {
		type = "entity"
	},
}, function(received)
	zclib.Effect.ParticleEffect("zmlab2_methylamin_fill", received[1]:LocalToWorld(Vector(11,0,53)), angle_zero, received[1])
end)

zclib.NetEvent.AddDefinition("aluminium_fill", {
	[1] = {
		type = "entity"
	},
}, function(received)
	zclib.Effect.ParticleEffect("zmlab2_aluminium_fill", received[1]:LocalToWorld(Vector(11,0,60)), angle_zero, received[1])
end)

zclib.NetEvent.AddDefinition("acid_fill", {
	[1] = {
		type = "entity"
	},
}, function(received)
	zclib.Sound.EmitFromEntity("liquid_fill", received[1])
	zclib.Effect.ParticleEffect("zmlab2_acid_fill", received[1]:LocalToWorld(Vector(-5,0,62)), received[1]:LocalToWorldAngles(angle_zero), received[1])
end)

zclib.NetEvent.AddDefinition("acid_explo", {
	[1] = {
		type = "vector"
	},
}, function(received)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

	zclib.Effect.ParticleEffect("zmlab2_acid_explo", received[1], angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "acid_explo")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

	zclib.Effect.RandomDecals(received[1], "BeerSplash",50)
end)

zclib.NetEvent.AddDefinition("alu_explo", {
	[1] = {
		type = "vector"
	},
}, function(received)

	zclib.Effect.ParticleEffect("zmlab2_aluminium_explo", received[1] + Vector(0,0,10), angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "aluminium_explo")
end)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

zclib.NetEvent.AddDefinition("methylamin_explo", {
	[1] = {
		type = "vector"
	},
}, function(received)

	zclib.Effect.ParticleEffect("zmlab2_methylamine_explo", received[1], angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "cleaning_splash")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

	zclib.Effect.RandomDecals(received[1], "BeerSplash",75)
end)

zclib.NetEvent.AddDefinition("lox_explo", {
	[1] = {
		type = "vector"
	},
}, function(received)

	zclib.Effect.ParticleEffect("zmlab2_lox_explo", received[1] + Vector(0,0,10), angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "lox_explo")
end)

zclib.NetEvent.AddDefinition("meth_break", {
	[1] = {
		type = "vector"
	},
	[2] = {
		type = "uiint"
	},
}, function(received)

	local m_data = zmlab2.config.MethTypes[received[2]]
	if m_data == nil or m_data.visuals == nil or m_data.visuals.effect_breaking == nil then return end
	zclib.Effect.ParticleEffect(m_data.visuals.effect_breaking, received[1], angle_zero)
end)

zclib.NetEvent.AddDefinition("meth_explo", {
	[1] = {
		type = "vector"
	},
	[2] = {
		type = "uiint"
	},
}, function(received)

	local m_data = zmlab2.config.MethTypes[received[2]]
	if m_data == nil or m_data.visuals == nil or m_data.visuals.effect_exploding == nil then return end
	zclib.Effect.ParticleEffect(m_data.visuals.effect_exploding, received[1] + Vector(0,0,10), angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "progress_fillingcrate")
end)

zclib.NetEvent.AddDefinition("meth_fill", {
	[1] = {
		type = "vector"
	},
	[2] = {
		type = "uiint"
	},
}, function(received)
	local m_data = zmlab2.config.MethTypes[received[2]]
	if m_data == nil or m_data.visuals == nil or m_data.visuals.effect_filling == nil then return end
	zclib.Effect.ParticleEffect(m_data.visuals.effect_filling, received[1] + Vector(0,0,10), angle_zero)
	zclib.Sound.EmitFromPosition(received[1], "crate_fill")
end)
