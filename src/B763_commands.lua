-- FlightFactor B763 custom commands script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "B763" then
    return
end

function hide_yoke()
    DataRef( "ref" , "params/yokehide" , "writable" )

    if (ref == 0) then
        ref = 1
    else
        ref = 0
    end
end

create_command("skarafaz/B763/hide_yoke", "Hide yoke", "hide_yoke()", "", "")
