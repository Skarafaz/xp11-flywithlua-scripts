-- HotStart CL60 custom commands script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "CL60" then
    return
end

function switch_camera_sys()
    command_once("SRS/X-Camera/Toggle_X-Camera_on_or_off")
    command_once("XPRealistic/MasterSwitch")
end

create_command("skarafaz/CL60/switch_camera_sys", "Switch camera system", "switch_camera_sys()", "", "")
