local strafe = Menu.Switch("Velocity Disablers", "Disable Strafer", true)
local lag = Menu.Switch("Velocity Disablers", "Disable Fake Lag", false)
local limit = Menu.SliderInt("Velocity Disablers", "Velocity Limit", 3, 1, 255)
Menu.Text("Velocity Disablers", "1-3 standing, 100-150 walking, 150+ running")

local autostrafe = Menu.FindVar("Miscellaneous", "Main", "Movement", "Auto Strafe")
local fakelag = Menu.FindVar("Aimbot", "Anti Aim", "Fake Lag", "Enable Fake Lag")

Cheat.RegisterCallback("prediction", function(cmd)
	local localplayer = EntityList.GetClientEntity(EngineClient.GetLocalPlayer())
	local velocity = Vector.new(localplayer:GetProp("DT_BasePlayer", "m_vecVelocity[0]"), localplayer:GetProp("DT_BasePlayer", "m_vecVelocity[1]"), localplayer:GetProp("DT_BasePlayer", "m_vecVelocity[2]"))
	if localplayer:GetProp("DT_BasePlayer", "m_iHealth") <= 0 then return end
	
	if velocity:Length2D() < limit:Get() then
		if strafe:Get() then
			autostrafe:SetBool(false)
		end
		
		if lag:Get() then
			fakelag:SetBool(false)
		end
	else
		local onground = (bit.band(localplayer:GetProp("DT_BasePlayer", "m_fFlags"), 1) == 1)
	
		if strafe:Get() and onground == false then
			autostrafe:SetBool(true)
		end
		
		if lag:Get() then
			fakelag:SetBool(true)
		end
	end
end)
