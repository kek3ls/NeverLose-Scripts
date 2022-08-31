local nl = {
	strafe	= ui.find('Miscellaneous', 'Main', 'Movement', 'Air Strafe'),
	fl	= ui.find('Aimbot', 'Anti Aim', 'Fake Lag', 'Enabled'),
	edge	= ui.find('Miscellaneous', 'Main', 'Movement', 'Edge Jump'),
}

local tabs = {
	info	= ui.create('Info', 'Main'),
	main	= ui.create('Main', 'Main'),
	force	= ui.create('Main', 'Force'),
	destroy	= ui.create('Main', 'Destroy'),
}

local ui = {
	info = {
		text		= tabs.info:label('Report errors in DM on any social.'),
		text1		= tabs.info:label('Available Socials (to contact): Telegram, Discord, VKontakte'),
		text2		= tabs.info:label('Checkout my site: https://k3ls.tk/'),
		spacing		= tabs.info:label(''),
		changelog	= tabs.info:switch('Latest Changelog', true),
		changelog1	= tabs.info:label('Update from: 31.08.22'),
		changelog2	= tabs.info:label('- Updated to latest lua api'),
		changelog3	= tabs.info:label('3.0 api update is ...'),
	},

	master	= tabs.main:switch('Master', false),
	strafe	= tabs.main:switch('\'Air Strafe\' Disabler', false),
	fl		= tabs.main:switch('FakeLag Disabler', false),
	jump	= tabs.main:switch('\'Air Strafe\' \'IN_JUMP\' Check', true),
	limit	= tabs.main:slider('Velocity Limit', 1, 10, 3),

	force = {
		strafe		= tabs.force:switch('Force Disable \'Air Strafe\'', false),
		fl		= tabs.force:switch('Force Disable \'Fake Lag\'', false),
	},

	destroy	= {
		strafe		= tabs.destroy:switch('\'Auto Strafe\'', true),
		fl		= tabs.destroy:switch('\'Fake Lag\'', true),
	}
}

local visibility = function()
	changelog = ui.info.changelog:get()
	
	ui.info.spacing:set_visible(changelog)
	ui.info.changelog1:set_visible(changelog)
	ui.info.changelog2:set_visible(changelog)
	ui.info.changelog3:set_visible(changelog)
	
	master = ui.master:get()
	strafe = master and ui.strafe:get()
	fl = master and ui.fl:get()
	
	ui.strafe:set_visible(master)
	ui.fl:set_visible(master)
	ui.jump:set_visible(strafe)
	ui.limit:set_visible(strafe or fl)
	
	ui.force.strafe:set_visible(master)
	ui.force.fl:set_visible(master)
	
	ui.destroy.strafe:set_visible(master)
	ui.destroy.fl:set_visible(master)
end
visibility()
ui.info.changelog:set_callback(visibility)
ui.master:set_callback(visibility)
ui.strafe:set_callback(visibility)
ui.fl:set_callback(visibility)

events.createmove:set(function(cmd)
	local me = entity.get_local_player()
	if not me or not me:is_alive() or not ui.master:get() then return end
	
	local jump	= bit.band(cmd.buttons, bit.lshift(1, 1))	== 2
	local v1	= bit.band(cmd.buttons, 8)					== 8
	local v2	= bit.band(cmd.buttons, 16)					== 16
	local v3	= bit.band(cmd.buttons, 512)				== 512
	local v4	= bit.band(cmd.buttons, 1024)				== 1024
	local velocity	= me.m_vecVelocity:length2d()
	local onground	= (bit.band(me.m_fFlags, 1) == 1) == true
	local in_move	= (v1 or v2 or v3 or v4 or jump)
	
	if ui.strafe:get() then
		if ((velocity < ui.limit:get() or onground) or (ui.jump:get() and not jump and not nl.edge:get()) and not (jump and velocity > ui.limit:get())) or ui.force.strafe:get() then
			nl.strafe:set(false)
		else
			nl.strafe:set(true)
		end
	else
		if not ui.jump:get() then goto skip end
		
		if jump or nl.edge:get() then
			nl.strafe:set(true)
		else
			nl.strafe:set(false)
		end
		
		::skip::
	end
	
	if ui.fl:get() then
		if (velocity < ui.limit:get()) or ui.force.fl:get() then
			nl.fl:set(false)
		else
			nl.fl:set(true)
		end
	end
end)

events.shutdown:set(function()
	if ui.destroy.strafe:get() then
		nl.strafe:set(true)
	end
	
	if ui.destroy.fl:get() then
		nl.fl:set(true)
	end
end)
