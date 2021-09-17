update_hooks['0 beat timer'] = function()

    local t = GAMESTATE:GetSongTime()

    -- we *could* theoretically set this to 1 second to save file space
    -- but notitg freezes for a quick second every set song beat, sadly.
    if t >= 3600 then
        GAMESTATE:SetSongBeat( 0 )
    end

end