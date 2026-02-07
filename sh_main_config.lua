--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/sh_main_config.lua
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
zmlab2.config = zmlab2.config or {}

zmlab2.config.FastDl = false
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

zmlab2.config.SelectedLanguage = "en"

zmlab2.config.Currency = "$"

zmlab2.config.CurrencyInvert = true

zmlab2.config.UoM = "g"

zmlab2.config.DropMeth = "!dropmeth"

zmlab2.config.BagMeth = "!bagmeth"

zmlab2.config.AdminRanks = {
	["superadmin"] = true
}

zmlab2.config.SharedEquipment = false

zmlab2.config.DropMethOnDeath = false

zmlab2.config.Jobs = {}
if TEAM_ZMLAB2_COOK then zmlab2.config.Jobs[TEAM_ZMLAB2_COOK] = true end

zmlab2.config.SellJobs = {}
if TEAM_ZMLAB2_COOK then zmlab2.config.SellJobs[TEAM_ZMLAB2_COOK] = true end

if GAMEMODE and GAMEMODE.Config and GAMEMODE.Config.PocketBlacklist then
	GAMEMODE.Config.PocketBlacklist["zmlab2_equipment"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_storage"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_table"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_tent"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_tent_door"] = true

	GAMEMODE.Config.PocketBlacklist["zmlab2_item_acid"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_item_aluminium"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_item_crate"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_item_frezzertray"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_item_lox"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_item_methylamine"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_item_palette"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_item_autobreaker"] = true

	GAMEMODE.Config.PocketBlacklist["zmlab2_machine_mixer"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_machine_filler"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_machine_filter"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_machine_frezzer"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_machine_furnace"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_machine_ventilation"] = true

	GAMEMODE.Config.PocketBlacklist["zmlab2_dropoff"] = true
	GAMEMODE.Config.PocketBlacklist["zmlab2_npc"] = true
end

zmlab2.config.Damageable = {
	["zmlab2_machine_ventilation"] = -1,
	["zmlab2_storage"] = -1,
	["zmlab2_machine_furnace"] = -1,
	["zmlab2_machine_mixer"] = -1,
	["zmlab2_machine_filter"] = -1,
	["zmlab2_machine_filler"] = -1,
	["zmlab2_machine_frezzer"] = -1,
	["zmlab2_table"] = -1,

	["zmlab2_item_acid"] = 15,
	["zmlab2_item_aluminium"] = 15,
	["zmlab2_item_lox"] = 25,
	["zmlab2_item_methylamine"] = 25,

	["zmlab2_item_meth"] = 3,
	["zmlab2_item_crate"] = 15,
	["zmlab2_item_palette"] = 50,

	["zmlab2_tent"] = 5000,
	["zmlab2_equipment"] = 20000,
}

zmlab2.config.Equipment = {

	// Should we check if the bottom of the tent does touch the ground of the map?
	OnGroundCheck = false,

	// Tents need to be placed up right, No crazy rotations
	RotationCheck = false,

	// How much money does the player get back when removing a machine? (This also gets used when a tent gets deconstructed and all machines inside get removed)
	Refund = 0.5, // 1 = 100%, 0.5 = 50%

	// Should the equipment be untouchable by the physgun?
	PhysgunDisabled = true,

	// Can the player collide with the Equipment / Machines
	PlayerCollide = true,

	// If set to true then the EquipmentBox will only display a repair button
	RepairOnly = false,

	// If set to false then the player can build / place machines anywhere
	RestrictToTent = true,
}

zmlab2.config.PollutionSystem = {
	// Should the machines start to pollute the area once they produce meth?
	Enabled = false,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

	// Multiplies the produced pollution amount (The more a area is poluted, the more damage a player gets and the longer it takes to dissipate the pollution)
	Multiplier = 1,

	// How much pollution evaporates / dissapears per second?
	EvaporationAmount = 3,

	// Performs a trace for a more realistic result but costs more performance.
	UseTraces = true,

	// How much damage does pollution inflict per second (Damage ranges between min / max depending on pollution amount)
	Damage = {min = 1,max = 10},

	// If set to true then the inflictor of the poisen gas damage will be the player himself, otherwhise it will be the world entity.
	DamageInflictorSelf = false,

	// You can use this to make certain players immune against the poison gas, So there will be no damage or screen effect
	ImmunityCheck = function(ply)

		// If you enable this check then superadmins are immune against the poison gas
		//if ply:IsSuperAdmin() then return true end

		// You can write something like that to check if the player is wearing a GasMask Accessory, (Requieres SHAccessory)
		if ply.SH_AccessoryInfo and ply.SH_AccessoryInfo.equipped and ply.SH_AccessoryInfo.equipped["zmlab2_gasmask"] == true then return true end

		// Checks if the player wears the gasmask model in BH Accessory https://steamcommunity.com/sharedfiles/filedetails/?id=2502575015
		if BH_ACC and ply.bh_acc_equipped then
			local immune = false
			for k,v in pairs(ply.bh_acc_equipped) do
				local v_data = BH_ACC.GetItemData(v)
				if v_data.model == "models/zerochain/props_methlab/zmlab2_gasmask.mdl" then
					immune = true
					break
				end
			end
			if immune == true then return true end
		end

		if AAS and ply:AASModelEquiped("models/zerochain/props_methlab/zmlab2_gasmask.mdl") then return true end

		// If you gonna check for a player model (hazmat) then make sure you define the original model path the model was compiled for
		// aka the path that gets returned via :GetModel() and not the path the model is currently located
		// You can find a guide for this here > https://www.gmodstore.com/help/addon/7033/common-issues-3/topics/zbl-config-protectioncheck-not-working-correctly-for-models
	end,

	AmountPerMachine = {
		// Every second while acid gets heated
		["Furnace_Cycle"] = 4,

		// Every second while Ingredients getting mixed
		["Mixer_Cycle"] = 4,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

		// Every second while the meth getting refined
		["Filter_Cycle"] = 6,

		// Every second while the meth is getting filled on the trays
		["Filler_Cycle"] = 4,

		// Every second while the meth is getting frozen
		["Frezzing_Cycle"] = 4,
	}
}

zmlab2.config.Ventilation = {
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

	// How long is the output pipe
	Hose_length = 1000,

	// How large is the cleaning area of the Ventilation system
	Radius = 300,

	// Defines how much pollution can be moved per second
	// (Having a low value means the player would need multiple ventilation machines to keep the area clear of pollution)
	AmountPerSecond = 25,

	ParticlesDisabled = false,
}


////////////// PRODUCTION
zmlab2.config.MiniGame = {

	// This can be used to increase the amount of minigames 1 = normal, 2 = double
	OccurrenceMultiplier = 1,

	// How long after the error occured does the player have time to respond
	RespondTime = 45,

	// How much will the quality of meth decrease if the player fails the MiniGame
	Quality_Penalty = 10,

	// How much will the quality increase if the player wins the mini game
	Quality_Reward = 15,

	// Defines some chances for chaos events when failing a minigame
	Punishment = {
		// How high is the chance that the machine will create a large burst of pollution
		Pollu_Chance = 50, // 50%
		// At which meth difficulty level does this punishment occure
		Pollu_Difficulty = 1,
		// How much pollution should be instantly greated
		Pollu_Amount = 100,

		// Ignites the machine
		Fire_Chance = 25,
		Fire_Difficulty = 3,
		Fire_Duration = 10,

		// Explodes the machine
		Explo_Chance = 15,
		Explo_Difficulty = 7,
	}
}

zmlab2.config.Storage = {
	// How often can a player buy something from the storage
	BuyInterval = 0.4, // seconds
}

zmlab2.config.Furnace = {
	// How many acid container does the furnace need
	Capacity = 3,

	// How long does it take to heat the acid
	HeatingCylce_Duration = 60,
}

zmlab2.config.Filler = {
	// How long does it take to fill a tray
	Fill_Time = 3,
}

zmlab2.config.Frezzer = {
	// How much meth fits on a tray
	Tray_Capacity = 250,

	// Should we draw a indicator on the tray to show its current state?
	Tray_DisplayState = true,

	// How long does it take for one frezze cycle to complete
	Time = 60,

	// How often can the Freezer be used before he needs a new lox tank
	Lox_Usage = 5,
}

zmlab2.config.Packing = {
	// How fast can a player break ice
	Manual_IceBreak_Interval = 0.5,

	// How fast can the auto breaker upgrade for the packing table break ice
	Auto_IceBreak_Interval = 0.4,
}

zmlab2.config.Crate = {
	Capacity = 2500,
}

zmlab2.config.Palette = {
	// How many transport crates fit on the palette
	Limit = 32,
}


////////////// SELLING
zmlab2.config.NPC = {

	Name = "Meth Buyer",

	// The Model of the Meth Buyer
	Model = "models/Humans/Group03/male_07.mdl",

	// What Sell mode do we want? (Can be dynamicly changed using the zmlab2_GetSellMode Hook)
	SellMode = 3,
	// 1 = Methcrates can be collected by Players and sold by the MethBuyer on use
	// 2 = Methcrates cant be collected and the MethBuyer tells you a dropoff point instead
	// 3 = Methcrates can be collected and the MethBuyer tells you a dropoff point
	// 4 = Methcrates need to be moved to the MethBuyer and sold directly by him

	// Can be used to multiply the earned money depending on Player rank (If you wanna modify the earned money by any other means use the zmlab2_PreMethSell Hook)
	SellRanks = {
		["default"] = 1, // < DONT REMOVE THIS, This value gets used if the players rank could not be found in the table
		["user"] = 1,
		["superadmin"] = 2,
		["vip"] = 2,
	},
}

zmlab2.config.DropOffPoint = {

	// The Time in seconds before Dropoff Point closes.
	DeliverTime = 120,

	// The Time in seconds till you can request another dropoff point.
	DeliverRequest_CoolDown = 15,

	// Should the meth crate icon be visible?
	Draw_Icon = true,

	// Should the countdown timer be visible?
	Draw_Time = true,
}

zmlab2.config.Police = {

	// Should the player gets wanted once he sells meth?
	WantedOnMethSell = true,

	// These jobs can get extra money if they destroy TransportCrates filled with meth and also get a Wanted notification once a player sells meth
	Jobs = {
		//[TEAM_POLICE] = true,
	},

	// The money the police player receives (for destroying the TransportCrate) is the same amount the meth producer receives times this value
	// 1 = 100% , 0.5 = 50%
	PoliceCut = 0.5,

	// This chat command can be used by the police to strip all the meth from the player they are looking at
	cmd_strip = "!stripmeth",
}
if TEAM_POLICE then zmlab2.config.Police.Jobs[TEAM_POLICE] = true end


////////////// USING
zmlab2.config.Meth = {
	// How Long does one hit of meth last
	Duration = 10,

	// How much meth gets used up per hit
	Amount = 20,
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

	// The max duration of a meth trip
	MaxDuration = 100,

	// Is the player allowed to use multiple meth types at the same time? (The player can only be affected by one meth type at a time so using another meth type will overwrite the last one)
	// Setting this to false wont allow the player to use any other meth type till his current high effect has ended
	ConsumMixing = true,
}


////////////// SH ACCESSORY
if SH_ACC then
    if CLIENT then
      --  SH_ACC:DefineOffsetEasy("models/zerochain/props_methlab/zmlab2_gasmask.mdl", "ValveBiped.Bip01_Head1", Vector(2.5, 1.6, 0), Angle(-180, 96, 90))
    end
   -- SH_ACC:AddAccessory("zmlab2_gasmask", {name = "GasMask", price = 5000, slot = 1, mdl = "models/zerochain/props_methlab/zmlab2_gasmask.mdl"})
end


////////////// BH ACCESSORY https://steamcommunity.com/sharedfiles/filedetails/?id=2502575015
if BH_ACC then
	BH_ACC.New("Accessories", "GasMask", {price = 5000, model = "models/zerochain/props_methlab/zmlab2_gasmask.mdl", bone = "ValveBiped.Bip01_Head1", offsetV = Vector(2.48, 1, 0), offsetA = Angle(180, 100, 90), ui_CamPos = Vector(76.93, 24.17, 35), ui_LookAng = Angle(12.53, -162.64, 0), ui_FOV = 10  } )
end


////////////// AAS ACCESSORY
if AAS and SERVER then

	timer.Simple(10, function()
		AAS.AddItem({
			['scale'] = Vector(1, 1, 1),
			['options'] = {
				['skin'] = "0",
				['activate'] = true,
				['iconPos'] = Vector(0, 0, 0),
				['color'] = Color(240, 240, 240, 255),
				['vip'] = false,
				['bone'] = "ValveBiped.Bip01_Head1",
				['iconFov'] = -4.4444444444444,
				['new'] = false
			},
			['uniqueId'] = 26,
			['model'] = "models/zerochain/props_methlab/zmlab2_gasmask.mdl",
			['pos'] = Vector(2.71875, 1.8125, 0),
			['category'] = "Face Mask",
			['job'] = {},
			['ang'] = Angle(-89.59400177002, 0, -89.59400177002),
			['price'] = 1000,
			['name'] = "Meth Mask",
			['description'] = "If you need a good mask for your business"
		}, nil, false, true)
	end)
end





////////////// LOCKPICKING
zmlab2.config.Lockpick = {

	// Should players be able to lockpick a locked tent door?
	Enabled = true,

	// How Long does it take to lockick a locked tent door?
	Duration = 10,

	// Should the player get wanted for successfully picking a tent doors lock?
	Wanted_enabled = true,
	Wanted_time = 120,
	Wanted_msg = "Picked locks!",
}


////////////// EXTINGUISHER
zmlab2.config.Extinguisher = {
	// How often are the player allowed to use the fire Extinguisher
	Interval = 3,
}
