local phrase = Menu.TextBox('Main', 'Custom KillSay', 128, '1')

Cheat.RegisterCallback('events', function(event)
	local me = EntityList.GetLocalPlayer()
    
  if not EngineClient.IsInGame() or not me or me:GetProp('m_iHealth') <= 0 then
    return
  end
    
  if event:GetName() ~= 'player_death' then
    return
  end

  local victim = EntityList.GetPlayerForUserID(event:GetInt('userid'))
  local attacker = EntityList.GetPlayerForUserID(event:GetInt('attacker'))

  if victim == attacker or attacker ~= me or victim:GetProp('m_iTeamNum') == me:GetProp('m_iTeamNum') then
    return
  end

  EngineClient.ExecuteClientCmd('say "' .. phrase:Get() .. '"')
end)
