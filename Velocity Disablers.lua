local ui = {
	main	= Menu.MultiCombo('Main', 'to Disable', {'Auto Strafe', 'Fake Lag'}, 0),
	jump	= Menu.Switch('Main', 'Auto Strafe \'IN_JUMP\' Check', true, 'Allow strafe only when you pressed your jump button. SPACE for example.'),
	limit	= Menu.SliderInt('Main', 'Velocity Limit', 3, 1, 10),
}

local nl = {
	strafe	= Menu.FindVar('Miscellaneous', 'Main', 'Movement', 'Auto Strafe'),
	lag	= Menu.FindVar('Aimbot', 'Anti Aim', 'Fake Lag', 'Enable Fake Lag'),
}

local visibility = function()
	local strafe = ui.main:GetBool(1)
	local fl = ui.main:GetBool(2)
	
	ui.jump:SetVisible(strafe)
	ui.limit:SetVisible(strafe or fl)
end
visibility()
ui.main:RegisterCallback(visibility)

Cheat.RegisterCallback('pre_prediction', function(cmd)
	local localplayer = EntityList.GetLocalPlayer()
	
	if not localplayer or localplayer == nil or not localplayer:IsAlive() then return end
	
	local v1	= bit.band(cmd.buttons, 8)		== 8
	local v2	= bit.band(cmd.buttons, 16)		== 16
	local v3	= bit.band(cmd.buttons, 512)	== 512
	local v4	= bit.band(cmd.buttons, 1024)	== 1024
	local jump	= bit.band(cmd.buttons, bit.lshift(1, 1))
	local velocity	= Vector.new(localplayer:GetProp('m_vecVelocity[0]'), localplayer:GetProp('m_vecVelocity[1]'), localplayer:GetProp('m_vecVelocity[2]'))
	local onground	= (bit.band(localplayer:GetProp('m_fFlags'), 1) == 1) == true
	local in_move	= (v1 or v2 or v3 or v4)

	if ui.main:GetBool(1) then
		if velocity:Length2D() < ui.limit:Get() or onground then
			nl.strafe:SetBool(false)
		else
			nl.strafe:SetBool(true)
		end
	end

	if ui.main:GetBool(2) then
		if velocity:Length2D() < ui.limit:Get() then
			nl.lag:SetBool(false)
		else
			nl.lag:SetBool(true)
		end
	end
	
	if ui.jump:Get() and jump ~= 2 then nl.strafe:SetBool(false) end
end)
