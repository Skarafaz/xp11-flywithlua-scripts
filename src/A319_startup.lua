-- ToLiss A319 startup script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "A319" then
    return
end

local gpu = dataref_table("AirbusFBW/EnableExternalPower")
local door_pax = dataref_table("AirbusFBW/PaxDoorModeArray")
local door_cargo = dataref_table("AirbusFBW/CargoDoorModeArray")
local rmp_switch_1 = dataref_table("AirbusFBW/RMP1Switch")
local rmp_switch_2 = dataref_table("AirbusFBW/RMP2Switch")
local rmp_switch_3 = dataref_table("AirbusFBW/RMP3Switch")

start_time = os.clock() + 30
to_init = true

function init()
    if os.clock() > start_time then
        if (to_init == true) then
            XPLMSpeakString("Staurtup completed")

            gpu[0] = 0

            door_cargo[0] = 2
            door_cargo[1] = 2
            door_pax[0] = 2
            door_pax[1] = 0
            door_pax[2] = 0
            door_pax[3] = 0

            rmp_switch_1[0] = 1
            rmp_switch_2[0] = 1
            rmp_switch_3[0] = 1

            to_init = false
        end
    end
end

do_often("init()")
