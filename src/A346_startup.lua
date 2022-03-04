-- ToLiss A346 startup script by Skarafaz
-- version 1.0.2

if PLANE_ICAO ~= "A346" then
    return
end

local gpu1 = dataref_table("AirbusFBW/EnableExternalPower")
local gpu2 = dataref_table("AirbusFBW/EnableExternalPowerB")
local chocks = dataref_table("AirbusFBW/Chocks")

local door_cargo = dataref_table("AirbusFBW/CargoDoorModeArray")
local door_pax = dataref_table("AirbusFBW/PaxDoorModeArray")

local efis_1_sel_pilot = dataref_table("sim/cockpit2/EFIS/EFIS_1_selection_pilot")
local efis_1_sel_copilot = dataref_table("sim/cockpit2/EFIS/EFIS_1_selection_copilot")
local efis_2_sel_pilot = dataref_table("sim/cockpit2/EFIS/EFIS_2_selection_pilot")
local efis_2_sel_copilot = dataref_table("sim/cockpit2/EFIS/EFIS_2_selection_copilot")

local pack_1_switch = dataref_table("AirbusFBW/Pack1Switch")
local pack_2_switch = dataref_table("AirbusFBW/Pack2Switch")

local nd_range_capt = dataref_table("AirbusFBW/NDrangeCapt")
local nd_range_fo = dataref_table("AirbusFBW/NDrangeFO")

start_time = os.clock() + 30
to_init = true

function init()
    if os.clock() > start_time then
        if (to_init == true) then
            XPLMSpeakString("Startup completed")

            gpu1[0] = 0
            gpu2[0] = 0
            chocks[0] = 0

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

            efis_1_sel_pilot[0] = 1
            efis_1_sel_copilot[0] = 1
            efis_2_sel_pilot[0] = 1
            efis_2_sel_copilot[0] = 1

            pack_1_switch[0] = 0
            pack_2_switch[0] = 0

            nd_range_capt[0] = 0
            nd_range_fo[0] = 0

            to_init = false
        end
    end
end

do_often("init()")
