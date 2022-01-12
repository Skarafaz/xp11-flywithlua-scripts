-- HotStart TBM9 custom commands script by Skarafaz
-- version 1.0.0

if PLANE_ICAO ~= "TBM9" then
    return
end

function hide_yoke()
    local yoke_show = dataref_table("tbm900/anim/yoke_show")

    if (yoke_show[0] == 0) then
        yoke_show[0] = 1
        yoke_show[1] = 1
    else
        yoke_show[0] = 0
        yoke_show[1] = 0
    end
end

create_command("skarafaz/TBM9/hide_yoke", "Hide yoke", "hide_yoke()", "", "")
