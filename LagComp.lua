--ported from gamesense to neverlose by ???
local enable = Menu.SwitchColor("Main", "Lag Comp Debug", false, Color.new(47 / 255, 117 / 255, 221 / 255))
local sv_gravity = CVar.FindVar("sv_gravity")
local g_net_data = {}
local g_sim_ticks = {}

local w2s, line = Render.WorldToScreen, Render.Line
local function TIME_TO_TICKS(t) return math.floor(0.5 + (t / GlobalVars.interval_per_tick)) end
local function copy_vec(v) return Vector.new(v.x, v.y, v.z) end

ffi.cdef("int VirtualProtect(void* lpAddress, unsigned long dwSize, unsigned long flNewProtect, unsigned long* lpflOldProtect);")
local VMTHook = {}

function VMTHook:new(vmt)
    local hook = {}
    hook.vmt = ffi.cast("void***", vmt)[0]
    hook.hooked_functions = {}

    setmetatable(hook, self)
    self.__index = self

    return hook
end

function VMTHook:Hook(index, typedef, hooked)
    local o_proc = ffi.new("unsigned long[1]")
    local original_func = self.vmt[index]
    table.insert(self.hooked_functions, {id = index, address = original_func})
    ffi.C.VirtualProtect(ffi.cast("void*", self.vmt + index), 4, 0x4, o_proc)
    self.vmt[index] = ffi.cast('void*', ffi.cast(typedef, hooked))
    ffi.C.VirtualProtect(ffi.cast("void*", self.vmt + index), 4, o_proc[0], o_proc)
    return ffi.cast(typedef, original_func)
end

function VMTHook:UnHook(index)
    for i, func in pairs(self.hooked_functions) do
        if func.id == index then
            local o_proc = ffi.new("unsigned long[1]")
            ffi.C.VirtualProtect(ffi.cast("void*", self.vmt + index), 4, 0x4, o_proc)
            self.vmt[index] = func.address
            ffi.C.VirtualProtect(ffi.cast("void*", self.vmt + index), 4, o_proc[0], o_proc)

            table.remove(self.hooked_functions, i)

            return true
        end
    end

    return false
end

function VMTHook:UnHookAll()
    for i, func in pairs(self.hooked_functions) do
        self:UnHook(func.id)
        table.remove(self.hooked_functions, i)
    end
end


function Vector:LengthSqr()
    return self.x * self.x + self.y * self.y + self.z * self.z
end

local function get_players() 
    local ents = EntityList.GetPlayers()
    local res = {}
    for _, ent in pairs(ents) do 
        if not ent:IsTeamMate() and ent:GetProp("m_iHealth") > 0 then
            table.insert(res, ent) 
        end
    end 
    return res 
end

local function extrapolate(ent, flags, ticks)
    local gravity = bit.band(flags, 1) == 0 and -sv_gravity:GetFloat() or 0

    local velocity = ent:GetProp("m_vecVelocity")
    local origin = ent:GetRenderOrigin()
    local extrapolated = origin + Vector.new(velocity.x * ticks * GlobalVars.interval_per_tick, velocity.y * ticks * GlobalVars.interval_per_tick, velocity.z * ticks * GlobalVars.interval_per_tick + (gravity * (ticks * GlobalVars.interval_per_tick * ticks * GlobalVars.interval_per_tick)) / 2)

    return copy_vec(EngineTrace.TraceRay(origin, extrapolated, ent, 0x1).endpos)
end

function on_frame_stage(thisptr, edx, stage)
    oFrameStageNotify(thisptr, edx, stage)
    if stage ~= 4 then return end

    local local_player = EntityList.GetLocalPlayer()
    if not local_player then return end
    if not EngineClient.IsInGame() or not EngineClient.IsConnected() then return end

    local players = get_players()
    for _, player in pairs(players) do
        local idx = player:EntIndex()
        if player:IsDormant() then
            g_net_data[idx] = nil
            g_sim_ticks[idx] = nil
        else
            local prev_tick = g_sim_ticks[idx]
            local sim_time = TIME_TO_TICKS(player:GetProp("m_flSimulationTime"))
            local origin = copy_vec(player:GetRenderOrigin())

            if prev_tick then
                local delta = sim_time - prev_tick.sim_time

                if delta ~= 0 then -- entity is updated
                    local flags = player:GetProp("m_fFlags")

                    local teleport_distance = (prev_tick.origin - origin):LengthSqr()
                    local extrapolated = extrapolate(player, flags, delta - 1)

                    g_net_data[idx] = {
                        player = player,
                        delta = delta,
                        origin = origin,
                        extrapolated = extrapolated,

                        lagcomp = teleport_distance > 4096,
                        shifting = delta < 0
                    }
                end
            end

            g_sim_ticks[idx] = {
                sim_time = sim_time,
                origin = origin
            }
        end
    end
end

local edges = {
    {0, 1}, {1, 2}, {2, 3}, {3, 0}, {5, 6}, {6, 7}, {1, 4}, {4, 8},
    {0, 4}, {1, 5}, {2, 6}, {3, 7}, {5, 8}, {7, 8}, {3, 4}
}

local function on_render()
    if not enable:Get() then return end
    local local_player = EntityList.GetLocalPlayer()
    if not local_player then return end
    if not EngineClient.IsInGame() or not EngineClient.IsConnected() then return end
    for idx, data in pairs(g_net_data) do
        if data and data.lagcomp and data.player:GetProp("m_iHealth") > 0 then
            local min = data.player:GetProp("m_vecMins") + data.extrapolated
            local max = data.player:GetProp("m_vecMaxs") + data.extrapolated

            local points = {
                min, Vector.new(min.x, max.y, min.z),
                Vector.new(max.x, max.y, min.z), Vector.new(max.x, min.y, min.z),
                Vector.new(min.x, min.y, max.z), Vector.new(min.x, max.y, max.z),
                max, Vector.new(max.x, min.y, max.z)
            }

            for k, v in pairs(edges) do
                if k == 1 then
                    local origin = data.origin
                    local origin_w2s = w2s(origin)
                    local min_w2s = w2s(min)

                    if origin_w2s.x ~= nil and min_w2s.x ~= nil then
                        line(origin_w2s, min_w2s, enable:GetColor())
                    end
                end
                if points[v[1]] ~= nil and points[v[2]] ~= nil then
                    local p1 = w2s(points[v[1]])
                    local p2 = w2s(points[v[2]])
        
                    line(p1, p2, enable:GetColor())
                end
            end
        end
    end
end

local IBaseClientDLL = VMTHook:new(Utils.CreateInterface("client.dll", "VClient018"))
oFrameStageNotify = IBaseClientDLL:Hook(37, "void(__fastcall*)(void*, void*, int)", on_frame_stage) -- I am using my own hook because default nl callback is calling before anim update 

Cheat.RegisterCallback("draw", on_render)

ESP.CustomText("Lag Comp", "enemies", "LAG COMP BREAKER", function(ent)
    if g_net_data[ent:EntIndex()] then
        if g_net_data[ent:EntIndex()].lagcomp then
            return "LAG COMP BREAKER"
        elseif g_net_data[ent:EntIndex()].shifting then
            return "SHIFTING TICKBASE"
        end
    end
end)

Cheat.RegisterCallback("events", function(e)
    if e:GetName() == "round_start" then
        g_net_data = {}
    end
end)

Cheat.RegisterCallback("destroy", function()
    IBaseClientDLL:UnHookAll()
end)
