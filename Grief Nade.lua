Cheat.RegisterCallback("prediction", function(cmd)
	local get_local_player = EntityList.GetLocalPlayer()
	if not get_local_player then return end
	
	local get_entity_weapon = get_local_player:GetActiveWeapon()
	if not get_entity_weapon then return end
	
	local weap = get_entity_weapon:GetClassName()
	local m_flThrowStrength = get_entity_weapon:GetProp("m_flThrowStrength")
	local m_ArmorValue = get_local_player:GetProp("m_ArmorValue")
	local m_iHealth = get_local_player:GetProp("m_iHealth")
	local view_angles = EngineClient.GetViewAngles()
	local velocity = Vector.new(localplayer:GetProp("DT_BasePlayer", "m_vecVelocity[0]"), 
		localplayer:GetProp("DT_BasePlayer", "m_vecVelocity[1]"), 
		localplayer:GetProp("DT_BasePlayer", "m_vecVelocity[2]")
	):Length2D()

	if weap ~= "CHEGrenade" then return end
	if m_ArmorValue ~= 0 then return end
	if velocity >= 2 then return end
	if m_flThrowStrength >= 0.11 or m_flThrowStrength <= 0.10 then return end
	if view_angles.pitch > -88 then return end
	if m_iHealth <= 0 then return end
	
	EngineClient.ExecuteClientCmd("+attack")
	EngineClient.ExecuteClientCmd("+attack2")
	EngineClient.ExecuteClientCmd("-attack")
	EngineClient.ExecuteClientCmd("-attack2")
end)
