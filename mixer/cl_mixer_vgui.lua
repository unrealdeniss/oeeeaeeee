--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/mixer/cl_mixer_vgui.lua
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

net.Receive("zmlab2_Mixer_OpenInterface", function(len)
    zclib.Debug_Net("zmlab2_Mixer_OpenInterface", len)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b

    LocalPlayer().zmlab2_Mixer = net.ReadEntity()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 62f97761e9c58c14e32065988acba1bff3acab14f801c1de21eda285afcb5c5b

    zmlab2.Interface.Create(600,365,zmlab2.language["SelectMethType"],function(pnl)

        zmlab2.Interface.AddModelList(pnl,zmlab2.config.MethTypes,function(id)
            // IsLocked
            return zmlab2.Mixer.MethTypeCheck(LocalPlayer(),id) == false
        end,
        function(id)
            // IsSelected
            return IsValid(LocalPlayer().zmlab2_Mixer) and LocalPlayer().zmlab2_Mixer:GetMethType() == id
        end,
        function(id)
            // OnClick
            net.Start("zmlab2_Mixer_SetMethType")
            net.WriteEntity(LocalPlayer().zmlab2_Mixer)
            net.WriteUInt(id, 16)
            net.SendToServer()
        end,
        function(raw_data)
            return {model = raw_data.crystal_mdl,render = {FOV = 35},color = raw_data.color} , raw_data.name , zclib.Money.Display(raw_data.price * ( zmlab2.config.NPC.SellRanks[zclib.Player.GetRank(LocalPlayer())] or zmlab2.config.NPC.SellRanks["default"]))
        end)
    end)
end)
