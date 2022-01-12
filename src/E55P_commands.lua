-- Aerobask E55P custom commands script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "E55P" then
    return
end

function ap_quick_disconnect()
    command_once("sim/autopilot/disconnect")
end

create_command("skarafaz/E55P/ap_quick_disconnect", "AP quick disconnect", "ap_quick_disconnect()", "", "")
