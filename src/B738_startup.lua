-- Zibo B738 startup script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "B738" then
    return
end

start_time = os.clock() + 30
to_init = true

function init()
    if os.clock() > start_time then
        if (to_init == true) then
            XPLMSpeakString("Startup completed")

            command_once("laminar/B738/toggle_switch/flt_dk_door_open")

            to_init = false
        end
    end
end

do_often("init()")
