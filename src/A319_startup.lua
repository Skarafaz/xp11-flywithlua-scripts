-- ToLiss A319 startup script by Skarafaz
-- version 1.0.2

if PLANE_ICAO ~= "A319" then
    return
end

local gpu = dataref_table("AirbusFBW/EnableExternalPower")

local door_pax = dataref_table("AirbusFBW/PaxDoorModeArray")
local door_cargo = dataref_table("AirbusFBW/CargoDoorModeArray")

local rmp_switch_1 = dataref_table("AirbusFBW/RMP1Switch")
local rmp_switch_2 = dataref_table("AirbusFBW/RMP2Switch")
local rmp_switch_3 = dataref_table("AirbusFBW/RMP3Switch")

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

            gpu[0] = 0

            door_cargo[0] = 0
            door_cargo[1] = 0

            door_pax[0] = 0
            door_pax[1] = 0
            door_pax[2] = 0
            door_pax[3] = 0

            rmp_switch_1[0] = 1
            rmp_switch_2[0] = 1
            rmp_switch_3[0] = 1

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
