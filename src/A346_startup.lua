-- ToLiss A346 startup script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "A346" then
    return
end

local gpu1 = dataref_table("AirbusFBW/EnableExternalPower")
local gpu2 = dataref_table("AirbusFBW/EnableExternalPowerB")
local door_cargo = dataref_table("AirbusFBW/CargoDoorModeArray")
local door_pax = dataref_table("AirbusFBW/PaxDoorModeArray")

start_time = os.clock() + 30
to_init = true

function init()
    if os.clock() > start_time then
        if (to_init == true) then
            XPLMSpeakString("Startup completed")

            gpu1[0] = 0
            gpu2[0] = 0

            door_cargo[0] = 0
            door_cargo[1] = 0
            door_cargo[2] = 0

            door_pax[0] = 0
            door_pax[1] = 0
            door_pax[2] = 0
            door_pax[3] = 0
            door_pax[4] = 0
            door_pax[5] = 0
            door_pax[6] = 0
            door_pax[7] = 0

            to_init = false
        end
    end
end

do_often("init()")
