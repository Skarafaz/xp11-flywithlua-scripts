-- iniSimulations A306 startup script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "A306" then
    return
end

DataRef( "fdir2_on" , "A300/MCDU/fdir2_on" , "writable" )
DataRef( "cap_vhf1" , "A300/radios/captain/vhf1" , "writable" )
DataRef( "cap_vhf1_v" , "A300/radios/captain/vhf1_volume" , "writable" )
DataRef( "cop_vhf2" , "A300/radios/copilot/vhf2" , "writable" )
DataRef( "cop_vhf2_v" , "A300/radios/copilot/vhf2_volume" , "writable" )

start_time = os.clock() + 30
to_init = true

function init()
    if os.clock() > start_time then
        if (to_init == true) then
            XPLMSpeakString("Startup completed")

            fdir2_on = 0.5
            cap_vhf1 = 1
            cap_vhf1_v = 1
            cop_vhf2 = 1
            cop_vhf2_v = 0.75

            to_init = false
        end
    end
end

do_often("init()")
