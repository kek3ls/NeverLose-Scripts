local ffi = require("ffi")
ffi.cdef[[
    typedef struct
    {
        unsigned char r, g, b;
        signed char exponent;
    }
    ColorRGBExp32;

    typedef struct
    {
        float x;
        float y;
        float z;
    }
    vec3_t;

    typedef struct
    {
        float x;
        float y;
    }
    vec2_t;

    typedef struct
    {
      int        flags;
      vec3_t    origin;
      float    radius;
      ColorRGBExp32    color;
      float    die;
      float    decay;
      float    minlight;
      int        key;
      int        style;
      vec3_t    m_Direction;
      float    m_InnerAngle;
      float    m_OuterAngle;
    }
    dlight_t, *dlight_ptr_t;
]]

local engine_effects = Utils.CreateInterface("engine.dll", "VEngineEffects001")
local engine_effects_class = ffi.cast(ffi.typeof("void***"), engine_effects)
local engine_effects_vtbl = engine_effects_class[0]

local alloc_dlight = ffi.cast("dlight_ptr_t(__thiscall*)(void*, int)", engine_effects_vtbl[4])

local cfg_dlights = Menu.SwitchColor("Dlights", "Toggle", false, Color.new(1.0, 1.0, 1.0))
local cfg_dlights_radius = Menu.SliderFloat("Dlights", "Dlights Radius", 1.0, 200.0, 500.0)
local cfg_dlights_decay = Menu.SliderFloat("Dlights", "Dlights Decay", 1.0, 200.0, 500.0)
local cfg_dlights_exponent = Menu.SliderInt("Dlights", "Dlights Exponent", 1, 1, 20)
local cfg_dlights_style = Menu.SliderInt("Dlights", "Dlights Style", 0, 0, 11)

local dlight = nil

Cheat.RegisterCallback("draw", function()
    local localPlayerIdx = EngineClient.GetLocalPlayer()
    local localEntity = EntityList.GetClientEntity(localPlayerIdx)

    if not cfg_dlights:GetBool() or not localEntity then dlight = nil; return end
    if not dlight then dlight = alloc_dlight(engine_effects_class, localPlayerIdx) end

    local origin = localEntity:GetProp("DT_BaseEntity", "m_vecOrigin")
    local color = cfg_dlights:GetColor()
    local position = {origin.x, origin.y, origin.z}

    dlight.flags = 0x2
    dlight.style = cfg_dlights_style:GetInt()
    dlight.key = localPlayerIdx
    dlight.radius = cfg_dlights_radius:GetFloat()
    dlight.decay = cfg_dlights_decay:GetFloat()
    dlight.origin = position
    dlight.m_Direction = position
    dlight.die = GlobalVars.curtime + 0.05
    dlight.color.r = color.r * 255
    dlight.color.g = color.g * 255
    dlight.color.b = color.b * 255
    dlight.color.exponent = cfg_dlights_exponent:GetInt()
end)
