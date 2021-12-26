local ui = {
	text = Menu.Text("Main", "Look up and press RMB,"),
	text2 = Menu.Text("Main", "Then press LMB untill grenade will be thrown."),
	space = Menu.Text("Main", ""),
	text3 = Menu.Text("Main", "-98 w/ out armor, -59 w/ armor"),
	spacing = Menu.Text("Main", ""),
	checks = Menu.MultiCombo("Main", "Checks", {"Armor", "Velocity"}, 2, "Do not throw when you 1: have an armor; moving.")
}

Cheat.RegisterCallback("pre-prediction", function(cmd)
	local get_local_player = EntityList.GetLocalPlayer()
	if not get_local_player then return end
	
	local get_entity_weapon = get_local_player:GetActiveWeapon()
	if not get_entity_weapon then return end
	
	local weap = get_entity_weapon:GetClassName()
	local m_flThrowStrength = get_entity_weapon:GetProp("m_flThrowStrength")
	local m_ArmorValue = get_local_player:GetProp("m_ArmorValue")
	local m_iHealth = get_local_player:GetProp("m_iHealth")
	local view_angles = EngineClient.GetViewAngles()
	local velocity = Vector.new(get_local_player:GetProp("DT_BasePlayer", "m_vecVelocity[0]"), 
	get_local_player:GetProp("DT_BasePlayer", "m_vecVelocity[1]"), 
	get_local_player:GetProp("DT_BasePlayer", "m_vecVelocity[2]")):Length2D()

	if weap ~= "CHEGrenade" then return end
	if ui.checks:GetBool(1) then if m_ArmorValue ~= 0 then return end end
	if ui.checks:GetBool(2) then if velocity >= 2 then return end end
	if m_flThrowStrength >= 0.11 or m_flThrowStrength <= 0.10 then return end
	if view_angles.pitch > -88 then return end
	if m_iHealth <= 0 then return end
	
	cmd.buttons = bit.band(cmd.buttons, bit.bnot(2048))
	cmd.buttons = bit.band(cmd.buttons, bit.bnot(1))
end)
