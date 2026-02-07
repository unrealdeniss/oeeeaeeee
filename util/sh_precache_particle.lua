--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/util/sh_precache_particle.lua
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

game.AddParticles("particles/zmlab2_fx.pcf")
PrecacheParticleSystem("zmlab2_cleaning")
PrecacheParticleSystem("zmlab2_methsludge_fill")
PrecacheParticleSystem("zmlab2_poison_gas")
PrecacheParticleSystem("zmlab2_vent_clean")
PrecacheParticleSystem("zmlab2_vent_poision")
PrecacheParticleSystem("zmlab2_methylamin_fill")
PrecacheParticleSystem("zmlab2_aluminium_fill")
PrecacheParticleSystem("zmlab2_acid_fill")
PrecacheParticleSystem("zmlab2_acid_explo")
PrecacheParticleSystem("zmlab2_aluminium_explo")
PrecacheParticleSystem("zmlab2_methylamine_explo")
PrecacheParticleSystem("zmlab2_lox_explo")
PrecacheParticleSystem("zmlab2_frozen_gas")
PrecacheParticleSystem("zmlab2_purchase")
PrecacheParticleSystem("zmlab2_filter_exhaust")
PrecacheParticleSystem("zmlab2_extinguish")
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

for k, v in pairs(zmlab2.config.MethTypes) do
    if v.visuals then
        if v.visuals.effect then
            PrecacheParticleSystem(v.visuals.effect)
        end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

        if v.visuals.effect_breaking then
            PrecacheParticleSystem(v.visuals.effect_breaking)
        end

        if v.visuals.effect_filling then
            PrecacheParticleSystem(v.visuals.effect_filling)
        end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

        if v.visuals.effect_exploding then
            PrecacheParticleSystem(v.visuals.effect_exploding)
        end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 673541df8eb878e73dbe84f741db38ecc0d18f0735b0fb5e9d0e8de5bdb858e6

        if v.visuals.effect_mixer_liquid then
            PrecacheParticleSystem(v.visuals.effect_mixer_liquid)
        end

        if v.visuals.effect_mixer_exhaust then
            PrecacheParticleSystem(v.visuals.effect_mixer_exhaust)
        end
    end
end
