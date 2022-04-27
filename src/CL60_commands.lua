-- HotStart CL60 custom commands script by Skarafaz
-- version 1.1.1

if PLANE_ICAO ~= "CL60" then
    return
end

function switch_camera_sys()
    command_once("SRS/X-Camera/Toggle_X-Camera_on_or_off")
    command_once("XPRealistic/MasterSwitch")
end

create_command("skarafaz/CL60/switch_camera_sys", "Switch camera system", "switch_camera_sys()", "", "")

function compact_yokes()
    command_once("CL650/contcoll/0/compact")
    command_once("CL650/contcoll/1/compact")
end

create_command("skarafaz/CL60/compact_yokes", "Compact yokes", "compact_yokes()", "", "")
