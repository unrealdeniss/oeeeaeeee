--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/minigame/cl_minigame.lua
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
zmlab2.MiniGame = zmlab2.MiniGame or {}

/*
	Called from the SERVER to tell the Client about the minigame id
*/
net.Receive("zmlab2.MiniGame.GameID", function(len)
    zclib.Debug_Net("zmlab2.MiniGame.GameID",len)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10

	local MiniGame_Ent = net.ReadEntity()
	local GameID = net.ReadString()
	if MiniGame_Ent and IsValid(MiniGame_Ent) and MiniGame_Ent:IsValid() and GameID then
		MiniGame_Ent.GameID = GameID
	end
end)

/*
	Called from the SERVER to start a minigame
*/
net.Receive("zmlab2_MiniGame", function(len)
    zclib.Debug_Net("zmlab2_MiniGame",len)

	local GameID = net.ReadString()
    local MiniGame_Ent = net.ReadEntity()

	zmlab2.MiniGame.List[GameID]:OnStart(MiniGame_Ent,ply)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069529

	zmlab2.MiniGame.List[GameID]:Interface(MiniGame_Ent,ply)
end)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504

/*
	Called from the MiniGame to send the game result to the SERVER
*/
function zmlab2.MiniGame.Finish(GameID,Machine,Result)

	zmlab2.MiniGame.List[ GameID ]:OnFinish(Machine, LocalPlayer(), Result)

	net.Start("zmlab2_MiniGame")
	net.WriteString(GameID)
	net.WriteEntity(Machine)
	net.WriteBool(Result)
	net.SendToServer()
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 76561198010069504
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b
