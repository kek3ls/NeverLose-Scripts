local screen_size = EngineClient.GetScreenSize()

local text_enable = Menu.SwitchColor("Text", "Draw Text", true, Color.RGBA(154, 154, 255, 255))
local text = Menu.TextBox("Text", "Text To Show", 64, "NeverLose")
local font_shadow = Menu.SwitchColor("Text", "Shadow", true, Color.RGBA(0, 0, 0, 167))
local font_scale = Menu.SliderInt("Text", "Font Scale", 100, 0, 1000, "RESTART SCRIPT AFTER CHANGE THIS!")
local textbox = Menu.TextBox("Text", "Font", 64, "Verdana", "RESTART SCRIPT AFTER CHANGE THIS!")
local warning = Menu.Text("Text", "Restart Script After Change Font Or Font Scale!")

local rect_enable = Menu.SwitchColor("Rect", "Draw Back", true, Color.RGBA(17, 17, 17, 150))
local blur = Menu.Switch("Rect", "Draw Blur", false)
local rect = Menu.Switch("Rect", "Draw Rect", true)

local text_substrate_enable = Menu.SwitchColor("Text Substrate", "Draw Substrate", true, Color.RGBA(255, 255, 255, 32))
local sub_round = Menu.SliderInt("Text Substrate", "Substrate Rounding", 50, 0, 80)

local img_enable = Menu.Switch("Image", "Enable", false)
local img_url = Menu.TextBox("Image", "Image Url", 10000, "https://i.imgur.com/txePhjE.png", "Example: 'https://i.imgur.com/txePhjE.png'")
local img_scale = Menu.SliderInt("Image", "Image Scale", 1000, 0, 3000)


local ui_callback = function()
  local new_state = text_enable:Get()
  text:SetVisible(new_state)
	font_shadow:SetVisible(new_state)
	font_scale:SetVisible(new_state)
	textbox:SetVisible(new_state)
	warning:SetVisible(new_state)
	
	local new_state2 = rect_enable:Get()
	blur:SetVisible(new_state2)
	rect:SetVisible(new_state2)
	
	local new_state3 = text_substrate_enable:Get()
	sub_round:SetVisible(new_state3)
	
	local new_state4 = img_enable:Get()
	img_url:SetVisible(new_state4)
	img_scale:SetVisible(new_state4)
end

local font = Render.InitFont(textbox:Get(), font_scale:Get())

Cheat.RegisterCallback("draw", function()
	if Cheat.IsMenuVisible() then
		if rect_enable:Get() then
			if blur:Get() then
				Render.Blur(Vector2.new(0.0, 0.0), Vector2.new(screen_size.x, screen_size.y))
			end
			if rect:Get() then
				Render.BoxFilled(Vector2.new(0.0, 0.0), Vector2.new(screen_size.x, screen_size.y), rect_enable:GetColor())
			end
		end
		
		if text_substrate_enable:Get() then
			local text_size = Render.CalcTextSize(text:Get(), font_scale:Get(), font)
			if font_scale:Get() <= 100 then
				Render.BoxFilled(Vector2.new(screen_size.x / 2 - text_size.x / 2, screen_size.y / 2 - text_size.y / 2 + 20), Vector2.new(screen_size.x / 2 + 15 + text_size.x / 2, screen_size.y / 2 + text_size.y / 2), text_substrate_enable:GetColor(), sub_round:Get())
			else
				Render.BoxFilled(Vector2.new(screen_size.x / 2 - 15 - text_size.x / 2, screen_size.y / 2 - text_size.y / 2 + 20), Vector2.new(screen_size.x / 2 + 15 + text_size.x / 2, screen_size.y / 2 + text_size.y / 2), text_substrate_enable:GetColor(), sub_round:Get())
			end
		end
		
		if text_enable:Get() then
			if font_shadow:Get() then
				
				if font_scale:Get() <= 50 then
					Render.Text(text:Get(), Vector2.new(screen_size.x / 2 + 1, screen_size.y / 2 + 1), font_shadow:GetColor(), font_scale:Get(), font, false, true)
				end
				
				if font_scale:Get() >= 100 then
					Render.Text(text:Get(), Vector2.new(screen_size.x / 2 + 3, screen_size.y / 2 + 3), font_shadow:GetColor(), font_scale:Get(), font, false, true)
				end
				
				if font_scale:Get() >= 51 and font_scale:Get() <= 99 then
					Render.Text(text:Get(), Vector2.new(screen_size.x / 2 + 2, screen_size.y / 2 + 2), font_shadow:GetColor(), font_scale:Get(), font, false, true)
				end
			end
				
			Render.Text(text:Get(), Vector2.new(screen_size.x / 2, screen_size.y / 2), text_enable:GetColor(), font_scale:Get(), font, false, true)
		end
		
		if img_enable:Get() then
			  local size = Vector2.new(100, 100)
			  local pos = Vector2.new(50, 50)
			  local image = Render.LoadImageFromFile("C:\\Users\\usr\\Desktop\\logo.png", size)

			  Cheat.RegisterCallback("draw", function()
			  Render.Image(image, pos, size)
			end)
		end
	end
end)

ui_callback()
text_enable:RegisterCallback(ui_callback)
rect_enable:RegisterCallback(ui_callback)
text_substrate_enable:RegisterCallback(ui_callback)
img_enable:RegisterCallback(ui_callback)
