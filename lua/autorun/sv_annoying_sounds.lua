local banned_sounds = {
    ["Player.DrownStart"] = true,
    ["HEV_DEAD0"] = true,
}

hook.Add("EntityEmitSound", "grserv.EmitSound.Fix_1", function(t)
    if banned_sounds[t.OriginalSoundName] then
        return false
    end
end)
