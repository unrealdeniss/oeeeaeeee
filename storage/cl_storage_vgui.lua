--[[
Server Name: AetherNetwork.gg *HIRING* Craft|Bitcoin|Gangs|Meth|Weed|FastDL
Server IP:   193.243.190.5:27034
File Path:   addons/zeros_methlab02_v1.4.8/lua/zmlab2/storage/cl_storage_vgui.lua
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
net.Receive("zmlab2_Storage_OpenInterface", function(len)
    zclib.Debug_Net("zmlab2_Storage_OpenInterface",len)

    LocalPlayer().zmlab2_Storage = net.ReadEntity()
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

    zmlab2.Interface.Create(600,365,zmlab2.language["Storage"],function(pnl)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- a24be44ed04cb3f43394c79878afc7a5b39b9c3a4398999acc8e589f10b27a10
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 77f0423b7741f8d87b19a506ad6b36ed8373ae5917ed0fc52f0ca2effe81b129

        zmlab2.Interface.AddModelList(pnl,zmlab2.config.Storage.Shop,function(id)
            // IsLocked
            return zmlab2.Storage.BuyCheck(LocalPlayer(),id) == false
        end,
        function(id)
            // IsSelected
            return false
        end,
        function(id)
            // OnClick
            if LocalPlayer().zmlab2_Storage:GetNextPurchase() > CurTime() then return end
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2

            net.Start("zmlab2_Storage_Buy")
            net.WriteEntity(LocalPlayer().zmlab2_Storage)
            net.WriteUInt(id,16)
            net.SendToServer()
        end,
        function(raw_data)
            return {model = raw_data.model,render = {FOV = 35},color = raw_data.color,bodygroup = {[0] = 5}} , raw_data.name , zclib.Money.Display(raw_data.price)
        end)
    end)
end)
                                                                                                                                                                                                                                                                                                                                                                                                                                                       -- 3f6adc3e5860ad5729f8473ebdf09f59386e613ea66a847ce8c10022a201d8e2
