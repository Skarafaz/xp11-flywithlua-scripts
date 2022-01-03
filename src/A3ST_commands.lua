-- iniSimulations A3ST custom commands script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "A3ST" then
    return
end

function hide_yoke()
    DataRef( "cp" , "A300/hide_yoke_captain" , "writable" )

    if (cp == 0) then
        cp = 1
    else
        cp = 0
    end
end

create_command("skarafaz/A3ST/hide_yoke", "Hide yoke", "hide_yoke()", "", "")
