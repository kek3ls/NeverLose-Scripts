local mode = Menu.Combo("Reverse Knife Hand", "Knife Mode", {"Normal", "Reverse"}, 0)
local cl_righthand = CVar.FindVar("cl_righthand")

Cheat.RegisterCallback("prediction", function(cmd)
	local localplayer = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
	
	if localplayer:GetProp("DT_BasePlayer", "m_iHealth") <= 0 then 
		if mode:Get() == 0 then
			cl_righthand:SetInt(1)
		else
			cl_righthand:SetInt(0)
		end
		return
	end
	
	local get_local_player = EntityList.GetLocalPlayer()
	local get_entity_weapon = get_local_player:GetActiveWeapon()
	local weap = get_entity_weapon:GetClassName()
	local cl_righthand = CVar.FindVar("cl_righthand")
	
	if mode:Get() == 0 then
		if weap == "CKnife" then
			cl_righthand:SetInt(0)
		else
			cl_righthand:SetInt(1)
		end
	else
		if weap == "CKnife" then
			cl_righthand:SetInt(1)
		else
			cl_righthand:SetInt(0)
		end
	end
end)

Cheat.RegisterCallback("destroy", function()
	if mode:Get() == 0 then
		cl_righthand:SetInt(1)
	else
		cl_righthand:SetInt(0)
	end
end)
