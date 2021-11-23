local switch = Menu.SwitchColor("Global", "Crosshair", true, Color.RGBA(134, 144, 255, 255))
local rainbow_switch = Menu.Switch("Global", "Rainbow", true)
local water_rainbow_speed = Menu.SliderFloat("Global", "Rainbow Speed", 1, 0.1, 10)
local size = Menu.SliderInt("Global", "Size", 10, 0, 100)
local sniper_crosshair = Menu.FindVar("Visuals", "World", "Misc", "NoScope Crosshair")

local function DEG2RAD(x) return x * math.pi / 180 end
local function RAD2DEG(x) return x * 180 / math.pi end
local r, g, b

local rainbow = 0.00
local rotationdegree = 0.000;

local function draw_svaston(x, y, size)
	r = (math.floor(math.sin(GlobalVars.realtime * water_rainbow_speed:Get() / 2) * 127 + 128)) / 1000 * 3.92
	g = (math.floor(math.sin(GlobalVars.realtime * water_rainbow_speed:Get() / 2 + 2) * 127 + 128)) / 1000 * 3.92
	b = (math.floor(math.sin(GlobalVars.realtime * water_rainbow_speed:Get() / 2 + 4) * 127 + 128)) / 1000 * 3.92

	local frametime = GlobalVars.frametime
	local a = size / 60
	local gamma = math.atan(a / a)
	rainbow = rainbow + (frametime * 0.5)

	if rainbow > 1.0 then rainbow = 0.0 end
	if rotationdegree > 89 then rotationdegree = 0 end

	for i = 0, 4 do 
		local p_0 = (a * math.sin(DEG2RAD(rotationdegree + (i * 90))))
		local p_1 = (a * math.cos(DEG2RAD(rotationdegree + (i * 90))))
		local p_2 =((a / math.cos(gamma)) * math.sin(DEG2RAD(rotationdegree + (i * 90) + RAD2DEG(gamma))))
		local p_3 =((a / math.cos(gamma)) * math.cos(DEG2RAD(rotationdegree + (i * 90) + RAD2DEG(gamma))))

		if rainbow_switch:Get() then
			Render.Line(Vector2.new(x, y), Vector2.new(x + p_0, y - p_1), Color.new(r, g, b, 1))
			Render.Line(Vector2.new(x + p_0, y - p_1), Vector2.new(x + p_2, y - p_3), Color.new(r, g, b, 1))
		else
			Render.Line(Vector2.new(x, y), Vector2.new(x + p_0, y - p_1), switch:GetColor())
			Render.Line(Vector2.new(x + p_0, y - p_1), Vector2.new(x + p_2, y - p_3), switch:GetColor())
		end
	end
	rotationdegree = rotationdegree + (frametime * 150)
end

local crosshair = CVar.FindVar("crosshair")

Cheat.RegisterCallback("draw", function()
	crosshair:SetInt(0)

	local screen = EngineClient:GetScreenSize()

	if not EngineClient:IsConnected() then
		return
	end

	local get_local_player = EntityList.GetLocalPlayer()
	local get_entity_weapon = get_local_player:GetActiveWeapon()
	local weap = get_entity_weapon:GetClassName()

	if(switch:Get()) then
		if not sniper_crosshair:Get() and (weap == "CWeaponAWP" or weap == "CWeaponSSG08" or weap == "CWeaponSCAR20" or weap == "CWeaponG3SG1") then return end
		draw_svaston(screen.x / 2, screen.y / 2, size:Get() * 100)
	else
		return
	end
end)

Cheat.RegisterCallback("destroy", function()
	crosshair:SetInt(1)
end)
