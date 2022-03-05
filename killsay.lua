--full version script: https://neverlose.cc/market/item?id=O8N0c8
local ui = {
	phrase = Menu.TextBox('Main', 'KillSay Phrase', 256, '1', 'Maximum characters: 256.'),
}

Cheat.RegisterCallback('events', function(event)
	local me = EntityList.GetLocalPlayer()
	local ingame = EngineClient.IsConnected() and EngineClient.IsInGame()

	if not ingame or not me or not me:IsAlive() or event:GetName() ~= 'player_death' then return end

	local victim = EntityList.GetPlayerForUserID(event:GetInt('userid'))
	local attacker = EntityList.GetPlayerForUserID(event:GetInt('attacker'))

	if victim == attacker or attacker ~= me then return end

	EngineClient.ExecuteClientCmd('say "' .. ui.phrase:Get() .. '"')
end)
