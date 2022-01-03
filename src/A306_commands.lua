-- iniSimulations A306 custom commands script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "A306" then
    return
end

function hide_yoke()
    DataRef( "cp" , "A300/hide_yoke_captain" , "writable" )
    DataRef( "fo" , "A300/hide_yoke_copilot" , "writable" )

    if (cp == 0) then
        cp = 1
        fo = 1
    else
        cp = 0
        fo = 0
    end
end

create_command("skarafaz/A306/hide_yoke", "Hide yoke", "hide_yoke()", "", "")
