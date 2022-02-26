-- iniSimulations A3ST custom commands script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "A3ST" then
    return
end

DataRef( "cap_yoke_h" , "A300/hide_yoke_captain" , "writable" )

function hide_yoke()
    if (cap_yoke_h == 0) then
        cap_yoke_h = 1
    else
        cap_yoke_h = 0
    end
end

create_command("skarafaz/A3ST/hide_yoke", "Hide yoke", "hide_yoke()", "", "")
